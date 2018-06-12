Description:

An application to calculate your child's height based on your and your partner's height.

Data:

This application uses the galton dataset from the UsingR library, a tabulated data set collected and used by Sir Francis Galton in 1885 to study the relationship between a parent's height and their childrens. With 928 observations on the following 2 variables, The child's height and the “midparent” height.The midparent's height is an average of the fathers height and 1.08 times the mother's. In the data there are 205 different parents and 928 children. The data here is truncated at the ends for both parents and children so that it can be treated as numeric data (UsingR Description). The dataset is in inches, the data was multiplied by 2.54 to get it in centimeters.

Model:

A linear model is fitted to predict the height of your child, in centimeters, based on your "midparent" height. This is a plot of the data and with the regression line shown in blue (with its 95% confidence interval).

The source code is hosted in the following link https://github.com/dashess/shiny_app_height/

