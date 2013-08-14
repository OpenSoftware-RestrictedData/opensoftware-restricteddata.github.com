#################################################################
# /home/ivan/projects/opensoftware-restricteddata.github.com/lib/setup_oracle_of_delphe.r
# author:
# ihanigan
# date:
# 2013-08-14
# description:
# build tables of oracle of delphe
#################################################################

# nceph server 03 data management\projects\0.3 Catalogue\backups\f102.sql

# changes
# 2012-09-17    modify to work on centos linux
# 2011-06-17    changes made to enable RJDBC on Radha-HP, need to remove ; from sendupdate

# 2010-11-26    add approvals col to accessors for managing ABS mortality URF additional users updates.
#                               note that ASSDA includes /stdyDscr/dataAccs/
# 2010-12-01    add table linked to stdyDscr via IDNO called othrStdyMat with relStudy and relPubl

# notes
# see N:\NCEPH_IT\Data Management\archive\Dataset Library Management\DDILite.xls for mapping decisions re metadata fields

# SSH into a centos box with oracle on it.
# on shell
# . /u01/app/oracle/product/11.2.0/xe/bin/oracle_env.sh
# export LD_LIBRARY_PATH=/u01/app/oracle/product/11.2.0/xe/lib:$LD_LIBRARY_PATH
## if(!require(RJDBC)) install.packages('RJDBC'); require(RJDBC)
## drv <- JDBC("oracle.jdbc.driver.OracleDriver",
##             '/u01/app/oracle/product/11.2.0/xe/jdbc/lib/ojdbc6.jar')
## ch <- dbConnect(drv,"jdbc:oracle:thin:@115.146.95.169:1521","DDIINDEXDB","passwrd")
## d <- dbReadTable(ch, name='STDYDSCR', schema = 'DDIINDEXDB')
## t(d[1,])
require(devtools)
install_github("swishdbtools", "swish-climate-impact-assessment")
require(swishdbtools)
pwd <- getPassword()
ch <- connect2oracle("192.168.2.12", "DDIINDEXDB", pwd)
###########
# create sequences
dbSendUpdate(ch,'CREATE SEQUENCE   "STDYDSCR_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE')
dbSendUpdate(ch,'CREATE SEQUENCE   "FILEDSCR_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE')
dbSendUpdate(ch,'CREATE SEQUENCE   "DATADSCR_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE')
dbSendUpdate(ch,'CREATE SEQUENCE   "KEYWORD_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE')
dbSendUpdate(ch,'CREATE SEQUENCE   "ACCESSSTDY_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE')
dbSendUpdate(ch,'CREATE SEQUENCE   "ACCESSORS_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE')

dbSendUpdate(ch,'drop TABLE OTHRSTDYMAT')
dbSendUpdate(ch,'drop TABLE ACCESSORS')
dbSendUpdate(ch,'drop TABLE ACCESSSTDY')
dbSendUpdate(ch,'drop TABLE DATADSCR')
dbSendUpdate(ch,'drop TABLE FILEDSCR')
dbSendUpdate(ch,'drop TABLE KEYWORDS')
dbSendUpdate(ch,'drop TABLE STDYDSCR')

