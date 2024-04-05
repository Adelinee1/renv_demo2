

library(plotly)

x <- c("Product A", "Product B", "Product C")
y <- c(20, 14, 23)
y2 <- c(16, 12, 27)
text <- c("27% market share", "24% market share", "19% market share")
data <- data.frame(x, y, y2, text)

fig <- data %>% plot_ly()
fig <- fig %>% add_trace(
  x = ~x, y = ~y, type = "bar",
  text = y, textposition = "auto",
  marker = list(
    color = "rgb(158, 202, 225)",
    line = list(color = "rgb(8, 48, 107)", width = 1.5)
  )
)
fig <- fig %>% add_trace(
  x = ~x, y = ~y2, type = "bar",
  text = y2, textposition = "auto",
  marker = list(
    color = "rgb(58, 200, 225)",
    line = list(color = "rgb(8, 48, 107)", width = 1.5)
  )
)
fig <- fig %>% layout(
  title = "January 2013 Sales Report",
  barmode = "group",
  xaxis = list(title = ""),
  yaxis = list(title = "")
)

print(fig)




