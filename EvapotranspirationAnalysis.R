#Creating Values
# P_fallow = fallow$`Precip (gridMET)`
# ET_fallow = fallow$`Ensemble ET`
# P_almonds = almonds$`Precip (gridMET)`
# ET_almonds = almonds$`Ensemble ET`
# P_potatoes = potatoes$`Precip (gridMET)`
# ET_potatoes = potatoes$`Ensemble ET`
# P_onions = onions$`Precip (gridMET)`
# ET_onions = onions$`Ensemble ET`

#F tests
#var.test(ET_almonds, ET_onions)
#var.test(ET_almonds, ET_potatoes)
#var.test(ET_potatoes, ET_onions)
#var.test(ET_fallow, ET_almonds)
#var.test(ET_fallow, ET_potatoes)
#var.test(ET_fallow, ET_onions)  

#Box Plots
# boxplot(ET_onions, ET_almonds, ET_potatoes, ET_fallow,
#        main = "Boxplot Comparison of ET Values",
#        at = c(1, 2, 3, 4),
#        names = c("Onions", "Almonds", "Potatoes", "Fallow"),
#        xlab = "Crop Type",
#        ylab = "ET Value",
#        col = "palegreen3")

#Linear Regression Model
# lrAlmonds = lm(almonds$NDVI~ET_almonds + P_almonds, data = almonds)
# summary(lrAlmonds)
# ggplot(data = almonds, aes(x = P_almonds, y = almonds$NDVI, color = ET_almonds)) + 
#   geom_point() + stat_smooth(method = lm, col = "red") +
#   labs(title = "Almonds Linear Regression Model", x = "Precipitation", y = "NDVI")
# lrOnions = lm(onions$NDVI~ET_onions + P_onions, data = onions)
# summary(lrOnions)
# ggplot(data = onions, aes(x = P_onions, y = onions$NDVI, color = ET_onions)) + 
#   geom_point() + stat_smooth(method = lm, col = "red") +
#   labs(title = "Onions Linear Regression Model", x = "Precipitation", y = "NDVI")
# lrPotatoes = lm(potatoes$NDVI~ET_potatoes + P_potatoes, data = potatoes)
# summary(lrPotatoes)
# ggplot(data = potatoes, aes(x = P_potatoes, y = potatoes$NDVI, color = ET_potatoes)) + 
#   geom_point() + stat_smooth(method = lm, col = "red") +
#   labs(title = "Potatoes Linear Regression Model", x = "Precipitation", y = "NDVI")
# lrFallow = lm(fallow$NDVI~ET_fallow + P_fallow, data = fallow)
# summary(lrFallow)
# ggplot(data = fallow, aes(x = P_fallow, y = fallow$NDVI, color = ET_fallow)) + 
#   geom_point() + stat_smooth(method = lm, col = "red") +
#   labs(title = "Fallow Linear Regression Model", x = "Precipitation", y = "NDVI")

#Prediction Model
# sample_fallow = data.frame(P_fallow = 10, ET_fallow = 5)
# predict(lrFallow, sample_fallow)
# sample_almonds = data.frame(P_almonds = 10, ET_almonds = 10)
# predict(lrAlmonds, sample_almonds)
# sample_potatoes = data.frame(P_potatoes = 10, ET_potatoes = 10)
# predict(lrPotatoes, sample_potatoes)
# sample_onions = data.frame(P_onions = 10, ET_onions = 10)
# predict(lrOnions, sample_onions)
