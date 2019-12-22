#PREDICTION MODEL

#DATA READING
mydata= read.csv("C:\\Users\\DELL\\Desktop\\Simple linear regression\\salary.csv", header = TRUE)
names(mydata)

#BUILDING MODEL
#FITTING THE MODEL

# Correlations
# data frame mtcars. Use listwise deletion of missing data.
Correlation<-cor(mydata, use="complete.obs", method="pearson")
Correlation

# Multiple Linear Regression Example
fit <- lm(mydata$Salary ~ mydata$YearsExperience, data=mydata)
summary(fit) # show results

# Other useful functions
coefficients(fit) # model coefficients
confint(fit, level=0.95) # CIs for model parameters
fitted(fit) # predicted values
residuals(fit) # residuals
anova(fit) # anova table
vcov(fit) # covariance matrix for model parameters
influence(fit) # regression diagnostics

# Diagnostic Plots
# Diagnostic plots provide checks for heteroscedasticity, normality, and influential observerations.

# diagnostic plots
layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page
plot(fit)