dbSendUpdate(ch,'
CREATE TABLE  "STDYDSCR"
   (    "PKEY" NUMBER NOT NULL ENABLE,
        "TITL" VARCHAR2(255),
        "IDNO" VARCHAR2(255) NOT NULL ENABLE,
        "PRODUCER" VARCHAR2(255),
        "PRODDATEDOC" DATE,
        "BIBLCITDOC" VARCHAR2(255),
        "AUTHENTY" VARCHAR2(255),
        "COPYRIGHT" VARCHAR2(255),
        "PRODDATESTDY" DATE,
        "FUNDAG" VARCHAR2(255),
        "DISTRBTR" VARCHAR2(255),
        "SERNAME" VARCHAR2(255),
        "VERSION" VARCHAR2(255),
        "BIBLCITSTDY" CLOB,
        "TIMEPRD" VARCHAR2(255),
        "COLLDATE" VARCHAR2(255),
        "GEOGCOVER" VARCHAR2(255),
        "GEOGUNIT" VARCHAR2(255),
        "ANLYUNIT" VARCHAR2(255),
        "UNIVERSE" VARCHAR2(255),
        "DATAKIND" VARCHAR2(255),
        "CLEANOPS" VARCHAR2(255),
        "CONFDEC" VARCHAR2(255),
        "SPECPERM" VARCHAR2(255),
        "RESTRCTN" VARCHAR2(255),
        "NOTES" VARCHAR2(255),
        "ABSTRACT" CLOB,
         CONSTRAINT "STDYDSCR_PK" PRIMARY KEY ("PKEY") ENABLE,
         CONSTRAINT "STDYDSCR_CON" UNIQUE ("IDNO") ENABLE
   )
')

# not working? do this in GUI
# see set_up_oracle_of_delphe-triggers.sql

## dbSendUpdate(ch,'
## CREATE OR REPLACE TRIGGER  "bi_STDYDSCR"
##   before insert on "STDYDSCR"
##   for each row
## begin
##   for c1 in (
##     select "STDYDSCR_SEQ".nextval next_val
##     from dual
##   ) loop
##     :new."PKEY" :=  c1.next_val;
##   end loop;
## end;
## ')

dbSendUpdate(ch,'
ALTER TRIGGER  "bi_STDYDSCR" ENABLE
')

# newnode filedscr
dbSendUpdate(ch,'
CREATE TABLE  "FILEDSCR"
   (    "FILEID" NUMBER(*,0),
        "IDNO" VARCHAR2(255),
        "FILENAME" VARCHAR2(255),
        "FILETYPE" VARCHAR2(255),
        "PROCSTAT" VARCHAR2(255),
        "SPECPERMFILE" VARCHAR2(255),
        "DATEARCHIVED" VARCHAR2(5),
        "DATEDESTROY" VARCHAR2(5),
        "FILEDSCR" VARCHAR2(255),
        "FILELOCATION" VARCHAR2(255),
        "NOTES" CLOB,
         CONSTRAINT "FILEDSCR_CON" PRIMARY KEY ("FILEID") ENABLE,
         CONSTRAINT "FILEDSCR_FK_STDYDSCR" FOREIGN KEY ("IDNO")
          REFERENCES  "STDYDSCR" ("IDNO") ON DELETE CASCADE ENABLE
   )
')

## dbSendUpdate(ch,'
## CREATE OR REPLACE TRIGGER  "bi_FILEDSCR"
##   before insert on "FILEDSCR"
##   for each row
## begin
##   for c1 in (
##     select "FILEDSCR_SEQ".nextval next_val
##     from dual
##   ) loop
##     :new."FILEID" :=  c1.next_val;
##   end loop;
## end;
## ')

dbSendUpdate(ch,'
ALTER TRIGGER  "bi_FILEDSCR" ENABLE
')

dbSendUpdate(ch,'
CREATE TABLE  "KEYWORDS"
   (    "PKEY" NUMBER(*,0),
        "IDNO" VARCHAR2(255),
        "KEYWORDS" VARCHAR2(255),
         CONSTRAINT "KEYWORDS_PK" PRIMARY KEY ("PKEY") ENABLE,
         CONSTRAINT "KEYWORDS_FK_STDYDSCR" FOREIGN KEY ("IDNO")
          REFERENCES  "STDYDSCR" ("IDNO") ON DELETE CASCADE ENABLE
   )
')

## dbSendUpdate(ch,'
## CREATE OR REPLACE TRIGGER  "bi_KEYWORDS"
##   before insert on "KEYWORDS"
##   for each row
## begin
##   for c1 in (
##     select "KEYWORD_SEQ".nextval next_val
##     from dual
##   ) loop
##     :new."PKEY" :=  c1.next_val;
##   end loop;
## end;
## ')

dbSendUpdate(ch,'
ALTER TRIGGER  "bi_KEYWORDS" ENABLE
')

dbSendUpdate(ch,'
CREATE TABLE  "DATADSCR"
   (    "PKEY" NUMBER NOT NULL ENABLE,
        "LABL" VARCHAR2(255),
        "NOTES" VARCHAR2(255),
        "SPECPERMVAR" VARCHAR2(255),
        "FILEID" NUMBER,
         CONSTRAINT "DATADSCR_CON" PRIMARY KEY ("PKEY") ENABLE,
         CONSTRAINT "DATADSCR_FK_FILEDSCR" FOREIGN KEY ("FILEID")
          REFERENCES  "FILEDSCR" ("FILEID") ON DELETE CASCADE ENABLE
   )
')

## ## dbSendUpdate(ch,'
## CREATE OR REPLACE TRIGGER  "bi_DATADSCR"
##   before insert on "DATADSCR"
##   for each row
## begin
##   for c1 in (
##     select "DATADSCR_SEQ".nextval next_val
##     from dual
##   ) loop
##     :new."PKEY" :=  c1.next_val;
##   end loop;
## end;
## ')

dbSendUpdate(ch,'
ALTER TRIGGER  "bi_DATADSCR" ENABLE
')

dbSendUpdate(ch,'
CREATE TABLE  "ACCESSSTDY"
   (    "REQID" NUMBER(*,0),
        "IDNO" VARCHAR2(255),
        "REQUESTER" VARCHAR2(255),
        "OTHERMAT" VARCHAR2(255),
        "PROJECTTITLE" VARCHAR2(255),
        "PURPOSE" VARCHAR2(5),
        "REQUESTDATE" DATE,
        "DATAINGEST" VARCHAR2(5),
        "ETHICS" VARCHAR2(5),
        "REQUESTERUID" VARCHAR2(5),
        setpermissions CLOB,
         CONSTRAINT "ACCESSSTDY_PK" PRIMARY KEY ("REQID") ENABLE
   )
')

## dbSendUpdate(ch,'
## CREATE OR REPLACE TRIGGER  "bi_ACCESSSTDY"
##   before insert on "ACCESSSTDY"
##   for each row
## begin
##   for c1 in (
##     select "ACCESSSTDY_SEQ".nextval next_val
##     from dual
##   ) loop
##     :new."REQID" :=  c1.next_val;
##   end loop;
## end;
## ')

dbSendUpdate(ch,'
ALTER TRIGGER  "bi_ACCESSSTDY" ENABLE
')

dbSendUpdate(ch,'
CREATE TABLE  "ACCESSORS"
   (    "PKEY" NUMBER(*,0),
        "REQID" NUMBER(*,0),
        "ACCESSORNAMES" VARCHAR2(255),
        "LOCATION" VARCHAR2(255),
        "ACCESSSTARTDATE" VARCHAR2(255),
        "ACCESSENDDATE" VARCHAR2(255),
        "ACCESSREVOKED" VARCHAR2(5),
        "ARCHIVEMEDIA" VARCHAR2(5),
        "DESTROYDATE" VARCHAR2(5),
        "DESTROYED" VARCHAR2(5),
        "ACCESSORUID" VARCHAR2(5),
         CONSTRAINT "ACCESSORS_PK" PRIMARY KEY ("PKEY") ENABLE
   )
')

## dbSendUpdate(ch,'
## CREATE OR REPLACE TRIGGER  "bi_ACCESSORS"
##   before insert on "ACCESSORS"
##   for each row
## begin
##   for c1 in (
##     select "ACCESSORS_SEQ".nextval next_val
##     from dual
##   ) loop
##     :new."PKEY" :=  c1.next_val;
##   end loop;
## end;
## ')

dbSendUpdate(ch,'
ALTER TRIGGER  "bi_ACCESSORS" ENABLE
')


# some extra tweaks
dbSendUpdate(ch,'ALTER TABLE stdydscr ADD CHECKPRIORITY NUMBER')
dbSendUpdate(ch,'ALTER TABLE stdydscr ADD CHECKED NUMBER')

# for managing access from access requid to files form?
dbSendUpdate(ch,'ALTER TABLE filedscr ADD reqid NUMBER')

# NOW WE CAN QUERY WHICH FILES ARE RELATED TO EACH REQID
dbGetQuery(ch,'SELECT * FROM ACCESSSTDY JOIN filedscr ON ACCESSSTDY.REQID = filedscr.REQID
where requester like \'MICHAEL%\'')

 # add a indicator if intended to publish to ddiindex
dbSendUpdate(ch,'ALTER TABLE filedscr ADD publishddi NUMBER')

 # add a indicator if BACKUP WAS VERIFIED
dbSendUpdate(ch,'ALTER TABLE filedscr ADD BACKUPVALID VARCHAR2(255)')

 # add a indicator WHEN BACKUP WAS VERIFIED
dbSendUpdate(ch,'ALTER TABLE filedscr ADD DATEBACKUPVALID DATE')

dbSendUpdate(ch,'ALTER TABLE filedscr ADD CHECKED number')

dbSendUpdate(ch,'ALTER TABLE filedscr ADD BACKUPLOCATION VARCHAR2(4000)')


 # add a date for filedscr modified
dbSendUpdate(ch,'ALTER TABLE filedscr ADD proddatedocfile date')
dbSendUpdate(ch,'ALTER TABLE filedscr ADD producerdocfile VARCHAR2(255)')

# OR would it be good for multiple access files to have a link key to files from the access page?
dbSendUpdate(ch,'ALTER TABLE ACCESSSTDY ADD FILEID NUMBER')

dbSendUpdate(ch,'ALTER TABLE ACCESSSTDY ADD ACCESSSTARTDATE date')
dbSendUpdate(ch,'ALTER TABLE ACCESSSTDY ADD ACCESSENDDATE date')
# ?
# add whether need a service level aggreement
dbSendUpdate(ch,'ALTER TABLE ACCESSSTDY ADD sla VARCHAR2(255)')

# CHANGE SOME DATATYPES STUFFED UP IN THE BASICS BIT
dbSendUpdate(ch,'alter table
   filedscr
modify
    datearchived date')

dbSendUpdate(ch,'alter table
   filedscr
modify
    datedestroy varchar2(255)')


dbSendUpdate(ch,'alter table
   stdydscr
modify
    specperm varchar2(4000)')


## for(the_thing in c('accessstartdate', 'accessenddate', 'destroydate')){

##  # sqlQuery(ch,
##  cat(
##  paste('alter table
##    accessors
## modify
##     ',the_thing,' date;\n',sep='')
##         )

## }

dbSendUpdate(ch,'alter table
   accessors
modify
    accessstartdate date')

dbSendUpdate(ch,'alter table
   accessors
modify
    accessenddate date')

dbSendUpdate(ch,'alter table
   accessors
modify
    destroydate date')


dbSendUpdate(ch,'alter table
   accessstdy
modify
    purpose varchar2(4000)')

dbSendUpdate(ch,'alter table
   accessstdy
modify
    REQUESTDATE DATE')


dbSendUpdate(ch,'alter table
   accessstdy
modify
    REQUESTERUID varchar2(255)')

dbSendUpdate(ch,'alter table
   accessstdy
modify
    ETHICS varchar2(255)')

dbSendUpdate(ch,'alter table
   accessstdy
modify
    DATAINGEST varchar2(255)')

# dbSendUpdate(ch,'alter table
# accessstdy
# add
# setpermissions CLOB')
 # update query failed in dbSendUpdate (ORA-01430: column being added already exists in table
dbSendUpdate(ch,'alter table
   accessors
modify
    ACCESSORUID varchar2(255)')

dbSendUpdate(ch,'alter table
accessors
add
OTHERMAT varchar2(255)')

dbSendUpdate(ch,'alter table
accessors
add
APPROVAL CLOB')

dbSendUpdate(ch,'ALTER TABLE filedscr ADD DESTROYED NUMBER')
dbSendUpdate(ch,'UPDATE filedscr SET DESTROYED = 0')


# may be needed if old table not created with CLOB.
dbSendUpdate(ch,'alter table
stdydscr
add
BIBLCITSTDY2 CLOB')

dbSendUpdate(ch,'alter table STDYDSCR drop column BIBLCITSTDY')
dbSendUpdate(ch,'alter table STDYDSCR rename column BIBLCITSTDY2 to BIBLCITSTDY')

################
# NEW TABLE = OTHERMAT
dbSendUpdate(ch,'CREATE SEQUENCE   "OTHRSTDYMAT_SEQ"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE')

dbSendUpdate(ch,'
CREATE TABLE  "OTHRSTDYMAT"
   ("IDNO" VARCHAR2(255),
   "OTHRSTDYMATID" NUMBER(*,0),
        "RELSTDYIDNO" VARCHAR2(255),
        "RELPUBL" CLOB,
        "NOTES" CLOB,
         CONSTRAINT "OTHRSTDYMAT_CON" PRIMARY KEY ("OTHRSTDYMATID") ENABLE,
         CONSTRAINT "OTHRSTDYMAT_FK_STDYDSCR" FOREIGN KEY ("IDNO")
          REFERENCES  "STDYDSCR" ("IDNO") ON DELETE CASCADE ENABLE
   )
')

## dbSendUpdate(ch,'
## CREATE OR REPLACE TRIGGER  "bi_OTHRSTDYMAT"
##   before insert on "OTHRSTDYMAT"
##   for each row
## begin
##   for c1 in (
##     select "OTHRSTDYMAT_SEQ".nextval next_val
##     from dual
##   ) loop
##     :new."OTHRSTDYMATID" :=  c1.next_val;
##   end loop;
## end;
## ')

dbSendUpdate(ch,'
ALTER TRIGGER  "bi_OTHRSTDYMAT" ENABLE
')

# SET UP THE FORMS
# now can query like
dbGetQuery(ch,
'select t1.titl, t2.*
from stdyDscr t1
join othrstdymat t2
on t1.idno=t2.idno
where t1.idno=\'AMD\'
')

dbSendUpdate(ch,'ALTER TABLE stdydscr ADD fieldsofresearch varchar2(255)')
