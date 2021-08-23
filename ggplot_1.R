library(dslabs)
data(murders)
library(tidyverse)

 #ggplot(data=murders)+
 #geom_point(aes(x = population/10^6, y = total), size=3)+  geom_text(aes(x = population/10^6, y = total, label=abb), nudge_x = 1)
# simplify code by adding global aesthetic
p <- murders %>% ggplot(aes(population/10^6, total, label = abb))
p + geom_point(size = 3) +
  geom_text(nudge_x = 1.5)

# local aesthetics override global aesthetics
p + geom_point(size = 3) +
  geom_text(aes(x = 10, y = 800, label = "Hello there!"))