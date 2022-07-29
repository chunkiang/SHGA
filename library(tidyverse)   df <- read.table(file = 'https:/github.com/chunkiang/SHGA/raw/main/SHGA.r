library(tidyverse)


df <- read.table(file = 'https://github.com/chunkiang/SHGA/raw/main/result.txt')

df %>% 
  mutate(V1 = factor(V1)) %>% 
  ggplot(mapping = aes(x = V1, y = V2, fill = V2)) +
  geom_bar(stat = 'identity') +
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = .5))
