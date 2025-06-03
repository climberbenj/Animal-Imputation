library(terra)

cdl_raster <- rast("/Users/benjohnson/Documents/GitHub/Animal-Imputation/Data/CDL_2023.tif")

print(cdl_raster)
terraOptions(memfrac = 0.5)

corn_only <- cdl_raster
corn_only[cdl_raster != 1] <- NA

plot(corn_only, main = "Corn Layer from CDL", col = "yellow", legend = FALSE)