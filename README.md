# OpenSourceEconomics (OSE) Retreat

The **OSE Retreat** is an event hosted by the [OpenSourceEconomics (OSE)](https://nbviewer.jupyter.org/format/slides/github/OpenSourceEconomics/hackathon_material/blob/master/promotion/OSE_promotion.ipynb#/) initiative in Bonn.

One of our main goals is to bolster the ongoing interchange of concepts, methods, and ideas around structural economics. To this end, the **OSE Retreat** is a dedicated event that fosters new developments, and establishes a network including doctoral student, post-doctoral scholars, and leading researchers in the field.

The **OSE Retreat** encourages to present early-stage / fleshed-out research ideas, presentations of working / published papers, and other contributions covering structural econometric models, sofware packages and scientific computing. We aim to mutually increase our understanding of methods emerging in intersecting disciplines (i.e. mathematics or computer science), and how they can be applied to economic problems.

To get a sense of **OSE Retreat**, we are happy to provide an overview of our past events.

# OSE Retreat,  *13th September, 2019*  *University of Bonn*.

***Organizer*** <br>
**Philipp Eisenhauer,**<br>
*University of Bonn*

<br>

<p align="center">
  <img width="460" height="360" src=material/images/StructRetreat.jpg alt="Organizer Philipp and Keynote Speaker Fedor">
  	<br>
  <span> Organizer Philipp Eisenhauer and Keynote Speaker Fedor Iskhakov </span>
</p>

<br>


## Keynote Speech

### Placeholder
**Fedor Iskhakov**, *Australian National University*


### [Journal of Open Source Economics](http://josecon.org/)  
Fedor introduced us to the emerging [*Journal of Open Source Economics*](http://josecon.org/) which will publish short papers on reusable code and allow computational economists to collect citations for their coding work.

## Presentations


### [Female Labor Supply and Biased Beliefs: A Structural Approach](materials/presentation/ilieva_beliefs.pdf)

**Boryana Ilieva**, *DIW Berlin*  

Do women have biased expectations about returns to experience and about the part-time penalty? Using [SOEP](https://www.diw.de/soep) data the paper provides empirical evidence about returns to experience and the part-time penalty. In a dynamic setting, the authors investigate how biased expectations (about the part-time penalty) may affect employment choices and how policies can increase female employment and working hours (under those biased beliefs). To elicit expectations about returns to experience in full-time/part-time employment in the short/long run, newly designed survey questions are incorporated in the [SOEP-IS](https://www.diw.de/de/diw_01.c.511801.de/soep_is_innovative_modules.html) module. Empirical findings based on [SOEP](https://www.diw.de/soep) data reveal that expected returns to experience in part-time and full-time work do not differ. There is no expected part-time penalty in experience. Nevertheless, reduced form evidence points towards evidence of a part-time penalty in experience. The estimation of a structural model reveals the existence of biased expectations. A policy simulation shows that de-biasing reduces the part-time choice rates in the structural estimation.

### [Numerical Integration in Dynamic Discrete Choice Models](material/presentations/suchy_numericalintegration.pdf)
**Rafael Suchy,**   
*University of Bonn*

__Abstract__<br>
*The presentation compares different integration methods to solve the so-called EMax() encountered in [Keane and Wolpin (1994)](https://www.jstor.org/stable/2109768?seq=1). Since then, many discrete choice dynamic programming models required to solve multi-dimensional integral with discontinuous integrands. To evaluate whether different methods, e.g. quasi-Monte Carlo, are suitable to reduce the required points for a given accuracy, and hence increase computational efficiency, a simulation study implemented through [respy](https://respy.readthedocs.io/en/latest/) is conducted. The simulation studies shows that switching to quasi-Monte Carlo methods (particularly Halton or Sobol) increases efficiency and has effects on the policy effect (although small).*


### [Efficient Solution, Filtering and Estimation of Models with OBCs](material/presentations/boehl_modelsobc.pdf)
**Gregor Boehl,**   
*Assistant Professor Goethe University*

__Abstract__<br>
*Occasionally binding constraints (OBCs) play a central role in macroeconomic modelling since major developed economies have hit the zero lower bound (ZLB) on interest rates. The paper proposes a solution method for rational expectations models with OBCs and a Bayesian filter/smoother that, both combined, can be used for quick and accurate Bayesian estimation of large-scale models. The quasi-analytic solution method calculates the endogenous duration at the constraint while avoiding matrix inversions and simulations at runtime for gains in computational speed. The TEnKF (transposed Enseble Kalman Filter) is a hybrid of the particle filter and the Kalman filter that, requiring only a very small number of particles, can be used to approximate the likelihood of nonlinear models with high accuracy. The IPA (iterative path-adjusting transposed-ensemble RTS) smoother adds a smoother and an iterative procedure to filter and can be applied to estimate the state distributions while fully respecting the nonlinearity of the transition function. Further, a massively parallelized combination of different forms of heuristic global optimizers is proposed to avoid local maxima of the likelihood function. Techniques from astrophysics for efficient sampling from the posterior distribution are suggested. As an example, these methods are used to estimate the simple New Keynesian model. (The current version of the paper can be accessed at the homepage of [Gregor Boehl (2019)](http://gregorboehl.com/live/obc_boehl.pdf))*


### [A Primer on Recursive Likelihood Function Integration](material/presentation/maag_rescursivelikelihood.pdf)
**Jasmin Maag,**      
*University of Zurich*

__Abstract__<br>
*A primer that present a method to efficiently estimated hidden Markov models with continuous latent variables using maximum likelihoof estimation. The name Recursive Maximum Likelihood Integration (RLI) is derived from its design: To evaluate the (marginal) likelihood function the integral is decomposed over the unobserved state variables into a series of lower dimensional integrals. Those integrals are recursively approximated by numerical quadrature and interpolation. Advantages include: 1) computational complexitly grows linearly in the number of periods, 2) numerical error accumulates sublinearly in the number of time periods integrated. The method is applied to the Rust bus enginge replacement model of [Rust (1987)](https://www.jstor.org/stable/1911259?seq=1#page_scan_tab_contents). The presentation is based on a publication by [Gregor Reich (2018)](https://pubsonline.informs.org/doi/abs/10.1287/opre.2018.1750).*


### [„Small Data“: Estimation of Dynamic Models with Unobservable or Occasionally Observable States](material/presentations/reich_oosdata.pdf)
**Gregor Reich,**     
*University of Zurich*

__Abstract__<br>
*[Gregor Reich (2018)](https://pubsonline.informs.org/doi/abs/10.1287/opre.2018.1750) estimates the models of [Rust (1987)](https://www.jstor.org/stable/1911259?seq=1#page_scan_tab_contents) with serially correlated EV1 errors. So far, states were either observed or unobserved. But what changes if the states are occassionally observed? It turns out that the method of Recursive Maximum Likelihood Integration (RLI) is still applicable but with respect to the model, there is need to take care for the one-sided laws of motion. For example, assuming that buses are new when entering the data set but only the milage state at engine replacement is observable, then only the cost trade-off can be consistently estimated, but not the law of motion of mileage. The problem: a comparison of two estimates does not reveal much in this setting. Consequently, the distribution of the estimator (parametric bootstrapping) at various observation frequencies is compared. The main finding shows that a similar distribution does imply a similar point estimate.*


### [Robust investments under risk and ambiguity](material/presentations/blesch_robustinvestment.pdf)
**Maximilian Blesch,**      
*University of Bonn*

__Abstract__<br>
*The paper revisits [Rust (1987)](https://www.jstor.org/stable/1911259?seq=1#page_scan_tab_contents) and evaluates the sensibility of the decision rule performance to the estimation quality of the transition probabilities. Can the agent account for uncertainty in his estimates? Does accounting for uncertainty lead to a better decision strategy? (tbadded 25th November 2019)*


### [Structural Estimation by Homotopy Continuation](material/presentations/mueller_homotopycontinuation.pdf)
**Philipp Mueller,**     
*University of Zurich*

__Abstract__<br>
*The paper proposes a novel method to estimate structural parameter efficiently and systematically, even in models with one poorly identified parameter and in the presence of multiple equilibria. Inference is based on the full (profile) likelihood function, instead of point estimates. The approach includes (1) to formulate the structural estimation as a parameterized version of [Su and Judd (2012)](https://www.jstor.org/stable/23271445?seq=1), and (2) to solve the problem efficiently by homotopy parameter continuation. The presentation of the concept focuses on dynamic discrete choice models where the discount parameter is generally poorly identified. Using the original data set and model from [Rust (1987)](https://www.jstor.org/stable/1911259?seq=1#page_scan_tab_contents) they can reject the instance that the discounting parameter is unidentified, and estimate it to be statistically significant larger than one.*


### Placeholder
**Robert Erbe,**      
*University of Zurich*



# Social Event

Although conferences are already awesome by their content, they get unforgettable through social activities. Our Structural Retreat ended with a bike tour from Bonn to Cologne.

<br>

<p align="center">
  <img width="460" height="360" src=material/images/StructRetreat2.jpg>
	<br>
  <span> Brave cyclists in front of Cologne Cathedral </span>
</p>
