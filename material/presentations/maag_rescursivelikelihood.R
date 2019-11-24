library("fastGHQuad")
library("evd")

simulate_dataset <- function(rho, T){
  innovations = rnorm(T, 0, sqrt(1-rho^2));
  process = numeric(T);
  process[1] = innovations[1];
  for (i in 2:T){
    process[i] = process[i-1]*rho + innovations[i];
  }
  #print(c(min(process),max(process)))
  #print(c(mean(process), var(process)))
  error = rgumbel(T, -0.5772156649015328, sqrt(6)/pi)
  return(as.integer(process+error>0))
}

sim_data <- simulate_dataset(0.8,100)


likelihood_spline <- function(rho, data, n_interp, n_quad){
  
  # Setup Gauss-Hermite nodes and weights to integrate the innovations (normally distributed, but with normalized variance)
  gauss_data = gaussHermiteData(n_quad);
  gauss_nodes = sqrt(2)*sqrt(1-rho^2)*gauss_data$x;
  gauss_weights = 1/sqrt(pi)*gauss_data$w;
  
  # Setup cubic spline interpolation: generate nodes, and initialize spline to 1
  interpolation_grid = seq(-6,6,length.out=n_interp);
  interpolant = splinefun(x=interpolation_grid, y=rep(1,n_interp));
  
  # Iterate backwards in time through the dataset
  for (t in length(data):1){
    interpolation_values = numeric(n_interp);
    # To condition eps_{t-1} on the interpolation grid values by iterating over it
    for (i in 1:n_interp){
      # integrate over innovations (vectorized; otherwise a loop)
      # 1. obtain values of eps_t: conditional on eps_{t-1}, multipy by rho and add innovation
      # 	 since the innovation is integrated out, it is taken from the Gauss integration nodes
      process_state = interpolation_grid[i]*rho + gauss_nodes;
      
      # 2. obtain likelihood of a particular observation, using the "residual" nu_t
      prob_cutoff = pgumbel(-process_state,-0.5772156649015328, sqrt(6)/pi);
      if (data[t]) {
        prob_cutoff = 1-prob_cutoff;
      }
      
      # 3. perform actual summation; here, the result of the integration of the previous periods is 
      # 	 multiplied against the likelihood of the current observation, using the interpolant
      interpolation_values[i] = gauss_weights%*%(prob_cutoff*interpolant(process_state))
    }
    # build "next periods" interpolant
    interpolant = splinefun(x=interpolation_grid, y=interpolation_values);
  }
  # this is a particular assumption about eps_0, and is arbitrarily chosen
  return(log(interpolant(0)))
}


run_estimation <- function(n_datasets=25, rho=.8, T=100){
  estimates = numeric(n_datasets)
  for (i in 1:n_datasets){
    data_set = simulate_dataset(rho, T);
    estimates[i] = optimize(likelihood_spline,c(0.,1.),maximum=TRUE,data_set,201,25)$maximum
  }
  plot(density(estimates))
  abline(v=rho, col="red")
  lines(seq(-1,2,.01), dnorm(seq(-1,2,.01),mean(estimates),sd(estimates)), col="blue")
  print(c(mean(estimates), var(estimates)))
}

run_estimation()


estimts <- numeric(5)
for (i in 1:5){
  data_set = simulate_dataset(0.8, 100);
 # estimts[i] = optimize(likelihood_spline,c(0.,1.),maximum=TRUE,data_set,201,25)$maximum
}








