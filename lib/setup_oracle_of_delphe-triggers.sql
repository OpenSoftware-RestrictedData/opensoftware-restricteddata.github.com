CREATE OR REPLACE TRIGGER  "bi_STDYDSCR"
  before insert on "STDYDSCR"
  for each row
begin
  for c1 in (
    select "STDYDSCR_SEQ".nextval next_val
    from dual
  ) loop
    :new."PKEY" :=  c1.next_val;
  end loop;
end;

CREATE OR REPLACE TRIGGER  "bi_FILEDSCR"
  before insert on "FILEDSCR"
  for each row
begin
  for c1 in (
    select "FILEDSCR_SEQ".nextval next_val
    from dual
  ) loop
    :new."FILEID" :=  c1.next_val;
  end loop;
end;

CREATE OR REPLACE TRIGGER  "bi_DATADSCR"
  before insert on "DATADSCR"
  for each row
begin
  for c1 in (
    select "DATADSCR_SEQ".nextval next_val
    from dual
  ) loop
    :new."PKEY" :=  c1.next_val;
  end loop;
end;

CREATE OR REPLACE TRIGGER  "bi_KEYWORDS"
  before insert on "KEYWORDS"
  for each row
begin
  for c1 in (
    select "KEYWORD_SEQ".nextval next_val
    from dual
  ) loop
    :new."PKEY" :=  c1.next_val;
  end loop;
end;

CREATE OR REPLACE TRIGGER  "bi_ACCESSSTDY"
  before insert on "ACCESSSTDY"
  for each row
begin
  for c1 in (
    select "ACCESSSTDY_SEQ".nextval next_val
    from dual
  ) loop
    :new."REQID" :=  c1.next_val;
  end loop;
end;

CREATE OR REPLACE TRIGGER  "bi_ACCESSORS"
  before insert on "ACCESSORS"
  for each row
begin
  for c1 in (
    select "ACCESSORS_SEQ".nextval next_val
    from dual
  ) loop
    :new."PKEY" :=  c1.next_val;
  end loop;
end;

CREATE OR REPLACE TRIGGER  "bi_OTHRSTDYMAT"
  before insert on "OTHRSTDYMAT"
  for each row
begin
  for c1 in (
    select "OTHRSTDYMAT_SEQ".nextval next_val
    from dual
  ) loop
    :new."OTHRSTDYMATID" :=  c1.next_val;
  end loop;
end;

