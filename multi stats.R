##Multispecies


mspec <- as.rspec(read.csv('mspec.csv'), lim = c(300, 700))
mspec <- as.rspec(read.csv('C:/Users/Georgia/OneDrive/Documents/Honours 2015/mspec.csv'), lim = c(300, 700))
mspec$wl <- round(mspec$wl, 0)
head(mspec)[, 1:10]  # yep!
plot(mspec)  # eyeball the reflectance spectra

mspec <- procspec(mspec, opt = 'smooth', span = 0.2)  # smooth
mspec <- procspec(mspec, fixneg = 'zero')  # zero any negative values
plot(mspec)  # take a look at it again (so smooth!)

names(mspec)
mspec_bee <- hexagon(mspec, visual = 'apis', illuminant = 'D65', background = 'white')

head(mspec_bee)

hex_plot(mspec_bee, sectors = 'coarse', col.sec = 'lightgrey', col = 'black', bg = 'grey', pch = 21)

mspec_fly <- tetra(mspec, visual = 'dros', illuminant = 'bluesky', background = 'white', adapt = TRUE, transform = 'menten')

head(mspec_fly)

tetra_plot(mspec_fly, type = '3d', col = 'black', bg = 'grey', pch = 21)

tetra_plot(mspec_fly, type = '3d', col = 'black', bg = 'grey', pch = 21, angle=100)

tcsplot(mspec_fly)




##colours for hexagon multispecies

species_1 <-as.rspec(read.csv("C:/Users/Georgia/OneDrive/Documents/Honours 2015/Data Sheets/species_1.csv"),lim=c(300,700))
species_1<-procspec(species_1opt='smooth',span=0.2)
species_1<-procspec(species_1,fixneg='zero')
plot(species_1)
names(species_1)
species_1_bee <- hexagon(species_1, visual = 'apis', illuminant = 'D65', background = 'white')
head(species_1_bee)
hex_plot(species_1_bee, sectors = 'coarse', col.sec = 'lightgrey', col = 'black', bg = 'grey', pch = 21)


species_2 <-as.rspec(read.csv("C:/Users/Georgia/OneDrive/Documents/Honours 2015/Data Sheets/species_2.csv"),lim=c(300,700))
species_2<-procspec(species_2,opt='smooth',span=0.2)
species_2<-procspec(species_2,fixneg='zero')
plot(species_2)
names(species_2)
species_2_bee <- hexagon(species_2, visual = 'apis', illuminant = 'D65', background = 'white')
head(species_2_bee)
hex_plot(species_2_bee, sectors = 'coarse', col.sec = 'lightgrey', col = 'black', bg = 'grey', pch = 21)


species_3 <-as.rspec(read.csv("C:/Users/Georgia/OneDrive/Documents/Honours 2015/Data Sheets/species_3.csv"),lim=c(300,700))
species_3<-procspec(species_3,opt='smooth',span=0.2)
species_3<-procspec(species_3,fixneg='zero')
plot(species_3)
names(species_3)
species_3_bee <- hexagon(species_3, visual = 'apis', illuminant = 'D65', background = 'white')
head(species_3_bee)
hex_plot(species_3_bee, sectors = 'coarse', col.sec = 'lightgrey', col = 'black', bg = 'grey', pch = 21)


species_4 <-as.rspec(read.csv("C:/Users/Georgia/OneDrive/Documents/Honours 2015/Data Sheets/species_4.csv"),lim=c(300,700))
species_4<-procspec(species_4,opt='smooth',span=0.2)
species_4<-procspec(species_4,fixneg='zero')
plot(species_4)
names(species_4)
species_4_bee <- hexagon(species_4, visual = 'apis', illuminant = 'D65', background = 'white')
head(species_4_bee)
hex_plot(species_4_bee, sectors = 'coarse', col.sec = 'lightgrey', col = 'black', bg = 'grey', pch = 21)


hex_plot(species_1_bee, sectors = 'coarse', col.sec = 'lightgrey', col = 'black', bg = 'grey', pch = 21)
points(x=species_2_bee$x,y=species_2_bee$y, col = 'black', bg = 'pink', pch = 21)
points(x=species_3_bee$x,y=species_3_bee$y, col = 'black', bg = 'blue', pch = 21)
points(x=species_4_bee$x,y=species_4_bee$y, col = 'black', bg = 'orange', pch = 21)



