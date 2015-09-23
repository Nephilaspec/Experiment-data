## Analysing silk colour using visual models ##

## Clear workspace
  rm(list=ls()) 

## Set working directory if needed (or just open this file from the same folder that the data are in)  
  #setwd("/path/to/directory/")
  
## Load (& install if need be) packages
  packages <- c('pavo', 'devtools')
  install.packages(packages)  # Install them if need be
  sapply(packages, function(x) library(x, character.only = TRUE, verbose = FALSE))  # Load them
  
  # This is a package I wrote, so it needs to be installed from a separate website
  devtools::install_github('thomased/colsci')
  library('colsci')  # Load it
  
## Load the data as a 'spectral' object (just makes it easier to do some colour stuff with)
  # I've messed with the format of the file a little, just to make it a bit easier to
  # wrangle (i.e. it's saved as a a csv file, with the wavelength column named 'wl').
  nephila <- as.rspec(read.csv('nephila_exp.csv'), lim = c(300, 700))
  
## Take a look at the beginning of the data to see if it looks right. 
  head(nephila)[, 1:10]  # yep!
  plot(nephila)  # eyeball the reflectance spectra
  
## Process data
  # 'Smooth' the spectra slightly just to remove minor noise and any negative values,
  # which can be an issue when modelling.
  nephila <- procspec(nephila, opt = 'smooth', span = 0.2)  # smooth
  nephila <- procspec(nephila, fixneg = 'zero')  # zero any negative values
  plot(nephila)  # take a look at it again (so smooth!)
  
## Modelling - Bee
  # Using the package 'colsci' (a hackey package I wrote). This is using the 'colour hexagon'
  # model of Chittka 1992 - a model of hymenopteran (largely honeybee) vision that's pretty
  # good because it has been quite extensively tested. Here I'm using the photoreceptor
  # sensitivities of a honeybee (Apis mellifera) - so that's the 'viewer'. And I'm modelling
  # the silk as though it were being illuminated by 'D65 standard daylight' 
  # (a formally defined 'daylight' spectrum). The 'background' option in this case just means
  # that the centre of the colour space is 'white' (so pure white things should fall in 
  # the middle of the hexagon).
  nephila_bee <- hexagon(nephila, visual = 'apis', illuminant = 'D65', background = 'white')
  
  # Eyeball the results
  # Run ?hexagon to read about what each of the things mean. The 'r_vec' and 'h_theta'
  # values are your 'saturation' (distance from the centre) and 'hue' (angle from 12 0'clock) 
  # values, respectively, taking into account bee vision. If you want to calculate the distance
  # between two points (which might actually be interesting for your experimental manipulations? Looking
  # at how individuals change before and after manipulation), you'll have to do it manually
  # using the xy coordinates of two samples and a bit of geometry.  
  head(nephila_bee)
  
  # Plot in the hexagon
  # The points seem to fall around the centre ('white' stuff) or towards the mid-
  # and long- wavelength sensitivite photoreceptors (which is what I'd expect of
  # 'yellowish' stuff). Looks good!
  hex_plot(nephila_bee, sectors = 'coarse', col.sec = 'lightgrey', col = 'black', bg = 'grey', pch = 21)
 
## Modelling - fly 
  # So this is a 'tetrahedral' fly model (because flies have 4 kinds of photoreceptor
  # probably involved in colour vision), but it's a good deal more speculative
  # than the fly model (i.e. much, much less well tested). It's using similar options
  # to those above, but it's implemented a bit differently just due to the nature of the model. 
  nephila_fly <- tetra(nephila, visual = 'dros', illuminant = 'bluesky', background = 'white', adapt = TRUE, transform = 'menten')
  
  # Eyeball the results
  # So again 'r_vec' is your distance from the centre ('saturation'), but you have
  # two angles ('h_theta', 'h_phi') this time that define the 'hue' because it's a 3d space.
  # Take a look at ?tetra for a bit more detail.
  head(nephila_fly)
  
  # Plot in a tetrahedron (it's a bit ugly, but R isn't great at 3d stuff)
  # Looks like a bunch of silk falls near the centre (which is what I'd expect
  # of 'white' things), and stretches towards the longer-wavelength photoreceptors
  # (which is what I'd expect of yellowish stuff). Reassuring!
  tetra_plot(nephila_fly, type = '3d', col = 'black', bg = 'grey', pch = 21)
  
## Of course you can save the results of all this stuff if you want to play with it in excel etc.
  write.csv(nephila_bee, 'nephila_bee.csv')
  
## And if you want to save plots something like this would do the trick
  png('hexagon.png', width = 7, height = 7, unit = 'in', res = 300)  # Saving as a png
  hex_plot(nephila_bee, sectors = 'coarse', col.sec = 'lightgrey', col = 'black', bg = 'grey', pch = 21)  # Or whatever plot you like
  dev.off()
  
  
  
