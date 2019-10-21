library("tidyverse")
library(gapminder)
library(here) # to se working directory

remove(list=ls())

write.csv(gapminder, './gapminder.csv')
view(gapminder)

avggdp <- gapminder %>% 
  group_by(continent) %>% 
  summarise(mean = mean(gdpPercap))

view(avggdp)

avggdp %>% 
  ggplot(aes(continent, mean)) + geom_point()+ theme_bw()

# setting working directoy with 'here'
# write.csv() vs here::here()
# here::here() - locates the highest working level of a current project

## reading in Excel File

data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"

#read_csv can directly import csv but read_excel requires download first

data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"

# basename function to extract filename from the URL
file_name <- basename(data_url)

# old method
download.file(url=data_url,
              destfile = paste('./datasets/', file_name))

# here method
download.file(url = data_url,
              destfile = here::here("foldername", "filenname"))

# tidyverse, load in excel file and assign imported data to tibble
philanthropist <- read_excel(here::here("foldername", file_name), trim_ws=TRUE)


## MRI File
library(readxl)
mri_file = here("datasets", "Firas-MRI.xlsx")

mri <- read_excel(mri_file, range="A1:L12")
mri <- mri[,-10]

mri <-  mri %>% pivot_longer(cols = 'Slice 1': 'Slice 8',
               names_to = 'slice_no',
               values_to = 'value')






                             
                             