species_1.1 <-as.rspec(read.csv("C:/Users/Georgia/OneDrive/Documents/Honours 2015/Data Sheets/species_1.1.csv"),lim=c(300,700))
species_1.1<-procspec(species_1.1opt='smooth',span=0.2)
species_1.1<-procspec(species_1.1,fixneg='zero')
plot(species_1.1)
names(species_1.1)
species_1.1_bee <- hexagon(species_1.1, visual = 'apis', illuminant = 'D65', background = 'white')
head(species_1.1_bee)
hex_plot(species_1.1_bee, sectors = 'coarse', col.sec = 'lightgrey', col = 'black', bg = 'grey', pch = 21)


species_2.1 <-as.rspec(read.csv("C:/Users/Georgia/OneDrive/Documents/Honours 2015/Data Sheets/species_2.1.csv"),lim=c(300,700))
species_2.1<-procspec(species_2.1,opt='smooth',span=0.2)
species_2.1<-procspec(species_2.1,fixneg='zero')
plot(species_2.1)
names(species_2.1)
species_2.1_bee <- hexagon(species_2.1, visual = 'apis', illuminant = 'D65', background = 'white')
head(species_2.1_bee)
hex_plot(species_2.1_bee, sectors = 'coarse', col.sec = 'lightgrey', col = 'black', bg = 'grey', pch = 21)


species_3.1 <-as.rspec(read.csv("C:/Users/Georgia/OneDrive/Documents/Honours 2015/Data Sheets/species_3.1.csv"),lim=c(300,700))
species_3.1<-procspec(species_3.1,opt='smooth',span=0.2)
species_3.1<-procspec(species_3.1,fixneg='zero')
plot(species_3.1)
names(species_3.1)
species_3.1_bee <- hexagon(species_3.1, visual = 'apis', illuminant = 'D65', background = 'white')
head(species_3.1_bee)
hex_plot(species_3.1_bee, sectors = 'coarse', col.sec = 'lightgrey', col = 'black', bg = 'grey', pch = 21)


species_4.1 <-as.rspec(read.csv("C:/Users/Georgia/OneDrive/Documents/Honours 2015/Data Sheets/species_4.1.csv"),lim=c(300,700))
species_4.1<-procspec(species_4.1,opt='smooth',span=0.2)
species_4.1<-procspec(species_4.1,fixneg='zero')
plot(species_4.1)
names(species_4.1)
species_4.1_bee <- hexagon(species_4.1, visual = 'apis', illuminant = 'D65', background = 'white')
head(species_4.1_bee)
hex_plot(species_4.1_bee, sectors = 'coarse', col.sec = 'lightgrey', col = 'black', bg = 'grey', pch = 21)


hex_plot(species_1_bee, sectors = 'coarse', col.sec = 'lightgrey', col = 'black', bg = 'grey', pch = 21)
points(x=species_2_bee$x,y=species_2_bee$y, col = 'black', bg = 'pink', pch = 21)
points(x=species_3_bee$x,y=species_3_bee$y, col = 'black', bg = 'blue', pch = 21)
points(x=species_4_bee$x,y=species_4_bee$y, col = 'black', bg = 'orange', pch = 21)
points(x=species_1.1_bee$x,y=species_1.1_bee$y, col = 'black', bg = 'red', pch = 21)
points(x=species_2.1_bee$x,y=species_2.1_bee$y, col = 'black', bg = 'yellow', pch = 21)
points(x=species_3.1_bee$x,y=species_3.1_bee$y, col = 'black', bg = 'green', pch = 21)
points(x=species_4.1_bee$x,y=species_4.1_bee$y, col = 'black', bg = 'purple', pch = 21)


hex_plot(species_1.1_bee, sectors = 'coarse', col.sec = 'lightgrey', col = 'black', bg = 'red', pch = 21)
points(x=species_2.1_bee$x,y=species_2.1_bee$y, col = 'black', bg = 'yellow', pch = 21)
points(x=species_3.1_bee$x,y=species_3.1_bee$y, col = 'black', bg = 'green', pch = 21)
points(x=species_4.1_bee$x,y=species_4.1_bee$y, col = 'black', bg = 'purple', pch = 21)


hex_plot(species_1_bee, sectors = 'coarse', col.sec = 'lightgrey', col = 'black', bg = 'grey', pch = 21)
points(x=species_1.1_bee$x,y=species_1.1_bee$y, col = 'black', bg = 'red', pch = 21)

hex_plot(species_2_bee, sectors = 'coarse', col.sec = 'lightgrey', col = 'black', bg = 'grey', pch = 21)
points(x=species_2.1_bee$x,y=species_2.1_bee$y, col = 'black', bg = 'red', pch = 21)

