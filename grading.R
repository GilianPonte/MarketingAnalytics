rm(list = ls())
library(tidyverse)

grade = function(m,p,t){
  g = 10*((p/m-t)/(1-t))
  if(p/m <= t){g = 0}
  return(g)
}


students = expand.grid(m = 50, p = seq(from = 1, to = 50, by = 1), t = seq(from = 0.1, to = 0.5, by = 0.1))
students$grade = 0

for (i in 1:nrow(students)){
  print(i)
  students[i,4] = grade(students[i,1], students[i,2], students[i,3])
}
students

students %>% ggplot(aes(x = p, y = grade, color = as.factor(t), group = as.factor(t))) + geom_line()
