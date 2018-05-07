for(j in 1:10){
  x = 0
  for (i in 1:100000){
    x = x + sample(1:6,1)
  }
  x = x/100000
  print(x)
}
