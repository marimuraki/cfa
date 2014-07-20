# Analyze (preliminary) aggregate monthly violations

setwd("~/Dropbox/CfA/")

packages <- c("ggplot2")
sapply(packages, require, character.only = TRUE, quietly = TRUE)

# Download file

path    <- getwd()
url     <- "http://forever.codeforamerica.org/fellowship-2015-tech-interview/Violations-2012.csv"
f_orig  <- "Violations-2012.csv"
f_agg   <- "Violations-2012-agg.csv"

download.file(url, file.path(path, f_orig))

# Read files

data_orig <- read.csv(f_orig)
data_agg <- read.csv(f_agg)

# Visualizations

png('events_total_ym.png')
ggplot(data_agg, 
       aes(violation_date_mn, total, group=violation_category, colour=violation_category)) + 
  geom_point() +
  geom_line() +
  xlab("\nMonth") +
  ylab("Total") + 
  ggtitle("Total Monthly Events in 2012 \n by Violation Category") +
  scale_colour_discrete(name="Violation Category") + 
  scale_x_discrete(breaks=c(1:12), 
                   labels=c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"))
dev.off()

category_names <- list(
  'Air Pollutants and Odors'="AP&O",
  'Animals and Pests'="A&P",
  'Biohazards' = "Bio",
  'Building Conditions'="BC",
  'Chemical Hazards'="CH",
  'Garbage and Refuse'="G&R",
  'Retail Food'="RF",
  'Unsanitary Conditions'="UC",
  'Vegetation'="Veg"
)

category_labeller <- function(variable,value) {
  return(category_names[value])
}

png('events_total_ym_facet.png')
ggplot(data_agg, 
       aes(violation_date_mn, total, group=violation_category, colour=violation_category)) + 
  geom_point() +
  geom_line() +
  facet_grid(violation_category ~ ., labeller=category_labeller) +
  xlab("\nMonth") +
  ylab("Total") + 
  ggtitle("Total Monthly Events in 2012 \n by Violation Category") +
  scale_colour_discrete(name="Violation Category") + 
  scale_x_discrete(breaks=c(1:12), 
                   labels=c("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"))
dev.off()
