#Name samples and create stacked bar chart
samples<-c("Core","T1","T2","T3","T4","T5","T6","T7","T8","M1","M2","M3","M4","M5","M6","M7","M8","F1","F2","F3","F4","F5","F6","F7","F8")

melted<-melt(subfamily25,id.vars="taxon",measure.vars=c(samples))

Bar1<-ggplot(melted,aes(x = variable, y = value, fill = taxon)) + 
  geom_bar(position = "fill",stat = "identity",color="black") +
  xlab("\nSamples") +
  ylab("Relative Abundance\n") +
  scale_y_continuous(expand=c(0,0)) +
  scale_x_discrete(expand=c(0,0)) +
  theme_classic() +
  theme(axis.text.y=element_text(size=14,color="black"), axis.title=element_text(size=18,color="black")) +
  theme(axis.text.x=element_text(size=14,color="black",angle=45,hjust=1), axis.title=element_text(size=15,color="black")) +
  #If you don't need to angle the x-axis, use the following line instead
  #theme(axis.text=element_text(size=12,color="black"), axis.title=element_text(size=18,color="black")) +
  guides(colour = guide_legend(title=NULL, override.aes = list(size=.2)), fill=guide_legend(title=NULL))
Bar1