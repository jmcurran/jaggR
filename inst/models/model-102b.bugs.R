# model file model-102b.bug fits a callibration model for continuous on
# continuous corresponding R file model-102.r

data{
  n <- length(rdt)
  n.sexes <- max(sex)  # sex not used in this model
}


model{
  
  for (i in 1:n) {
    rdt[i] ~ dnorm(mu[i], tau)
    mu[i] <- b0 + b1 * age[i]
  }
  
  b0 ~ dnorm(0, 1e-04)
  b1 ~ dnorm(0, 1e-04)
  tau ~ dgamma(0.005, 0.005)
}



