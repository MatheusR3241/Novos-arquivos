setwd ("C:/Users/Win10/Desktop")
 df <- read.csv("Pasta1.csv")
 linhas <- sample(1: length(df$Meses), length(df$Fusiveis))
 as.numeric(df$anos)
 df$Meses <- NULL 
 df
 treino = df
 teste = df
 modelo <- rpart(df$anos ~ ., data = treino, control= rpart.control(cp=0))
 teste$Previsão <- (predict(modelo,teste))
 View(teste)
 treino = df

df
df
library(rpart)

setwd ("C:/Users/Win10/Desktop")
df <- read.csv("Pasta1.csv")


treino = df[linhas,]
teste = df[-linhas]
modelo <- rpart(gasto ~ ., data = treino, control= rpart.control(cp=0))
teste$Previsão <- (predict(modelo,teste))
View(teste)
treino = df

#visulização

library(ggplot2)
library(tidyverse)


teste %>%
  group_by(gasto,Previsão)%>%
  summarise(
    contagem = n()
    )%>%
  ggplot(aes(x = gasto, y = Previsão))+ 
  geom_bar(stat = "identity",fill = "blue", alpha = 0.4)+
  coord_flip()


coord_flip()
