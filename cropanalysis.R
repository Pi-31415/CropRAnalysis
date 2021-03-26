# T Test
# get the data into the software
Input =( 
  "grouping height
  men 181.5
  men 187.3
  men 175.3
  men 178.3
  men 169
  men 183.2
  men 184.5
  women 175.4
  women 172.1
  women 181.1
  women 165.2
  women 166.3
  women 167
  women 170.3
")

# do some kind of manipulations to the data
Data = read.table(textConnection(Input),header=TRUE)
summary(Data)
# output some results
t.test(height ~ grouping, data=Data, 
       var.equal=TRUE, 
       conf.level=0.95)

box_plot <- ggplot(Data, aes(x = grouping, y = height))
box_plot +
  geom_boxplot() +
  ylim(c(0, 200))+
  scale_x_discrete() +
  labs(title = "Monthly Deaths from Lung Diseases in the UK",
       y = "Height",x="Grouping")
