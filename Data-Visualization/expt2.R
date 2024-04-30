cylinder_groups<-split(mtcars$mpg , mtcars$cyl)
boxplot(cylinder_groups,
        main="Highway Mileage by Cylinders",
        xlab="Number of Cylinders",
        ylab="Highway Mileage",
        names=c("4 Cylinders","6 Cylinders","8 Cylinders"))
        col="skyblue",
        border="black"