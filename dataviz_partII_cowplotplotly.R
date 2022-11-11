library(ngRok)
ngRok::livestream_start('www.rdaviscode.com',password = 'nifflers',user = 'rdavis',port = 8080)

livestream_stop()

library(cowplot)
library(tidyverse)
ggplot() 

# make a few plots:
(plot.diamonds <- ggplot(diamonds, aes(clarity, fill = cut)) + 
  geom_bar() + theme_tufte() + 
  theme(axis.text.x = element_text(angle=70, vjust=0.5)))
#plot.diamonds
(plot.cars <- ggplot(mpg, aes(x = cty, y = hwy, colour = factor(cyl))) + 
  geom_point(size = 2.5) + theme_excel())
#plot.cars
(plot.iris <- ggplot(data=iris, aes(x=Sepal.Length, y=Petal.Length, fill=Species)) +
  geom_point(size=3, alpha=0.7, shape=21) + theme_economist())
  


#plot.iris

plot_grid(plot.cars,plot.diamonds,plot.iris)
# use plot_grid
panel_plot <- plot_grid(plot.cars, 
                         plot.iris, 
                         plot.diamonds,
                         labels = c('mpg','iris','diamond'),nrow = 2)
library(ggthemes)
panel_plot + theme_stata()
                         labels=c("1", "2", "3"), ncol=2, nrow = 2))
str(panel_plot)
panel_plot
library(ggthemes)


library(tigris)
ca_counties <- tigris::counties(state = 'CA',class = 'sf')
library(sf)
ca_plot <- ggplot() + geom_sf(data = ca_tracts) + theme_map()

plot_grid(ca_plot,diamonds,mpg)

# fix the sizes draw_plot
(ggdraw() + 
  draw_plot(plot.cars + theme(legend.position = c(0.8,0.2)),x = .5,y =.5,width = .5,height = .5)+
  draw_plot(ca_counties,x = 0,y = 0,height = 1,width=.5))


  draw_plot(plot.cars, x=0, y=.5, width=0.5, height = 0.5)+
  draw_plot(plot.diamonds, x=0.5, y=0.5, width=0.5, height = 0.5)+
  draw_plot_label(label = c("MPG data","diamonds data","iris data"), x = c(0, 0.5, 0), y = c(1, 1, 0.5))+
    theme_bw())

ggsave(filename = 'figures/diamondplot.pdf',
       plot = plot.diamonds,)
ggsave(filename = 'figures/testplot.png',plot = fixed_gridplot,width = 6,height = 4, units = 'in',dpi = 450)

library(plotly)

plot.iris <- ggplot(data=iris, aes(x=Sepal.Length, y=Petal.Length, fill=Species)) +
  geom_point(size=3, alpha=0.7, shape=21)
plot.iris

plotly::ggplotly(plot.iris) #it's as simple as that! 
?ggplotly
