########################
# R Script for a manuscript
# 
# The 2020 Czech regional elections: a story of a winner that lost
# Regional and Federal Studies 
#
# Date 07.06.2021
# Author: Jakub Lysek, Ph.D.
# Email: jakub.lysek@upol.cz 
#
########################

# packages:
library(haven)
library(ggplot2)
library(coefplot)
library(texreg)


# Loading the file "KRAJ_2020_COMPLET.sav" :


setwd("~/ArcCR500/Výsledky voleb/Kraj 2020")   # change to your folder where you have downloaded the datafile

KRAJ_2020 <- read_sav("KRAJ_2020_COMPLET.sav")


# Description of the file:
# The dataset contains also parliamentary election (2017 and 2013) results and elections to European Parliament 2019.
# There are also identifiers for the precinct ("Okrsek"),
# district ("OKRES") and the region ("KRAJ") and municipality name ("Obec")
# Dataset is derived from Lysek et al. 2021 (https://www.tandfonline.com/doi/full/10.1080/17445647.2020.1819901) and merged with recent 
# data on regional elections (www.volby.cz)

# The list of the variables:
names(KRAJ_2020)

# the sociodemographic variables used in regression models:

# College degree (%) = "Vzd_vysok_A"
# Catholics (%) = "Nab_rimsko_A"
# Unemployed (%) = "Eko_nezam_A"
# Self-employed (%) = "Eko_podnikatel_A"
# Elderly (unemployed) (%) = "Nepracduch_A"
# Distraints (%) (municipality) = "EXEKUCE"
# Number of inhabitants (log) = "VEL_OBCE"



# Creating regression models in Table 1 - in the manuscript
# Note - we selected only the regions where the party was the dominant party in a coalition

CSSD_2020 <- lm(CSSD_2020_p ~ Vzd_vysok_A + Nab_rimsko_A + Eko_nezam_A + Eko_podnikatel_A + Nepracduch_A +
                  EXEKUCE + VEL_OBCE, data=KRAJ_2020, weights=VOL_SEZNAM_17)
summary(CSSD_2020)


ANO <- lm(ANO_p ~ Vzd_vysok_A + Nab_rimsko_A + Eko_nezam_A + Eko_podnikatel_A + Nepracduch_A +
            EXEKUCE + VEL_OBCE, data=KRAJ_2020, weights=VOL_SEZNAM_17)
summary(ANO)


KSČM <- lm(KSČM_p ~ Vzd_vysok_A + Nab_rimsko_A + Eko_nezam_A + Eko_podnikatel_A + Nepracduch_A +
             EXEKUCE + VEL_OBCE, data=KRAJ_2020, weights=VOL_SEZNAM_17)
summary(KSČM)

DATA_STAN <- KRAJ_2020 %>%                                
  filter((KRAJ=="Středočeský kraj" |
            KRAJ=="Jihočeský kraj" |
            KRAJ=="Plzeňský kraj" |
            KRAJ=="Ústecký kraj" |
            KRAJ=="Liberecký kraj" |
            KRAJ=="Pardubický kraj"|
            KRAJ=="Kraj Vysočina" |
            KRAJ=="Jihomoravský kraj" |
            KRAJ=="Zlínský kraj" |
            KRAJ=="Moravskoslezský kraj"))

DATA_STAN$STAN_p <- DATA_STAN$STAN_p + DATA_STAN$SLK_p


STAN <- lm(STAN_p ~ Vzd_vysok_A + Nab_rimsko_A + Eko_nezam_A + Eko_podnikatel_A + Nepracduch_A +
             EXEKUCE + VEL_OBCE, data=DATA_STAN, weights=VOL_SEZNAM_17)
summary(STAN)


DATA_KDU <- KRAJ_2020 %>%                                
  filter((KRAJ=="Karlovarský kraj" |
            KRAJ=="Jihočeský kraj" |
            KRAJ=="Plzeňský kraj" |
            KRAJ=="Královéhradecký kraj" |
            KRAJ=="Liberecký kraj" |
            KRAJ=="Pardubický kraj"|
            KRAJ=="Kraj Vysočina" |
            KRAJ=="Jihomoravský kraj" |
            KRAJ=="Olomoucký kraj" |
            KRAJ=="Zlínský kraj" |
            KRAJ=="Moravskoslezský kraj"))

KDUČSL <- lm(KDUČSL_p ~ Vzd_vysok_A + Nab_rimsko_A + Eko_nezam_A + Eko_podnikatel_A + Nepracduch_A +
               EXEKUCE + VEL_OBCE, data=DATA_KDU, weights=VOL_SEZNAM_17)
summary(KDUČSL)


KRAJ_2020$Piráti_20_p <- KRAJ_2020$Piráti_p + KRAJ_2020$PIRÁTIaSTAN_p

Piráti <- lm(Piráti_20_p ~ Vzd_vysok_A + Nab_rimsko_A + Eko_nezam_A + Eko_podnikatel_A + Nepracduch_A +
               EXEKUCE + VEL_OBCE, data=KRAJ_2020, weights=VOL_SEZNAM_17)
summary(Piráti)

