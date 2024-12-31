# Hazel Yu's Portfolio

---

### Heart Disease and Health Indicators

**Project overview:** Our group used a dataset from Kaggle which contains information on the occurrence of heart diseases and heart attacks of respondents to the Behavioral Risk Factor Surveillance System (BRFSS) survey administered in 2015. The goal of the project was to determine which health indicators were closely associated with heart disease in the US.

To do this, we looked at the mutual conditional entropy of the variables, with Heart Disease or Attack as the response and a fused situation with Heart Disease or Attack and Stroke combined as one response. We also analyzed the correlation between the non-categorical variables and Heart Disease or Attack and the correlation between non-categorical variables and Stroke. Lastly, we calculated the odds ratio between the binary variables and Heart Disease or Attack. 

After choosing the variables most associated with heart disease, we constructed a classification decision tree that minimizes the amount of conditional entropy, and thus maximizes the imformation gain from these variables on heart disease.

<img src="projects/heart_disease/decision_tree.png?raw=true"/>

**Improvements:** To improve our model, we could increase the accuracy with boosting methods, such as Random Forest or LASSO.

***Technical skills:*** Decision tree learning

***Tools:*** Python, R

***Team:*** Shraddha Jhingan, Tsubasa Lin, Curtis Pan

[![Open Code](https://img.shields.io/badge/Jupyter-Open_Files-red?logo=Jupyter)](https://github.com/hazelyu21/hazelyu.github.io/tree/main/projects/heart_disease)
[![Open Report](https://img.shields.io/badge/PDF-View_Report-red?logo=MicrosoftWord)](docs/heart_disease_and_health_indicators.pdf)
---
