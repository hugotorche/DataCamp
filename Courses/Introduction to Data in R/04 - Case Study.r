'''Inspect the data'''

# Inspect evals

glimpse(evals)


'''Identify variable types'''

# Inspect variable types
glimpse(evals)

# Remove non-factor variables from the vector below
cat_vars <- c("rank", "ethnicity", "gender", "language", "cls_level", "cls_profs", "cls_credits", "pic_outfit", "pic_color")


'''Recode a variable'''

# Recode cls_students as cls_type
evals_fortified <- evals %>%
  mutate(
    cls_type = case_when(
      cls_students <= 18 ~ "small",
      cls_students <= 59 ~ "midsize",
      cls_students >= 60 ~ "large"
    )
  )


'''Create a scatterplot'''

# Scatterplot of score vs. bty_avg
ggplot(evals, aes(x = bty_avg, y = score)) +
  geom_point()


'''Create a scatterplot, with an added layer'''

# Scatterplot of score vs. bty_avg colored by cls_type
ggplot(evals, aes(x = bty_avg, y = score, color = cls_type)) +
  geom_point()

















