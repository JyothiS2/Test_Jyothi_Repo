#Basic Visualization without any package
affairs %>%
  group_by(rating) %>%
  summarise(perc_affairs = mean(affairs!=0)) %>% arrange(desc(rating)) -> plot_3
barplot(height = plot_3$perc_affairs, names.arg = plot_3$rating,
        main = 'Percentage of people having affairs\n based on their marriage ratings',
        xlab = "Marriage Rating")

# Graph provides the % of people of having affairs based on how they'd rate their marraige. We see that as
#people's rating for their marriage starts falling the percentage of them having affairs reaches from around
#15% with 5 star rated marriage to 50% with 2 or 1 star.

--------------------------------------------------------------------------------------------------------------------

# Visualization using package tidyverse having lattice function

library(tidyverse)
affairs <- read.csv("https://vincentarelbundock.github.io/Rdatasets/csv/AER/Affairs.csv")
lattice::densityplot(~ age | gender, data = affairs %>% filter(affairs>0),
                     plot.points = FALSE, auto.key = F,
                     main = 'Age distribution of people with affairs',
                     sub = "With gender subdivision")


#Using lattice package to see major ages during which people have affairs. Here we see that females
#majorly have affairs during age 28-32 and for males they have highest affairs during age 25-40 with steady
#downfall post that age.


--------------------------------------------------------------------------------------------------------------------

# Visualization using package tidyverse having ggplot function
  

affairs %>%
group_by(children, gender) %>%
summarise(perc_affairs = mean(affairs!=0)) %>%
ggplot(aes(children,perc_affairs, group = gender, fill = gender))+
geom_col(position = "dodge") +
theme_minimal() +
labs(y = "Percentage of Affairs", x = "Have children?",
    title = "Impact of having children on % of people having affairs")


## 'summarise()' has grouped output by 'children'. You can override using the '.groups' argument.

#Using ggplot to see if having children helps in people not having affairs. But conversely we see that
#more people having children have affairs than the one's that dont. And only 10% of females don't seem to
#have affairs when there are no children in the marriage but close to 30% of them have affairs when they
#have children.