hex_plot(species_3_bee, sectors = 'coarse', col.sec = 'lightgrey', col = 'black', bg = 'grey', pch = 21)
points(x=species_3.1_bee$x,y=species_3.1_bee$y, col = 'black', bg = 'red', pch = 21)

hex_plot(species_4_bee, sectors = 'coarse', col.sec = 'lightgrey', col = 'black', bg = 'grey', pch = 21)
points(x=species_4.1_bee$x,y=species_4.1_bee$y, col = 'black', bg = 'red', pch = 21)


ak_bee<-rbind(species_1_bee, species_1.1_bee)
et_bee<-rbind(species_2_bee, species_2.1_bee)
np_bee<-rbind(species_3_bee, species_3.1_bee)
pg_bee<-rbind(species_4_bee, species_4.1_bee)

hex_plot(ak_bee, sectors = 'coarse', col.sec = 'lightgrey', col = 'black', bg = 'grey', pch = 21)
points(x=pg_bee$x,y=pg_bee$y, col = 'black', bg = 'green', pch = 21)
points(x=np_bee$x,y=np_bee$y, col = 'black', bg = 'blue', pch = 21)
points(x=et_bee$x,y=et_bee$y, col = 'black', bg = 'yellow', pch = 21)



##Tetrahedral

##processing

species_1_fly <- tetra(species_1, visual = 'dros', illuminant = 'bluesky', background = 'white', adapt = TRUE, transform = 'menten')
head(species_1_fly)
tetra_plot(species_1_fly, type = '3d', col = 'black', bg = 'grey', pch = 21)
tetra_plot(species_1_fly, type = '3d', col = 'black', bg = 'grey', pch = 21, angle=100)
tcsplot(species_1_fly) ##rotating model

species_2_fly <- tetra(species_2, visual = 'dros', illuminant = 'bluesky', background = 'white', adapt = TRUE, transform = 'menten')
head(species_2_fly)
tetra_plot(species_2_fly, type = '3d', col = 'black', bg = 'grey', pch = 21)
tetra_plot(species_2_fly, type = '3d', col = 'black', bg = 'grey', pch = 21, angle=100)
tcsplot(species_2_fly) ##rotating model

species_3_fly <- tetra(species_3, visual = 'dros', illuminant = 'bluesky', background = 'white', adapt = TRUE, transform = 'menten')
head(species_3_fly)
tetra_plot(species_3_fly, type = '3d', col = 'black', bg = 'grey', pch = 21)
tetra_plot(species_3_fly, type = '3d', col = 'black', bg = 'grey', pch = 21, angle=100)
tcsplot(species_3_fly) ##rotating model

species_4_fly <- tetra(species_4, visual = 'dros', illuminant = 'bluesky', background = 'white', adapt = TRUE, transform = 'menten')
head(species_4_fly)
tetra_plot(species_4_fly, type = '3d', col = 'black', bg = 'grey', pch = 21)
tetra_plot(species_4_fly, type = '3d', col = 'black', bg = 'grey', pch = 21, angle=100)
tcsplot(species_4_fly) ##rotating model



species_1.1_fly <- tetra(species_1.1, visual = 'dros', illuminant = 'bluesky', background = 'white', adapt = TRUE, transform = 'menten')
head(species_1.1_fly)
tetra_plot(species_1.1_fly, type = '3d', col = 'black', bg = 'grey', pch = 21)
tetra_plot(species_1.1_fly, type = '3d', col = 'black', bg = 'grey', pch = 21, angle=100)
tcsplot(species_1.1_fly) ##rotating model

species_2.1_fly <- tetra(species_2.1, visual = 'dros', illuminant = 'bluesky', background = 'white', adapt = TRUE, transform = 'menten')
head(species_2.1_fly)
tetra_plot(species_2.1_fly, type = '3d', col = 'black', bg = 'grey', pch = 21)
tetra_plot(species_2.1_fly, type = '3d', col = 'black', bg = 'grey', pch = 21, angle=100)
tcsplot(species_2.1_fly) ##rotating model

species_3.1_fly <- tetra(species_3.1, visual = 'dros', illuminant = 'bluesky', background = 'white', adapt = TRUE, transform = 'menten')
head(species_3.1_fly)
tetra_plot(species_3.1_fly, type = '3d', col = 'black', bg = 'grey', pch = 21)
tetra_plot(species_3.1_fly, type = '3d', col = 'black', bg = 'grey', pch = 21, angle=100)
tcsplot(species_3.1_fly) ##rotating model

