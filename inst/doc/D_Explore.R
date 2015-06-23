## ----echo=FALSE----------------------------------------------------------
pageNumber <- 5

library(knitr)
titles <- c("Workshop Outline","A. Introduction", 
            "B. Get", "C. Clean", "D. Explore",
             "E. Analyze Base", "F. Analyze Packages", "G. Visualize",
             "H. Repeat and Reproduce", "I. Parting Thoughts")

pages <- paste0(c("0_Outline","A_Introduction", "B_Get", "C_Clean", "D_Explore",
             "E_Analyze", "F_Analyze", "G_Visualize",
             "H_Repeat-Reproduce", "I_Parting-Thoughts-and-Extra-Materials"),
             ".html")
markdownToPrint <- paste0("[",titles,"](",pages,")")

dfPages <- data.frame(titles,pages,markdownToPrint,stringsAsFactors = FALSE)

directions <- dfPages$markdownToPrint[c(pageNumber-1,pageNumber+1)]
directions <- c(directions[1],"-----------------------------------------",directions[2])
kable(t(directions))

## ----summary_data_example------------------------------------------------
summary(iris)

## ----range_examp---------------------------------------------------------
range(iris$Petal.Length)

## ----iqr_examp-----------------------------------------------------------
IQR(iris$Sepal.Width)

## ----quantile_example----------------------------------------------------
quantile(iris$Sepal.Length)

## ----quantile_probs_examp------------------------------------------------
quantile(iris$Sepal.Length, probs=(c(0.025,0.975)))

## ----Exercise1, echo=FALSE-----------------------------------------------

## ----plot_examp----------------------------------------------------------
plot(mtcars$hp,mtcars$qsec)

## ----plot_examp_2--------------------------------------------------------
plot(mtcars$hp,mtcars$qsec,main="Changes in Quartermile time as function of horsepower",
     xlab="Total Horsepower",ylab="Quartermile Time (secs)")

## ----pairs_examp---------------------------------------------------------
plot(iris, main="Iris Pairs Plot")

## ----abline_examp--------------------------------------------------------
plot(iris$Petal.Width,iris$Petal.Length, main="Petal Dimensions")
#horizontal line at specified y value
abline(h=4)
#a vertical line
abline(v=1.5)
#Line with a slope and intercept
abline(0,1)

## ----abline_examp_lm-----------------------------------------------------
plot(iris$Petal.Width,iris$Petal.Length, main="Petal Dimensions")
#abline accepts a liner model object as input
#linear model is done with lm, and uses a formula as input
abline(lm(Petal.Length~Petal.Width,data=iris))

## ----boxplot_examp-------------------------------------------------------
boxplot(iris$Petal.Length, main="Boxplot of Petal Length",ylab="Length(cm)")

## ----boxplot_grps_examp--------------------------------------------------
boxplot(iris$Petal.Length~iris$Species, main="Boxplot of Petal Length by Species",ylab="Length(cm)")

## ----base_hist_examp-----------------------------------------------------
hist(iris$Sepal.Length)
hist(airquality$Temp,breaks=10)

## ----cdf_examp-----------------------------------------------------------
aq_temp_ecdf<-ecdf(airquality$Temp)
plot(aq_temp_ecdf)

## ----Exercise1, echo=FALSE-----------------------------------------------

## ----echo=FALSE----------------------------------------------------------
kable(t(directions))

