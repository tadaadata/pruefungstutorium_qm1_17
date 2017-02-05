## theme_tut()
theme_tut <- function (style = "grey", legend = "top") {
  if (style == "grey") {
    theme_bw() +
      theme(legend.position   = legend,
            plot.background   = element_rect(fill  = "#F0F1EB"),
            panel.background  = element_rect(fill  = "#FAFAFA"),
            panel.grid.major  = element_line(color = "#C6C6C6"),
            panel.grid.minor  = element_line(color = "#DEDEDE"),
            strip.background  = element_rect(fill  = "#CC0000"),
            strip.text        = element_text(color = "white"),
            legend.background = element_rect(fill  = "#F0F1EB"),
            legend.key        = element_rect(fill  = "#FAFAFA"),
            axis.text         = element_text(color = "#4d4d4d", size = 10),
            text              = element_text(color = "black", size = 14))
  } else if (style == "dark") {
    theme_bw() +
      theme(legend.position   = legend,
            plot.background   = element_rect(fill  = "#1a1a1a"),
            panel.background  = element_rect(fill  = "#0d0d0d"),
            panel.grid.major  = element_line(color = "#4d4d4d"),
            panel.grid.minor  = element_line(color = "#333333"),
            strip.background  = element_rect(fill  = "#cc7a00"),
            strip.text        = element_text(color = "white"),
            legend.background = element_rect(fill  = "#1a1a1a"),
            legend.key        = element_rect(fill  = "#404040"),
            axis.text         = element_text(color = "#a6a6a6", size = 10),
            text              = element_text(color = "white", size = 14))
  } else if (style == "light") {
    theme_bw() +
      theme(legend.position   = legend,
            plot.background   = element_rect(fill  = "white"),
            panel.background  = element_rect(fill  = "white"),
            panel.grid.major  = element_line(color = "#4d4d4d", size = .3),
            panel.grid.minor  = element_line(color = "#8c8c8c", linetype = "dotdash"),
            strip.background  = element_rect(fill  = "#404040"),
            strip.text        = element_text(color = "white"),
            legend.background = element_rect(fill  = "white"),
            legend.key        = element_rect(fill  = "white"),
            axis.text         = element_text(color = "black", size = 10),
            text              = element_text(color = "black", size = 14))
  }
}
