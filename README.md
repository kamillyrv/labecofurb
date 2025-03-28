---
title: "Kamilly lindona"
format: html
editor: visual
---

```{r}
#| label: load-packages
#| include: false

library(tidyverse)
library(palmerpenguins)
```

## Gráfico de série temporal: 

Falar sobre as variáveis do gráfico 1

```{r}
#| label: graf1
#| warning: false
#| echo: false

ggplot(penguins, 
       aes(x = flipper_length_mm, y = bill_length_mm)) +
  geom_point(aes(color = species, shape = species)) +
  scale_color_manual(values = c("darkorange","purple","cyan4")) +
  labs(
    title = "Flipper and bill length",
    subtitle = "Dimensions for penguins at Palmer Station LTER",
    x = "Flipper length (mm)", y = "Bill length (mm)",
    color = "Penguin species", shape = "Penguin species"
  ) +
  theme_minimal()
```

## Gráfico de série transversal: 

![](https://raw.githubusercontent.com/quarto-dev/quarto-web/main/docs/get-started/hello/rstudio/lter_penguins.png){style="float:right;" fig-alt="Illustration of three species of Palmer Archipelago penguins: Chinstrap, Gentoo, and Adelie. Artwork by @allison_horst." width="401"}

Falar sobre gráfico 2

```{r}
#| label: graf2
#| warning: false
#| echo: false

ggplot(penguins, 
       aes(x = flipper_length_mm, y = bill_length_mm)) +
  geom_point(aes(color = species, shape = species)) +
  scale_color_manual(values = c("darkorange","purple","cyan4")) +
  labs(
    title = "Flipper and bill length",
    subtitle = "Dimensions for penguins at Palmer Station LTER",
    x = "Flipper length (mm)", y = "Bill length (mm)",
    color = "Penguin species", shape = "Penguin species"
  ) +
  theme_minimal()
```
