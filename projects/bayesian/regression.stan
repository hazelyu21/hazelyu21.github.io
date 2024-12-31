data {
  int<lower=1> D;                 // Number of predictors
  int<lower=0> N;                 // Number of data points (students)
  int<lower=1> S;                 // Number of settings
  vector[N] y;                    // Outcome variable (continuous)
  int<lower=1, upper=S> setting[N];  // School setting indicator for each student
  matrix[N, D] x;                 // Predictor variables
}

parameters {
  vector[D] mu;                   // Mean of the coefficients for each predictor
  vector[S] alpha_setting;      // intercept for each setting
  vector<lower=0>[D] sigma_setting; // SD of coefficients at the school level
  matrix[S, D] beta_setting;      // School-specific coefficients
  real<lower=0> sigma_y;          // Residual standard deviation
}

model {
  // Priors for global coefficients
  mu ~ normal(0, 10); // A more reasonable prior
  alpha_setting ~ normal(0, 10);
  sigma_setting ~ cauchy(0, 2.5);
 
  // Priors for school-specific coefficients
  for (d in 1:D) {
    for (s in 1:S) {
      beta_setting[s, d] ~ normal(mu[d], sigma_setting[d]);
    }
  }

  // Prior for the residual standard deviation
  sigma_y ~ cauchy(0, 2.5);

  // Likelihood
  for (n in 1:N) {
    y[n] ~ normal(alpha_setting[setting[n]] + dot_product(x[n], beta_setting[setting[n]]), sigma_y);
  }
}
