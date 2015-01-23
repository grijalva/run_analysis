translate <- function(label){
  resp <- if(label == 1) {
    'WALKING'
  }
  else if(label == 2){
    'WALKING_UPSTAIRS'
  } 
  else if (label == 3 ) {
    'WALKING_DOWNSTAIRS'
  }
  else if (label ==4) {
    'SITTING'
  }
  else if(label == 5){
    'STANDING' 
  }
  else {
    'LAYING'
  }
}

run_analysis <- function(){
  tst = read.table("test/x_test.txt")
  trt = read.table("train/x_train.txt")
  merged <- rbind(tst, trt)
  columns <- c(1:6, 41:46, 81:86, 121:126, 161:166, 201:202, 214:215, 227:228, 240:241, 253:254, 266:271, 345:350, 424:429, 503:504, 516:517, 529:530, 542:543)
  sub <- merged[, columns]
  tstl = read.table("test/y_test.txt")
  tstlabel <- tstl[columns,]
  a <- c()
  for (i in tstlabel){
      a <- c(a, translate(i))
  }  
  colnames(sub) <- a
  namesL <- unique(names(sub))
  #b <- c()
  respuesta <- sapply(namesL, function(x) {
   est <- sub[, names(sub) == x]
   ms <- sapply(ncol(est), function(x){
     mean(est[,x])
   })
  })
  colnames(respuesta) <- namesL
  respuesta
}