# Portfolio

---

### Heart Disease and Health Indicators

**Project overview:** Our group used a dataset from Kaggle which contains information on the occurrence of heart diseases and heart attacks of respondents to the Behavioral Risk Factor Surveillance System (BRFSS) survey administered in 2015. The goal of the project was to determine which health indicators were closely associated with heart disease in the US.

To do this, we looked at the mutual conditional entropy of the variables, with Heart Disease or Attack as the response and a fused situation with Heart Disease or Attack and Stroke combined as one response. We also analyzed the correlation between the non-categorical variables and Heart Disease or Attack and the correlation between non-categorical variables and Stroke. Lastly, we calculated the odds ratio between the binary variables and Heart Disease or Attack. 

After choosing the variables most associated with heart disease, we constructed a classification decision tree that minimizes the amount of conditional entropy, and thus maximizes the imformation gain from these variables on heart disease.

<img src="images/decision_tree.png?raw=true"/>

**Improvements:** To improve our model, we could increase the accuracy with boosting methods, such as Random Forest or LASSO.

***Technical skills:*** Decision tree learning, entropy, odds ratio

***Tools:*** Python, R

***Team:*** Shraddha Jhingan, Tsubasa Lin, Curtis Pan, Hazel Yu

[![Open Code](https://img.shields.io/badge/Jupyter-Open_Files-red?logo=Jupyter)](https://github.com/hazelyu21/hazelyu.github.io/tree/main/projects/heart_disease)
[![Open Report](https://img.shields.io/badge/PDF-View_Report-red?logo=MicrosoftWord)](docs/heart_disease_and_health_indicators.pdf)

---

### Free Lunch Qualification and Math Test Scores

**Project overview:** In this project, my team partner and I analyzed the effect of free lunch qualification and math test scores for high school students using a Bayesian hierarchical model. We built the hierarchy using the school setting variable, which includes Rural, Suburban, and Urban as categories. We fit a linear regression model using Stan with school setting as a level to predict post-test scores. The covariates in our model included free lunch, school type, gender, and teaching method. We found that students that qualified for free/reduced lunch tend to have lower post-test scores compared to those who did not qualify.

<img src="images/density.png?raw=true"/>
<img src="images/mcmc.png?raw=true"/>
<img src="images/table.png?raw=true"/>

***Technical skills:*** Markov chain Monte Carlo simulations, Bayesian hierarchical modeling

***Tools:*** R, Stan

***Team:*** Jasmine Son, Hazel Yu

[![Open Code](https://img.shields.io/badge/Jupyter-Open_Files-red?logo=Jupyter)](https://github.com/hazelyu21/hazelyu.github.io/tree/main/projects/bayesian)
[![Open Report](https://img.shields.io/badge/PDF-View_Report-red?logo=MicrosoftWord)](docs/bayesian_free_lunch_qualification.pdf)

---

### Analysis of "Shot Marilyns" Paintings

**Project overview:** Our group analyzed Andy Warhol's Shot Marilyns, which are silkscreen paintings of Marilyn Monroe with different background colors: orange, red, turquoise, blue, and egg blue.

We did color separation using K-means clustering to separate the colors in each painting into five clusters. We created RGB distirbutions with kernel density plots and used hierarchical clustering analysis to investigate color balances and the distribution of colors in various regions of interest (ROI). We also looked at the conditional entropy values for each possible permutation of primary colors.

<img src="images/RBG_3d.png?raw=true"/>
<img src="images/conditional_entropy.png?raw=true"/>

***Technical skills:*** K-means clustering, hierarchical clustering, entropy

***Tools:*** Python

***Team:*** Shraddha Jhingan, Tsubasa Lin, Curtis Pan, Hazel Yu

[![Open Code](https://img.shields.io/badge/Jupyter-Open_Files-red?logo=Jupyter)](https://github.com/hazelyu21/hazelyu.github.io/tree/main/projects/shot_marilyns)
[![Open Report](https://img.shields.io/badge/PDF-View_Report-red?logo=MicrosoftWord)](docs/shot_marilyn_paintings.pdf)

---

