# OpenSourceEconomics Retreat

We host an annual retreat in support of our research activities. The event is organized around the research codes that are under active development to facilitate a productive exchange of ideas. While participants were initially limited to economists, we hope to expand the event to include the broader mathematics and computational science community. 

## 2019

**Date** September 13th, 2019

**Location** Institute for Applied Microeconomics, University of Bonn

### Keynote

#### [Effects of taxes and safety net pensions on life-cycle Labor supply, savings and human capital: The case of Australia](material/presentations/iskhakov_prelim_taxessafetynetpensions.pdf)
**Fedor Iskhakov**, *Australian National University*

The paper structurally estimates a life-cycle model of consumption/savings, labor supply and retirement, using data from the Australian HILDA panel. The model is used to evaluate effects of Australia's Age Pension system and income tax policy on labor supply, consumption and retirement. The model accounts for human capital, savings, uninsurable wage risk and credit constraints. The authors account for "bunching" of hours by assuming a discrete set of hours levels, and they investigate labor supply on both the intensive and extensive margins. The model allows to quantify the effects of anticipated and unanticipated tax and pension policy changes at different points of the life-cycle. The results imply that Australia's Age Pension system as currently design is poorly targeted. The simulations suggest that a doubling of taper rates, combined with 5.9% reduction of income tax rates, would be budget neutral and Pareto improving. *(The current version of the paper, on which this abstract is based, can be accessed at the homepage of [Fedor Iskhakov](http://fedor.iskh.me/assets/pdf/ik.pdf))*


### Presentations

#### [Female labor supply and biased beliefs: A structural approach](materials/presentations/ilieva_beliefs.pdf)

**Boryana Ilieva**, *DIW Berlin*  

Do women have biased expectations about returns to experience and about the part-time penalty? Using [SOEP](https://www.diw.de/soep) data the paper provides empirical evidence about returns to experience and the part-time penalty. In a dynamic setting, the authors investigate how biased expectations (about the part-time penalty) may affect employment choices and how policies can increase female employment and working hours (under those biased beliefs). To elicit expectations about returns to experience in full-time/part-time employment in the short/long run, newly designed survey questions are incorporated in the [SOEP-IS](https://www.diw.de/de/diw_01.c.511801.de/soep_is_innovative_modules.html) module. Empirical findings based on [SOEP](https://www.diw.de/soep) data reveal that expected returns to experience in part-time and full-time work do not differ. There is no expected part-time penalty in experience. Nevertheless, reduced form evidence points towards evidence of a part-time penalty in experience. The estimation of a structural model reveals the existence of biased expectations. A policy simulation shows that de-biasing reduces the part-time choice rates in the structural estimation.

#### [Numerical integration in dynamic discrete choice models](material/presentations/suchy_numericalintegration.pdf)
**Rafael Suchy**, *University of Bonn*

The presentation compares different integration methods to solve the so-called EMax() encountered in [Keane and Wolpin (1994)](https://www.jstor.org/stable/2109768?seq=1). Since then, many discrete choice dynamic programming models required to solve multi-dimensional integral with discontinuous integrands. To evaluate whether different methods, e.g. quasi-Monte Carlo, are suitable to reduce the required points for a given accuracy, and hence increase computational efficiency, a simulation study implemented through [respy](https://respy.readthedocs.io/en/latest/) is conducted. The simulation studies shows that switching to quasi-Monte Carlo methods (particularly Halton or Sobol) increases efficiency and has effects on the policy effect (although small).


#### [Efficient solution, filtering and estimation of models with OBCs](material/presentations/boehl_modelsobc.pdf)
**Gregor Boehl**, *Goethe University Frankfurt*

Occasionally binding constraints (OBCs) play a central role in macroeconomic modelling since major developed economies have hit the zero lower bound (ZLB) on interest rates. The paper proposes a solution method for rational expectations models with OBCs and a Bayesian filter/smoother that, both combined, can be used for quick and accurate Bayesian estimation of large-scale models. The quasi-analytic solution method calculates the endogenous duration at the constraint while avoiding matrix inversions and simulations at runtime for gains in computational speed. The TEnKF (transposed Ensemble Kalman Filter) is a hybrid of the particle filter and the Kalman filter that, requiring only a very small number of particles, can be used to approximate the likelihood of nonlinear models with high accuracy. The IPA (iterative path-adjusting transposed-ensemble RTS) smoother adds a smoother and an iterative procedure to filter and can be applied to estimate the state distributions while fully respecting the nonlinearity of the transition function. Further, a massively parallelized combination of different forms of heuristic global optimizers is proposed to avoid local maxima of the likelihood function. Techniques from astrophysics for efficient sampling from the posterior distribution are suggested. As an example, these methods are used to estimate the simple New Keynesian model. *(The current version of the paper, on which this abstract is based, can be accessed at the homepage of [Gregor Boehl (2019)](http://gregorboehl.com/live/obc_boehl.pdf))*


#### [A primer on recursive likelihood function integration](material/presentation/maag_rescursivelikelihood.pdf)
**Jasmin Maag**, *University of Zurich*

A primer that presents a method to efficiently estimate hidden Markov models with continuous latent variables using maximum likelihood estimation. The name Recursive Maximum Likelihood Integration (RLI) is derived from its design: to evaluate the (marginal) likelihood function the integral is decomposed over the unobserved state variables into a series of lower dimensional integrals. Those integrals are recursively approximated by numerical quadrature and interpolation. Advantages include: 1) computational complexity grows linearly in the number of periods, 2) numerical error accumulates sublinearly in the number of time periods integrated. The method is applied to the Rust bus engine replacement model of [Rust (1987)](https://www.jstor.org/stable/1911259?seq=1#page_scan_tab_contents). The presentation is based on a publication by [Gregor Reich (2018)](https://pubsonline.informs.org/doi/abs/10.1287/opre.2018.1750).

#### [„Small data“: Estimation of dynamic models with unobservable or occasionally observable states](material/presentations/reich_oosdata.pdf)
**Gregor Reich**, *University of Zurich*

[Gregor Reich (2018)](https://pubsonline.informs.org/doi/abs/10.1287/opre.2018.1750) estimates the models of [Rust (1987)](https://www.jstor.org/stable/1911259?seq=1#page_scan_tab_contents) with serially correlated EV1 errors. So far, states were either observed or unobserved. But what changes if the states are occasionally observed? It turns out that the method of Recursive Maximum Likelihood Integration (RLI) is still applicable but with respect to the model, there is need to take care for the one-sided laws of motion. For example, assuming that buses are new when entering the data set but only the mileage state at engine replacement is observable, then only the cost trade-off can be consistently estimated, but not the law of motion of mileage. The problem: a comparison of two estimates does not reveal much in this setting. Consequently, the distribution of the estimator (parametric bootstrapping) at various observation frequencies is compared. The main finding shows that a similar distribution does imply a similar point estimate.


#### [Robust investments under risk and ambiguity](material/presentations/blesch_robustinvestment.pdf)
**Maximilian Blesch**, *University of Bonn*

We incorporate techniques from distributionally robust optimization into a dynamic investment model.  This allows us to explicitly account for ambiguity in the decision-making process.  We outline an economic, mathematical, and computational model to study the seminal bus replacement problem ([Rust (1987)](https://www.jstor.org/stable/1911259?seq=1#page_scan_tab_contents)) under potential model misspecification. We specify ambiguity sets for the transition dynamics of the model.These are based on empirical estimates, statistically meaningful, and computation-ally tractable.  We analyze alternative policies in a series of computational experiments.  We find that, given the structure of the model and the available data on past transitions, a policy simply ignoring model misspecification often outperforms its alternatives that are designed to explicitly account for it.

#### [Structural estimation by homotopy continuation](material/presentations/mueller_homotopycontinuation.pdf)
**Philipp Mueller**, *University of Zurich*

The paper proposes a novel method to estimate structural parameter efficiently and systematically, even in models with one poorly identified parameter and in the presence of multiple equilibria. Inference is based on the full (profile) likelihood function, instead of point estimates. The approach includes (1) to formulate the structural estimation as a parameterized version of [Su and Judd (2012)](https://www.jstor.org/stable/23271445?seq=1), and (2) to solve the problem efficiently by homotopy parameter continuation. The presentation of the concept focuses on dynamic discrete choice models where the discount parameter is generally poorly identified. Using the original data set and model from [Rust (1987)](https://www.jstor.org/stable/1911259?seq=1#page_scan_tab_contents) they can reject the instance that the discounting parameter is unidentified, and estimate it to be statistically significant larger than one.


#### Placeholder
**Robert Erbe**, *University of Zurich*

Placeholder

### Social Event

We concluded our first retreat with a bike trip from Bonn to Cologne along the river Rhine.

<br>

<p align="center">
  <img width="460" height="360" src=material/images/StructRetreat.jpg alt="Philipp Eisenhauer and Fedor Iskhakov">
  	<br>
  <span> Philipp Eisenhauer and Fedor Iskhakov </span>
</p>

<br>


<br>

<p align="center">
  <img width="460" height="360" src=material/images/StructRetreat2.jpg>
	<br>
  <span> Group in front of Cologne Cathedral </span>
</p>
