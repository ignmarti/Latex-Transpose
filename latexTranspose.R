toLatex<-function(df, header=TRUE, row.names=FALSE, digits=3, ordering=NULL)
{
  result<-""
  if(!is.null(ordering) & length(ordering)==length(df))
  {
    df<-df[,ordering]
  }
  if(row.names)
  {
    dd<-seq(1,nrow(df),1)#row.names(df)
    df<-cbind(dd, df)
  }
  for (j in 1:length(df))
  {
    if(is.numeric(df[,j]) | is.integer(df[,j]))
    {
      df[,j]<-sapply(df[,j], function(x){return(format(x, digits=digits))})
    }
  }
  if(header)
  {
    result<-paste(result, paste(colnames(df), collapse="&"), "\\\n", sep="")
  }
  for (i in 1:nrow(df))
  {
    result<-paste(result,paste(df[i,], collapse="&"), "\\\n", sep="")
  }
  
  return(result)
}