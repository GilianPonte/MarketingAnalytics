grade = function(m,t,p){
  g = 10*(p/m-t)/(1-t)
  if(p/m <= t){g = 0}
  return(g)
}
