##' @importFrom utils packageDescription
.onAttach <- function(libname, pkgname) {
    pkgVersion <- packageDescription(pkgname, fields="Version")
    msg <- paste0(pkgname, " v", pkgVersion, "  ",
                  "For help: https://yulab-smu.top/biomedical-knowledge-mining-book/", "\n\n")

    if (.Platform$OS.type == "windows") {
        dl.method <- "wininet"
    } else if (capabilities("libcurl")) {
        dl.method <- "libcurl"
    } else {
        dl.method <- getOption("download.file.method", default = "auto") 
    }

    
    # Define a cache directory
    options(clusterProfiler_cache_dir = tempdir())

    options(clusterProfiler.download.method = dl.method)
    options(timeout = max(300, getOption("timeout"))) # see ?download.file
    
    citation <- paste0("If you use ", pkgname, " in published research, please cite:\n",
                       "T Wu, E Hu, S Xu, M Chen, P Guo, Z Dai, T Feng, L Zhou, ",
                       "W Tang, L Zhan, X Fu, S Liu, X Bo, and G Yu. ", 
                       "clusterProfiler 4.0: A universal enrichment tool for interpreting omics data. ", 
                       "The Innovation. 2021, 2(3):100141")
                       

    packageStartupMessage(paste0(msg, citation))
}


