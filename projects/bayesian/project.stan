data {
  int<lower=0> N; //number of observations
  int<lower=0> J; //number of schools
  int<lower=0> K; //number of classrooms
  vector[N] y; //observations
  int<lower=1, upper=J> school[N]; //vector of schools
  int<lower=1, upper=K> classroom[N]; //vector of classrooms
  int<lower=1, upper=J> school_classroom[K]; //mapping from school to classroom
}


parameters{
  vector[J] mu_school; //school specific means
  real<lower=0> sigma2_school[J]; //school specific variances
  real<lower=0> mu_0;
  real<lower=0> tau2_0;
  real<lower=0> alpha;
  real<lower=0> beta;
  
  vector[K] mu_classroom; // classroom specific means
  real<lower=0> sigma2_classroom[K]; // classroom specific variances
  real<lower=0> tau2_school[J]; // school specific variances for classroom means
}

model {
  //Priors
  mu_0 ~ normal(0,1000);
  tau2_0 ~ scaled_inv_chi_square(1,0.05);
  alpha ~ normal(2,1);
  beta ~ normal(0.1, 0.05);
  
  // school-level
  mu_school ~ normal(mu_0, sqrt(tau2_0));
  sigma2_school ~ inv_gamma(alpha, beta);
  tau2_school ~ scaled_inv_chi_square(1, 0.05);

  // classroom-level 
  for (k in 1:K) {
    mu_classroom[k] ~ normal(mu_school[school_classroom[k]], sqrt(tau2_school[school_classroom[k]]));
    sigma2_classroom[k] ~ inv_gamma(alpha, beta);
  }

  //Likelihood
  for (n in 1:N) {
    y[n] ~ normal(mu_school[school[n]], sqrt(sigma2_school[school[n]]));
  }
  
}