SPD <- lm(SPD_p ~ Vzd_vysok_A + Nab_rimsko_A + Eko_nezam_A + Eko_podnikatel_A + Nepracduch_A +
            EXEKUCE + VEL_OBCE, data=KRAJ_2020, weights=VOL_SEZNAM_17)
summary(SPD)

DATA_ODS <- KRAJ_2020 %>%                                
  filter((KRAJ=="Středočeský kraj" |
            KRAJ=="Jihočeský kraj" |
            KRAJ=="Plzeňský kraj" |
            KRAJ=="Královéhradecký kraj" |
            KRAJ=="Ústecký kraj" |
            KRAJ=="Liberecký kraj" |
            KRAJ=="Pardubický kraj"|
            KRAJ=="Kraj Vysočina" |
            KRAJ=="Jihomoravský kraj" |
            KRAJ=="Olomoucký kraj" |
            KRAJ=="Zlínský kraj" |
            KRAJ=="Moravskoslezský kraj"))

ODS <- lm(ODS_p ~ Vzd_vysok_A + Nab_rimsko_A + Eko_nezam_A + Eko_podnikatel_A + Nepracduch_A +
            EXEKUCE + VEL_OBCE, data=DATA_ODS, weights=VOL_SEZNAM_17)
summary(ODS)


DATA_TOP09 <- KRAJ_2020 %>%                                
  filter((KRAJ=="Středočeský kraj" |
            KRAJ=="Karlovarský kraj" |
            KRAJ=="Královéhradecký kraj" |
            KRAJ=="Kraj Vysočina" |
            KRAJ=="Jihomoravský kraj"))

DATA_TOP09$TOP09_p <- DATA_TOP09$TOPZLESMZHI_p + DATA_TOP09$TOP09HDKLES_p + DATA_TOP09$TOPHlasZelení_p + DATA_TOP09$TOPSTAN_p + DATA_TOP09$TOPKANMonarch_p


TOP09 <- lm(TOP09_p ~ Vzd_vysok_A + Nab_rimsko_A + Eko_nezam_A + Eko_podnikatel_A + Nepracduch_A +
              EXEKUCE + VEL_OBCE, data=DATA_TOP09, weights=VOL_SEZNAM_17)
summary(TOP09)


screenreg(list(ANO, CSSD_2020, KSČM, SPD, Piráti,STAN, KDUČSL, ODS))

#Table 2 - in the manuscript
library(texreg)
htmlreg(list(ANO, CSSD_2020, KSČM, SPD, Piráti,STAN, KDUČSL, ODS, TOP09), # názvy modelů
        file = "./MODELY_STRANY_KRAJ.html", # output file
        custom.model.names = c("ANO" , "ČSSD","KSČM","SPD", "Pirates", "STAN" ,"KDU-ČSL", "ODS", "TOP09"), # název modelů
        reorder.coef = c( 2, 3, 4, 5, 6, 7, 8, 1),
        custom.coef.names = c("(Constant)","College degree (%)", "Catholics (%)" , "Unemployed (%)", "Self-employed (%)" ,
                              "Elderly (unemployed) (%)", "Distraints (%) (municipality)","Number of inhabitants (log)"), # názvy proměnných
        custom.gof.names = c("R2","Adj.R2","Observations", "RMSE"), # názvy proměnných
        digits = 3, # decimal places for coefficients and SEs
        single.row = FALSE,
        stars = c(0.001)) # display BETA and SEs under each other




# Figure 2: Regression model of change in regional elections turnout between 2016 and 2020
############################################################################################################
ZMENA_20 <- lm(ZMENA_UCASTI ~ Vzd_vysok_A + Nab_rimsko_A + Eko_nezam_A + Eko_podnikatel_A + Nepracduch_A +
                 EXEKUCE + VEL_OBCE + COVID19 + as.factor(KOD_OKRES), data=KRAJ_2020, weights=VOL_SEZNAM_17)
summary(ZMENA_20)

coefplot::coefplot(ZMENA_20, intercept = FALSE,  title = "DV: Difference in turnout 2020 and 2016", xlab = "Standardized coefficients + 95% c.i.",
                   ylab = "Coefficient", sort = c("magnitude"), pointSize = 3, color = "black", cex = 5, zeroColor = "black", 
                   coefficients=c("Vzd_vysok_A",
                                  "Nab_rimsko_A", 
                                  "Eko_nezam_A",
                                  "Eko_podnikatel_A", "Nepracduch_A",
                                  "VEL_OBCE", 
                                  "EXEKUCE",
                                  "COVID19"), 
                   newNames=c(Vzd_vysok_A="College degree (%)",
                              Nab_rimsko_A="Catholics (%)",
                              Eko_nezam_A="Unemployed (%)",
                              Eko_podnikatel_A="Self-employed (%)",
                              Nepracduch_A="Elderly (unemployed) (%)",
                              VEL_OBCE="Number of inhabitants (log)",
                              EXEKUCE="Distraints (%) (municipality)",
                              COVID19="Covid cases per 1000 inh.")) + theme_classic() + theme(legend.position="bottom") +
  theme(plot.title = element_text(size=10,face="bold")) +
  theme(axis.text=element_text(size=10, face="bold"), axis.title=element_text(size=8,face="bold"))


