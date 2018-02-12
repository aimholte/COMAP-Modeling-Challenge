modlist <- list()
adr2list <- list()
vars <- colnames(cleandata)
for(i in 3:409){
  var <- vars[i]
  plm.mod <- plm(RETCB ~ get(var), data = cleandata)
  adr2 <- r.squared(plm.mod, dfcor =  TRUE)
  modlist[i] <- plm.mod
  adr2list[i] <- adr2
}
maxr2 <- which.max(adr2list)
maxr2