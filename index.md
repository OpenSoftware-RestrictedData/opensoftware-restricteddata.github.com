--- 
name: project-overview
layout: default
title: Project Overview 
---

# NB This is a test!
123, please see "document version" link on left side bar for current documentation.

## Analysing Restricted Data
Increasing concerns over privacy in Australia and globally, combined
with the risk from hacking and the accidental release of large-scale
data sets is leading to increased restrictions on the use of
confidential, highly sensitive health data. This is coincident with
increased statistical and computational power, with the potential to
glean many new insights from already collected data. Unfortunately,
however, the two trends risk cancelling each other out. It is thus
imperative that universities and other institutions who have access to
large data sets manage them in ways that maintain organisational and
public confidence in their integrity.

This paper presents the design and development of a Virtual Laboratory
for analysing restricted data using open software.  These tools were
assembled with the aim to allow users to access restricted data in an
appropriate and safe manner whilst allowing use of open software to
enhance reproducibility and accessibility.  The system implementation
is described specifically for the Australian National Research Cloud
[http://www.nectar.org.au/research-cloud/][1]

We present a case study of an application from Environmental
Epidemiology using confidential health records, which was a motivating
reason for us to develop this system.  In the example presented here,
we provide a simple analysis of the distribution of suicides with
drought across NSW and also with votes for the conservative parties;
both of which have previously been found to increase the risk of
suicides in NSW. The paper then concludes with a reflection on the
implications of applying these open software tools to restricted
access data such as the Australian Deaths dataset.

#### Test Code Chunk ####
    x <- rnorm(100,1,2)
    png("images/hist_x.png")
    hist(x)
    dev.off()

The R code produces the plot:

<!--![plot](/images/hist_x.png)-->
![plot](/images/hist_x.png)

[1]: http://www.nectar.org.au/research-cloud/ "Nectar"
