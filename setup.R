# mran.date <- "2021-08-19"
# options(repos=paste0("https://cran.microsoft.com/snapshot/",mran.date,"/"))

pkgTest <- function(x,try=FALSE)
{
        if (!require(x,character.only = TRUE))
        {
                install.packages(x,dep=TRUE)
                if(!require(x,character.only = TRUE)) stop("Package not found")
        }
  if ( try ) {
    print(paste0("Unloading ",x))
    detach(paste0("package:",x), unload = TRUE, character.only = TRUE)
  }
  return("OK")
}


global.libraries <- c("remote","rmarkdown")

results <- sapply(as.list(global.libraries), pkgTest)

