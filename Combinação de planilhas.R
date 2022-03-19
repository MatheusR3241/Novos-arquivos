setwd ("C:/Users/Win10/Desktop")
df <- read.csv("Pasta1.csv")
df
df1 <- read.csv("Pasta2.csv")
df1

library(tidyverse)
library(ggplot2)
setwd ("C:/Users/Win10/Desktop/Projetos")
df$anos <- df$anos / 10


df1 %>%
  group_by(Meses,Gastos)%>%
  summarise(contagem = n()) %>%
  ggplot(aes(x = df$Meses, y = Gastos ))+ 
geom_bar(stat = "identity",fill = "blue", alpha = 0.4)+ coord_flip()


  coord_flip()

  df1$Meses <- df$anos
  df1$Meses[1:30] <- df$anos
  
  df1
df%>%
  filter(df$Gastos > 2) %>%
  ggplot(aes(x = Salário, y = Gastos ))+ 
  geom_point()+
  geom_smooth(method = "lm")+
  geom_smooth(method = "loess")+
geom_hline(yintercept = 80)

df%>%
  filter(df$Rotten.Tomatoes > 2) %>%
  ggplot(aes(x = Rotten.Tomatoes, y = Metacritic, color = Distributor))+ 
  geom_point()+
  geom_smooth(method = "lm")+
coord_flip()
