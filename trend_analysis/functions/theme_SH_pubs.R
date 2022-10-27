theme_SH_pubs <- function(){
  theme_bw() %+replace%
    theme(
      text = element_text(size = 10, color = '#2a3340'),
      line = element_line(size = 0.25, color = '#2a3340'),
      plot.title = element_text(hjust = 0, size = 16, colour = '#2a3340', face = 'bold'),
      plot.background = element_blank(),
      panel.background = element_blank(),
      panel.grid = element_blank(),
      legend.title = element_blank(),
      legend.background = element_blank(),
      legend.box.background = element_blank(),
      plot.margin = unit(c(0.5, 0.5, 0.5, 0.5), "cm"),
      axis.line = element_line(size = 0.6),
      axis.ticks = element_line(size = 0.6)
    )
}