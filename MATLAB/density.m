function pi = density(X)
mu1 = [1;1];
sig1 = [0.1 0; 0 0.1];
mu2 = [-5;-5];
sig2 = [2.75 -2.25; -2.25 2.75];
pi = 0.2*mvnpdf(X,mu1,sig1) + 0.8*mvnpdf(X,mu2,sig2);
end