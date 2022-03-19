
df %>%
  ggplot(aes(x = price, y = change))+ 
  geom_point()+
  geom_smooth(method = "lm")+
  geom_smooth(method = "loess")

filter(df$Rotten.Tomatoes > 2) %>%
  

df[1:20] %>%
  filter(date[1:20], price[1:20]) %>%
  group_by(date[1:20], price[1:20]) %>%
  summarise(
    contagem= n ()
  ) %>%
  ggplot(aes(x = price[1:20], y = date[1:20])) +
  geom_bar(stat = "identity",fill = "blue", alpha = 0.4) +
  coord_flip()

geom_point()+
  geom_smooth(method = "lm")+
  geom_smooth(method = "loess")+
  geom_hline(yintercept = 80)
df2 %>%
  group_by(date,price) %>%
  summarise(
    contagem= n ()
  ) %>%
  ggplot(aes(x = price, y = date)) +
  geom_bar(stat = "identity",fill = "blue", alpha = 0.4) +
  coord_flip()


  