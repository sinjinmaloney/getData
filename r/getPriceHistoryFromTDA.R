getPriceHistoryFromTDA <- function(myFile=NULL,mySource=NULL,myRequestValue=NULL,myIntervalType=NULL,myIntervalDuration=NULL,
                                   myPeriodType=NULL,myPeriodValue=NULL,myExtended=NULL,myStartDate=NULL,myEndDate=NULL){
  
  myFile <- myFile
  mySource <- mySource
  myRequestValue <- myRequestValue
  myIntervalType <- myIntervalType
  myIntervalDuration <- myIntervalDuration
  myPeriodType <- myPeriodType
  myPeriodValue <- myPeriodValue
  myExtended <- myExtended
  myStartDate <- myStartDate
  myEndDate <- myEndDate
  
  if (!is.null(myPeriodType) && myPeriodValue != "") {
    if (!is.null(myExtended) && myExtended == "TRUE") {
      url <- paste("https://apis.tdameritrade.com/apps/100/PriceHistory?source=",mySource,
                    "&requestidentifiertype=SYMBOL&requestvalue=",myRequestValue,
                    "&intervaltype=",myIntervalType,"&intervalduration=",myIntervalDuration,
                    "&periodtype=",myPeriodType,"&period=",myPeriodValue,"&extended=",myExtended,
                    "&startdate=",myStartDate,"&enddate=",myEndDate,sep="")
    } else {
      url <- paste("https://apis.tdameritrade.com/apps/100/PriceHistory?source=",mySource,
                   "&requestidentifiertype=SYMBOL&requestvalue=",myRequestValue,
                   "&intervaltype=",myIntervalType,"&intervalduration=",myIntervalDuration,
                   "&periodtype=",myPeriodType,"&period=",myPeriodValue,"&startdate=",myStartDate,
                   "&enddate=",myEndDate,sep="")
    }
  } else {
      url <- paste("https://apis.tdameritrade.com/apps/100/PriceHistory?source=",mySource,
                   "&requestidentifiertype=SYMBOL&requestvalue=",myRequestValue,
                   "&intervaltype=",myIntervalType,"&intervalduration=",myIntervalDuration,
                   "&startdate=",myStartDate,"&enddate=",myEndDate,sep="")
  }

  tmpFile <- gsub("([.][a-zA-Z0-9]*)",".bin",myFile)
  
  if (file.exists(tmpFile)) {
    file.remove(tmpFile)
  }
  
  download.file(url,tmpFile,mode="wb")

  file2read <-file(tmpFile, "rb")

  symbolCount <- readBin(file2read, "integer", size=4, endian="big") #Symbol Count
  symbolLength <- readBin(file2read, "integer", size=2, signed=F, endian="big") #Symbol length
  symbol <- readChar(file2read, symbolLength) #Sympbol
  errorCode <- readBin(file2read, "integer", size=1, signed=F) #Error code
  barCount <- readBin(file2read, "integer",size=4, endian="big") #Bar Count
  close <- readBin(file2read, "double",size=4, endian="big") #close
  high <- readBin(file2read, "double",size=4, endian="big") #high
  low <- readBin(file2read, "double",size=4, endian="big") #low
  open <- readBin(file2read, "double",size=4, endian="big") #open
  volume <- readBin(file2read, "integer",size=4, endian="big") #volume
  timestamp <- readBin(file2read, "integer",size=4, n=2, endian="big") #timestamp
  timestamp <- as.POSIXct(timestamp[1]*2^32/1000 + timestamp[2]/1000,origin="1970-01-01",tz="America/New_York")
  
  data <- cbind(symbol,close,high,low,open,volume,as.character(timestamp))
  colnames(data) <- c("symbol","close","high","low","open","volume","timestamp")
  
  for (i in 2:barCount-1){
    close <- readBin(file2read, "double",size=4, endian="big") #close
    high <- readBin(file2read, "double",size=4, endian="big") #high
    low <- readBin(file2read, "double",size=4, endian="big") #low
    open <- readBin(file2read, "double",size=4, endian="big") #open
    volume <- readBin(file2read, "integer",size=4, endian="big") #volume
    timestamp <- readBin(file2read, "integer",size=4, n=2, endian="big") #timestamp
    timestamp <- as.POSIXct(timestamp[1]*2^32/1000 + timestamp[2]/1000, origin="1970-01-01",tz="America/New_York")
    tmpData <- cbind(symbol,close,high,low,open,volume,as.character(timestamp))
    data <- rbind(data,tmpData) 
    rm(tmpData)
  }
  
  close(file2read)
  if (file.exists(myFile)) {
    file.remove(myFile)
  } 
  
  write.csv(data,myFile)
  
  if (file.exists(tmpFile)) {
    file.remove(tmpFile)
  }    
}