species_4.1_fly <- tetra(species_4.1, visual = 'dros', illuminant = 'bluesky', background = 'white', adapt = TRUE, transform = 'menten')
head(species_4.1_fly)
tetra_plot(species_4.1_fly, type = '3d', col = 'black', bg = 'grey', pch = 21)
tetra_plot(species_4.1_fly, type = '3d', col = 'black', bg = 'grey', pch = 21, angle=100)
tcsplot(species_4.1_fly) ##rotating model


##plotting

species_1_fly <- tetra(species_1, visual = 'dros', illuminant = 'bluesky', background = 'white', adapt = TRUE, transform = 'menten')
species_2_fly <- tetra(species_2, visual = 'dros', illuminant = 'bluesky', background = 'white', adapt = TRUE, transform = 'menten')
species_3_fly <- tetra(species_3, visual = 'dros', illuminant = 'bluesky', background = 'white', adapt = TRUE, transform = 'menten')
species_4_fly <- tetra(species_4, visual = 'dros', illuminant = 'bluesky', background = 'white', adapt = TRUE, transform = 'menten')

species_1.1_fly <- tetra(species_1.1, visual = 'dros', illuminant = 'bluesky', background = 'white', adapt = TRUE, transform = 'menten')
species_2.1_fly <- tetra(species_2.1, visual = 'dros', illuminant = 'bluesky', background = 'white', adapt = TRUE, transform = 'menten')
species_3.1_fly <- tetra(species_3.1, visual = 'dros', illuminant = 'bluesky', background = 'white', adapt = TRUE, transform = 'menten')
species_4.1_fly <- tetra(species_4.1, visual = 'dros', illuminant = 'bluesky', background = 'white', adapt = TRUE, transform = 'menten')

# Add an 'ID' variable to each set of processed/modelled data
species_1_fly$ID <- "species_1"
species_2_fly$ID <- "species_2"
species_3_fly$ID <- "species_3"
species_4_fly$ID <- "species_4"

species_1.1_fly$ID <- "species_1.1"
species_2.1_fly$ID <- "species_2.1"
species_3.1_fly$ID <- "species_3.1"
species_4.1_fly$ID <- "species_4.1"



# Bind them all ('rbind' = row bind) together into one big set
all_species_fly <- rbind(species_1_fly, species_2_fly, species_3_fly, species_4_fly, species_1.1_fly, species_2.1_fly, species_3.1_fly, species_4.1_fly)

# Plot them, specifying the newly created 'ID' column as the grouping variable. I've also specified two colours here, because there were two groups (two species) in this eg
tetra_plot(all_species_fly, type = '3d', group.id = 'ID', col = c('grey', 'forestgreen', 'red', 'yellow', 'black', 'orange', 'pink', 'blue'))

tetra_plot(all_species_fly, type = '3d', group.id = 'ID', col = c('grey', 'forestgreen', 'red', 'yellow', 'black', 'orange', 'pink', 'blue'), angle=100)

tcsplot(all_species_fly)

##by species
ak_fly<-rbind(species_1_fly, species_1.1_fly)
et_fly<-rbind(species_2_fly, species_2.1_fly)
np_fly<-rbind(species_3_fly, species_3.1_fly)
pg_fly<-rbind(species_4_fly, species_4.1_fly)

multi_fly<-rbind(ak_fly, et_fly, np_fly, pg_fly)
tetra_plot(multi_fly, type = '3d', group.id = 'ID', col = c('snow4', 'gold', 'mediumblue', 'limegreen'), angle=100)




##Multi January
# Bind them all ('rbind' = row bind) together into one big set
all_species_fly_1 <- rbind(species_1_fly, species_2_fly, species_3_fly, species_4_fly)

# Plot them, specifying the newly created 'ID' column as the grouping variable. I've also specified two colours here, because there were two groups (two species) in this eg
tetra_plot(all_species_fly_1, type = '3d', group.id = 'ID', col = c('snow4', 'gold', 'mediumblue', 'limegreen'), angle = 500)


##Multi April
# Bind them all ('rbind' = row bind) together into one big set
all_species_fly_2 <- rbind(species_1.1_fly, species_2.1_fly, species_3.1_fly, species_4.1_fly)

# Plot them, specifying the newly created 'ID' column as the grouping variable. I've also specified two colours here, because there were two groups (two species) in this eg
tetra_plot(all_species_fly_2, type = '3d', group.id = 'ID', col = c('snow4', 'gold', 'mediumblue', 'limegreen'), angle = 500)
