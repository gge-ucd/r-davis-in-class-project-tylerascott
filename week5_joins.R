source('functions/livestreamSetup.R')

livestreamSetup(password = 'vulcans',user = 'rdavis',port = 4040)

library(tidyverse)
surveys = read_csv('data/portal_data_joined.csv')
tail_length = read_csv('data/tail_length.csv')


str(tail_length)
str(surveys)

intersect(colnames(surveys),colnames(tail_length))

combo_dataframe = left_join(surveys,tail_length)
str(combo_dataframe)

temp_df = surveys %>% group_by(year,plot_id) %>% tally()
temp_df = temp_df %>% ungroup()

pivot_wider(temp_df)
pivot_wider(temp_df,names_from = 'year',values_from = 'n')

head(temp_df)



pivot_wider(data = surveys,id_cols = c('plot_id'),
            names_from = year,values_fn = n)
pivot_wider(temp_df,id_cols = 'plot_id',names_from = 'year',values_from = 'n')

?n_distinct
surveys %>% group_by(plot_id,year) %>% summarize(distinct_genus = n_distinct(genus))

surveys %>% group_by(plot_id,year) %>% summarize(length(unique(genus)))





