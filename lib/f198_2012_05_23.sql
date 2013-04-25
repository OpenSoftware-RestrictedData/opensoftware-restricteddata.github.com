 
--------------------------------------------------------------------
prompt  APPLICATION 198 - FilesAndAccessors
--
-- Application Export:
--   Application:     198
--   Name:            FilesAndAccessors
--   Date and Time:   21:23 Thursday May 24, 2012
--   Exported By:     IVAN
--   Flashback:       0
--   Version: 2.1.0.00.39
 
-- Import:
--   Using application application builder
--   or
--   Using sqlplus as the Oracle user: FLOWS_020100
 
-- Application Statistics:
--   Pages:                 5
--     Items:              11
--     Computations:        0
--     Validations:         0
--     Processes:           7
--     Regions:             7
--     Buttons:             3
--   Shared Components
--     Breadcrumbs:         1
--        Entries           2
--     Items:               1
--     Computations:        0
--     Processes:           0
--     Parent Tabs:         0
--     Tab Sets:            1
--        Tabs:             1
--     NavBars:             1
--     Lists:               1
--     Shortcuts:           0
--     Themes:              1
--     Templates:
--        Page:             9
--        List:            14
--        Report:           7
--        Label:            5
--        Region:          21
--     Messages:            0
--     Build Options:       0
 
 
set define off
set verify off
set serveroutput on size 1000000
set feedback off
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
begin wwv_flow.g_import_in_progress := true; end; 
/
 
prompt  Set Credentials...
 
begin
 
  -- Assumes you are running the script connected to sqlplus as the owner (parsing schema) of the application or as the product schema.
  wwv_flow_api.set_security_group_id(p_security_group_id=>716207056707840);
 
end;
/

begin wwv_flow.g_import_in_progress := true; end;
/
begin 

select value into wwv_flow_api.g_nls_numeric_chars from nls_session_parameters where parameter='NLS_NUMERIC_CHARACTERS';

end;

/
begin execute immediate 'alter session set nls_numeric_characters=''.,''';

end;

/
begin wwv_flow.g_browser_language := 'en-gb'; end;
/
prompt  Check Compatibility...
 
begin
 
-- This date identifies the minimum version required to import this file.
wwv_flow_api.set_version(p_version_yyyy_mm_dd=>'2005.05.01');
 
end;
/

prompt  Set Application ID...
 
begin
 
   -- SET APPLICATION ID
   wwv_flow.g_flow_id := 198;
   wwv_flow_api.g_id_offset := 0;
null;
 
end;
/

 
begin
 
   -- Remove Application
wwv_flow_api.remove_flow(198);
 
end;
/

 
begin
 
wwv_flow_audit.remove_audit_trail(198);
null;
 
end;
/

 
begin
 
wwv_flow_api.create_flow(
  p_id    => 198,
  p_display_id=> 198,
  p_owner => 'IVAN',
  p_name  => 'FilesAndAccessors',
  p_alias => 'F198',
  p_page_view_logging => 'YES',
  p_default_page_template=> 2054510426849500 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=> 2053905945849492 + wwv_flow_api.g_id_offset,
  p_default_region_template=> 2056521297849529 + wwv_flow_api.g_id_offset,
  p_error_template    => 2054510426849500 + wwv_flow_api.g_id_offset,
  p_checksum_salt_last_reset => '20120524211800',
  p_home_link         => 'f?p=&APP_ID.:1:&SESSION.',
  p_box_width         => '98%',
  p_flow_language     => 'en-gb',
  p_flow_language_derived_from=> 'FLOW_PRIMARY_LANGUAGE',
  p_flow_image_prefix => '/i/',
  p_documentation_banner=> '',
  p_authentication    => 'CUSTOM2',
  p_login_url         => '',
  p_logout_url        => 'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&p_next_flow_page_sess=&APP_ID.:1',
  p_public_url_prefix => '',
  p_public_user       => '',
  p_dbauth_url_prefix => '',
  p_proxy_server      => '',
  p_cust_authentication_process=> '.'||to_char(2061107584849590 + wwv_flow_api.g_id_offset)||'.',
  p_cust_authentication_page=> '',
  p_custom_auth_login_url=> '',
  p_flow_version      => 'release 1.0',
  p_flow_status       => 'AVAILABLE_W_EDIT_LINK',
  p_flow_unavailable_text=> '',
  p_build_status      => 'RUN_AND_BUILD',
  p_exact_substitutions_only=> 'Y',
  p_vpd               => '',
  p_theme_id => 2,
  p_default_label_template => 2059508447849557 + wwv_flow_api.g_id_offset,
  p_default_report_template => 2058727814849537 + wwv_flow_api.g_id_offset,
  p_default_list_template => 2057932544849537 + wwv_flow_api.g_id_offset,
  p_default_menu_template => 2059910997849557 + wwv_flow_api.g_id_offset,
  p_default_button_template => 2055001144849518 + wwv_flow_api.g_id_offset,
  p_default_chart_template => 2055728066849525 + wwv_flow_api.g_id_offset,
  p_default_form_template => 2055824024849525 + wwv_flow_api.g_id_offset,
  p_default_wizard_template => 2055619683849525 + wwv_flow_api.g_id_offset,
  p_default_tabform_template => 2056521297849529 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>2056521297849529 + wwv_flow_api.g_id_offset,
  p_default_menur_template => 2055524673849525 + wwv_flow_api.g_id_offset,
  p_default_listr_template => 2056521297849529 + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20120524211800',
  p_required_roles             => wwv_flow_utilities.string_to_table2(''));
 
 
end;
/

---------------------------------------
prompt  ...AUTHORIZATION SCHEMES
--
 
begin
 
null;
 
end;
/

--
prompt  ...Navigation Bar Entries
--
 
begin
 
wwv_flow_api.create_icon_bar_item(
  p_id             => 2061217279849590 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_icon_sequence  => 200,
  p_icon_image     => '',
  p_icon_subtext   => 'Logout',
  p_icon_target    => '&LOGOUT_URL.',
  p_icon_image_alt => 'Logout',
  p_icon_height    => 32,
  p_icon_width     => 32,
  p_icon_height2   => 24,
  p_icon_width2    => 24,
  p_icon_bar_disp_cond      => '',
  p_icon_bar_disp_cond_type => 'CURRENT_LOOK_IS_1',
  p_begins_on_new_line=> '',
  p_cell_colspan      => 1,
  p_onclick=> '',
  p_icon_bar_comment=> '');
 
 
end;
/

---------------------------------------
prompt  ...Application Level Processes
--
---------------------------------------
prompt  ...Application Level Items
--
 
begin
 
wwv_flow_api.create_flow_item(
  p_id=> 2072806634886371 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'FSP_AFTER_LOGIN_URL',
  p_data_type=> 'VARCHAR',
  p_is_persistent=> 'Y',
  p_protection_level=> '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_item_comment=> 'Used by Custom2 authentication for deep linking support');
 
null;
 
end;
/

---------------------------------------
prompt  ...Application Level Computations
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...Application Tabs
--
 
begin
 
wwv_flow_api.create_tab (
  p_id=> 2062620154849632 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 10,
  p_tab_name=> 'T_FILES',
  p_tab_text => 'Files',
  p_tab_step => 1,
  p_tab_also_current_for_pages => '2',
  p_tab_parent_tabset=>'',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
 
end;
/

---------------------------------------
prompt  ...Application Parent Tabs
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...Application Level Lists of Values
--
---------------------------------------
prompt  ...Application Trees
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...Application Level Lists of Values Entries
--
---------------------------------------
prompt  ...Page Groups
--
 
begin
 
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 1: Files
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 1,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'Files',
  p_step_title=> 'Files',
  p_step_sub_title => 'Files',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20120216112025',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>1,p_text=>h);
end;
 
end;
/

declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 2063108017849657 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Breadcrumbs',
  p_plug_template=> 2055524673849525+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'REGION_POSITION_01',
  p_plug_source  => s,
  p_plug_source_type=> 'M'|| to_char(2062324068849618 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 2059910997849557+ wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> 'Unable to show breadcrumb.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'SELECT '||chr(10)||
'   "FILEDSCR"."REQID" "REQID", '||chr(10)||
'   "FILEDSCR"."IDNO" "IDNO", '||chr(10)||
'   "FILEDSCR"."FILENAME" "FILENAME", '||chr(10)||
'   "FILEDSCR"."FILELOCATION" "FILELOCATION", '||chr(10)||
'   "FILEDSCR"."NOTES" "NOTES", '||chr(10)||
'   "ACCESSSTDY"."REQID" "REQID2", '||chr(10)||
'   "ACCESSSTDY"."REQUESTER" "REQUESTER", '||chr(10)||
'   "ACCESSSTDY"."OTHERMAT" "OTHERMAT", '||chr(10)||
'   "ACCESSSTDY"."ETHICS" "ETHICS", '||chr(10)||
'   "ACCESSSTDY"."ACCESSSTARTDATE" "ACCESSSTARTDATE", '||chr(10)||
'   "ACC';

s:=s||'ESSSTDY"."ACCESSENDDATE" "ACCESSENDDATE"'||chr(10)||
'FROM '||chr(10)||
'   "#OWNER#"."FILEDSCR" "FILEDSCR", '||chr(10)||
'   "#OWNER#"."ACCESSSTDY" "ACCESSSTDY"'||chr(10)||
'WHERE "FILEDSCR"."REQID" = "ACCESSSTDY"."REQID"'||chr(10)||
'   and (("FILEDSCR"."FILELOCATION" like ''%''||upper(:P1_FILELOCATION)||''%'' and "FILEDSCR"."DESTROYED" =0)'||chr(10)||
'    or ("FILEDSCR"."FILELOCATION" like ''%''||lower(:P1_FILELOCATION)||''%'' and "FILEDSCR"."DESTROYED" =0)'||chr(10)||
'    or ("FILEDSCR"."';

s:=s||'FILELOCATION" like ''%''||:P1_FILELOCATION||''%'' and "FILEDSCR"."DESTROYED" =0))'||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 2067503864885570 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_name=> 'Files',
  p_template=> 2056521297849529+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'STRUCTURED_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_customized                   => '0',
  p_translate_title              => 'Y',
  p_query_row_template           => 2058727814849537+ wwv_flow_api.g_id_offset,
  p_query_headings_type          => 'COLON_DELMITED_LIST',
  p_query_num_rows               => '15',
  p_query_break_cols             => '0',
  p_query_num_rows_type          => 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max          => '500',
  p_pagination_display_position  => 'BOTTOM_RIGHT',
  p_csv_output                   => 'N',
  p_query_asc_image              => 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr         => 'width="13" height="12"',
  p_query_desc_image             => 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr        => 'width="13" height="12"',
  p_plug_query_strip_html        => 'Y',
  p_required_patch               => '' + wwv_flow_api.g_id_offset,
  p_comment                      => '');
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2231205544753868 + wwv_flow_api.g_id_offset,
  p_region_id=> 2067503864885570 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'REQID',
  p_column_display_sequence=> 9,
  p_column_heading=> 'Reqid',
  p_column_alignment=> 'RIGHT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'Y',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2231419403753868 + wwv_flow_api.g_id_offset,
  p_region_id=> 2067503864885570 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'IDNO',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Idno',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2231603365753868 + wwv_flow_api.g_id_offset,
  p_region_id=> 2067503864885570 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'FILENAME',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Filename',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2231815958753868 + wwv_flow_api.g_id_offset,
  p_region_id=> 2067503864885570 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'FILELOCATION',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Filelocation',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2232000115753868 + wwv_flow_api.g_id_offset,
  p_region_id=> 2067503864885570 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'NOTES',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Notes',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2232324365753870 + wwv_flow_api.g_id_offset,
  p_region_id=> 2067503864885570 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'REQID2',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Reqid',
  p_column_link=> 'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::P2_REQID:#REQID#',
  p_column_linktext=> '#REQID#',
  p_column_alignment=> 'RIGHT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2232520968753870 + wwv_flow_api.g_id_offset,
  p_region_id=> 2067503864885570 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'REQUESTER',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Requester',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2232727096753870 + wwv_flow_api.g_id_offset,
  p_region_id=> 2067503864885570 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'OTHERMAT',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Othermat',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2232916512753870 + wwv_flow_api.g_id_offset,
  p_region_id=> 2067503864885570 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 9,
  p_form_element_id=> null,
  p_column_alias=> 'ETHICS',
  p_column_display_sequence=> 8,
  p_column_heading=> 'Ethics',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2233132735753870 + wwv_flow_api.g_id_offset,
  p_region_id=> 2067503864885570 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 10,
  p_form_element_id=> null,
  p_column_alias=> 'ACCESSSTARTDATE',
  p_column_display_sequence=> 10,
  p_column_heading=> 'Accessstartdate',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2233314759753870 + wwv_flow_api.g_id_offset,
  p_region_id=> 2067503864885570 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 11,
  p_form_element_id=> null,
  p_column_alias=> 'ACCESSENDDATE',
  p_column_display_sequence=> 11,
  p_column_heading=> 'Accessenddate',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
begin
wwv_flow_api.create_query_definition (
  p_id=> 2067727855885576 + wwv_flow_api.g_id_offset,
  p_region_id=> 2067503864885570 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_reference_id=> null);
end;
begin
wwv_flow_api.create_query_object (
  p_id                       => 2231000285753868 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_object_owner             => '#OWNER#',
  p_object_name              => 'FILEDSCR',
  p_object_alias             => 'FILEDSCR');
end;
begin
wwv_flow_api.create_query_object (
  p_id                       => 2232131874753870 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_object_owner             => '#OWNER#',
  p_object_name              => 'ACCESSSTDY',
  p_object_alias             => 'ACCESSSTDY');
end;
begin
wwv_flow_api.create_query_column (
  p_id                       => 2231126278753868 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_query_object_id          => 2231000285753868 + wwv_flow_api.g_id_offset,
  p_column_number            => 1,
  p_column_alias             => 'REQID',
  p_column_sql_expression    => 'REQID',
  p_column_group_by_sequence => '');
end;
begin
wwv_flow_api.create_query_column (
  p_id                       => 2231301513753868 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_query_object_id          => 2231000285753868 + wwv_flow_api.g_id_offset,
  p_column_number            => 2,
  p_column_alias             => 'IDNO',
  p_column_sql_expression    => 'IDNO',
  p_column_group_by_sequence => '');
end;
begin
wwv_flow_api.create_query_column (
  p_id                       => 2231516925753868 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_query_object_id          => 2231000285753868 + wwv_flow_api.g_id_offset,
  p_column_number            => 3,
  p_column_alias             => 'FILENAME',
  p_column_sql_expression    => 'FILENAME',
  p_column_group_by_sequence => '');
end;
begin
wwv_flow_api.create_query_column (
  p_id                       => 2231726609753868 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_query_object_id          => 2231000285753868 + wwv_flow_api.g_id_offset,
  p_column_number            => 4,
  p_column_alias             => 'FILELOCATION',
  p_column_sql_expression    => 'FILELOCATION',
  p_column_group_by_sequence => '');
end;
begin
wwv_flow_api.create_query_column (
  p_id                       => 2231902587753868 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_query_object_id          => 2231000285753868 + wwv_flow_api.g_id_offset,
  p_column_number            => 5,
  p_column_alias             => 'NOTES',
  p_column_sql_expression    => 'NOTES',
  p_column_group_by_sequence => '');
end;
begin
wwv_flow_api.create_query_column (
  p_id                       => 2232220318753870 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_query_object_id          => 2232131874753870 + wwv_flow_api.g_id_offset,
  p_column_number            => 6,
  p_column_alias             => 'REQID2',
  p_column_sql_expression    => 'REQID',
  p_column_group_by_sequence => '');
end;
begin
wwv_flow_api.create_query_column (
  p_id                       => 2232412561753870 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_query_object_id          => 2232131874753870 + wwv_flow_api.g_id_offset,
  p_column_number            => 7,
  p_column_alias             => 'REQUESTER',
  p_column_sql_expression    => 'REQUESTER',
  p_column_group_by_sequence => '');
end;
begin
wwv_flow_api.create_query_column (
  p_id                       => 2232612593753870 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_query_object_id          => 2232131874753870 + wwv_flow_api.g_id_offset,
  p_column_number            => 8,
  p_column_alias             => 'OTHERMAT',
  p_column_sql_expression    => 'OTHERMAT',
  p_column_group_by_sequence => '');
end;
begin
wwv_flow_api.create_query_column (
  p_id                       => 2232829071753870 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_query_object_id          => 2232131874753870 + wwv_flow_api.g_id_offset,
  p_column_number            => 9,
  p_column_alias             => 'ETHICS',
  p_column_sql_expression    => 'ETHICS',
  p_column_group_by_sequence => '');
end;
begin
wwv_flow_api.create_query_column (
  p_id                       => 2233031584753870 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_query_object_id          => 2232131874753870 + wwv_flow_api.g_id_offset,
  p_column_number            => 10,
  p_column_alias             => 'ACCESSSTARTDATE',
  p_column_sql_expression    => 'ACCESSSTARTDATE',
  p_column_group_by_sequence => '');
end;
begin
wwv_flow_api.create_query_column (
  p_id                       => 2233201611753870 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_query_object_id          => 2232131874753870 + wwv_flow_api.g_id_offset,
  p_column_number            => 11,
  p_column_alias             => 'ACCESSENDDATE',
  p_column_sql_expression    => 'ACCESSENDDATE',
  p_column_group_by_sequence => '');
end;
begin
wwv_flow_api.create_query_condition (
  p_id                       => 2233427043753870 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_condition                => '"FILEDSCR"."REQID" = "ACCESSSTDY"."REQID"',
  p_cond_column              => '',
  p_cond_root                => '',
  p_operator                 => 'JOIN');
end;
begin
wwv_flow_api.create_query_condition (
  p_id                       => 3301313597580728 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_condition                => 'like ''%''||upper(:P1_FILELOCATION)||''%''',
  p_cond_column              => 'FILEDSCR.FILELOCATION',
  p_cond_root                => '',
  p_operator                 => 'NONE');
end;
begin
wwv_flow_api.create_query_condition (
  p_id                       => 3301423125580728 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_condition                => '=0',
  p_cond_column              => 'FILEDSCR.DESTROYED',
  p_cond_root                => '',
  p_operator                 => 'NONE');
end;
begin
wwv_flow_api.create_query_condition (
  p_id                       => 3301519283580728 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_condition                => '',
  p_cond_column              => '',
  p_cond_id1                 => 3301313597580728 + wwv_flow_api.g_id_offset,
  p_cond_id2                 => 3301423125580728 + wwv_flow_api.g_id_offset,
  p_cond_root                => '',
  p_operator                 => 'AND');
end;
begin
wwv_flow_api.create_query_condition (
  p_id                       => 3301623235580728 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_condition                => 'like ''%''||lower(:P1_FILELOCATION)||''%''',
  p_cond_column              => 'FILEDSCR.FILELOCATION',
  p_cond_root                => '',
  p_operator                 => 'NONE');
end;
begin
wwv_flow_api.create_query_condition (
  p_id                       => 3301703926580728 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_condition                => '=0',
  p_cond_column              => 'FILEDSCR.DESTROYED',
  p_cond_root                => '',
  p_operator                 => 'NONE');
end;
begin
wwv_flow_api.create_query_condition (
  p_id                       => 3301821574580728 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_condition                => '',
  p_cond_column              => '',
  p_cond_id1                 => 3301623235580728 + wwv_flow_api.g_id_offset,
  p_cond_id2                 => 3301703926580728 + wwv_flow_api.g_id_offset,
  p_cond_root                => '',
  p_operator                 => 'AND');
end;
begin
wwv_flow_api.create_query_condition (
  p_id                       => 3301928121580728 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_condition                => 'like ''%''||:P1_FILELOCATION||''%''',
  p_cond_column              => 'FILEDSCR.FILELOCATION',
  p_cond_root                => '',
  p_operator                 => 'NONE');
end;
begin
wwv_flow_api.create_query_condition (
  p_id                       => 3302014573580728 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_condition                => '=0',
  p_cond_column              => 'FILEDSCR.DESTROYED',
  p_cond_root                => '',
  p_operator                 => 'NONE');
end;
begin
wwv_flow_api.create_query_condition (
  p_id                       => 3302117955580728 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_condition                => '',
  p_cond_column              => '',
  p_cond_id1                 => 3301928121580728 + wwv_flow_api.g_id_offset,
  p_cond_id2                 => 3302014573580728 + wwv_flow_api.g_id_offset,
  p_cond_root                => '',
  p_operator                 => 'AND');
end;
begin
wwv_flow_api.create_query_condition (
  p_id                       => 3302204032580728 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_condition                => '',
  p_cond_column              => '',
  p_cond_id1                 => 3301519283580728 + wwv_flow_api.g_id_offset,
  p_cond_id2                 => 3301821574580728 + wwv_flow_api.g_id_offset,
  p_cond_root                => '',
  p_operator                 => 'OR');
end;
begin
wwv_flow_api.create_query_condition (
  p_id                       => 3302315709580728 + wwv_flow_api.g_id_offset,
  p_query_id                 => 2067727855885576 + wwv_flow_api.g_id_offset,
  p_condition                => '',
  p_cond_column              => '',
  p_cond_id1                 => 3302204032580728 + wwv_flow_api.g_id_offset,
  p_cond_id2                 => 3302117955580728 + wwv_flow_api.g_id_offset,
  p_cond_root                => 'Y',
  p_operator                 => 'OR');
end;
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>2096917781069365 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_branch_action=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 10,
  p_branch_comment=> 'Created 09-AUG-2010 23:02 by IVAN');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2075530707931234 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_FILELOCATION',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 2067503864885570+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Filelocation',
  p_source_type=> 'STATIC',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 180,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2059508447849557+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 1
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 2: Accessors
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 2,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'Accessors',
  p_step_title=> 'Accessors',
  p_step_sub_title => 'Accessors',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20120524211800',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>2,p_text=>h);
end;
 
end;
/

declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 2063514441849659 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> 'Breadcrumbs',
  p_plug_template=> 2055524673849525+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'REGION_POSITION_01',
  p_plug_source  => s,
  p_plug_source_type=> 'M'|| to_char(2062324068849618 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 2059910997849557+ wwv_flow_api.g_id_offset,
  p_plug_display_error_message=> 'Unable to show breadcrumb.',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select	 "ACCESSSTDY"."REQID" as "REQID",'||chr(10)||
'	 "ACCESSSTDY"."REQUESTER" as "REQUESTER",'||chr(10)||
'	 "ACCESSORS"."ACCESSORNAMES" as "ACCESSORNAMES",'||chr(10)||
'	 "ACCESSORS"."ACCESSSTARTDATE" as "ACCESSSTARTDATE",'||chr(10)||
'	 "ACCESSORS"."ACCESSENDDATE" as "ACCESSENDDATE",'||chr(10)||
'	 "ACCESSORS"."ACCESSREVOKED" as "ACCESSREVOKED",'||chr(10)||
'	 "ACCESSORS"."LOCATION" as "LOCATION",'||chr(10)||
'	 "ACCESSORS"."OTHERMAT" as "OTHERMATERIAL",'||chr(10)||
'	 "ACCESSORS"."APPR';

s:=s||'OVAL" as "APPROVAL"  '||chr(10)||
' from	 "ACCESSORS" "ACCESSORS",'||chr(10)||
'	 "ACCESSSTDY" "ACCESSSTDY" '||chr(10)||
' where   "ACCESSSTDY"."REQID"="ACCESSORS"."REQID"'||chr(10)||
'and "ACCESSSTDY"."REQID"=:P2_REQID';

wwv_flow_api.create_report_region (
  p_id=> 2110802432206867 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_name=> 'Report 1',
  p_template=> 2056521297849529+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_customized                   => '0',
  p_translate_title              => 'Y',
  p_query_row_template           => 2058727814849537+ wwv_flow_api.g_id_offset,
  p_query_headings_type          => 'QUERY_COLUMNS',
  p_query_num_rows               => '15',
  p_query_options                => 'DERIVED_REPORT_COLUMNS',
  p_query_no_data_found          => 'No data found.',
  p_query_num_rows_type          => 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max          => '500',
  p_query_asc_image              => 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr         => 'width="13" height="12"',
  p_query_desc_image             => 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr        => 'width="13" height="12"',
  p_required_patch               => '' + wwv_flow_api.g_id_offset,
  p_comment                      => '');
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2111123066206873 + wwv_flow_api.g_id_offset,
  p_region_id=> 2110802432206867 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'REQID',
  p_column_display_sequence=> 1,
  p_column_heading=> 'REQID',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2111229411206873 + wwv_flow_api.g_id_offset,
  p_region_id=> 2110802432206867 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'REQUESTER',
  p_column_display_sequence=> 2,
  p_column_heading=> 'REQUESTER',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2111309477206873 + wwv_flow_api.g_id_offset,
  p_region_id=> 2110802432206867 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'ACCESSORNAMES',
  p_column_display_sequence=> 3,
  p_column_heading=> 'ACCESSORNAMES',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2111404899206873 + wwv_flow_api.g_id_offset,
  p_region_id=> 2110802432206867 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'ACCESSSTARTDATE',
  p_column_display_sequence=> 4,
  p_column_heading=> 'ACCESSSTARTDATE',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2111527300206873 + wwv_flow_api.g_id_offset,
  p_region_id=> 2110802432206867 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'ACCESSENDDATE',
  p_column_display_sequence=> 5,
  p_column_heading=> 'ACCESSENDDATE',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 3450323411084598 + wwv_flow_api.g_id_offset,
  p_region_id=> 2110802432206867 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'ACCESSREVOKED',
  p_column_display_sequence=> 9,
  p_column_heading=> 'Accessrevoked',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2111608728206873 + wwv_flow_api.g_id_offset,
  p_region_id=> 2110802432206867 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'LOCATION',
  p_column_display_sequence=> 6,
  p_column_heading=> 'LOCATION',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 3215723826202275 + wwv_flow_api.g_id_offset,
  p_region_id=> 2110802432206867 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'OTHERMATERIAL',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Othermaterial',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 3216302486205550 + wwv_flow_api.g_id_offset,
  p_region_id=> 2110802432206867 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 9,
  p_form_element_id=> null,
  p_column_alias=> 'APPROVAL',
  p_column_display_sequence=> 8,
  p_column_heading=> 'Approval',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_column_comment               => '');
end;
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2115624164232084 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_REQID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 2110802432206867+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'STATIC',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 2
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 4: files2
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h := null;
ph := null;
wwv_flow_api.create_page(
  p_id     => 4,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'files2',
  p_step_title=> 'files2',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'NO_FIRST_ITEM',
  p_help_text => '',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20100809225354',
  p_page_comment  => '');
 
end;
 
end;
/

declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 2086327384015387 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_plug_name=> 'Filedscr',
  p_plug_template=> 2055824024849525+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 10,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'AFTER_SHOW_ITEMS',
  p_plug_source  => s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_display_error_message=> '#SQLERRM#',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 2086622986015390 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 4,
  p_button_sequence=> 10,
  p_button_plug_id => 2086327384015387+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(2055001144849518+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2086510072015389 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 4,
  p_button_sequence=> 40,
  p_button_plug_id => 2086327384015387+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2055001144849518+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P4_FILEID',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>2086912288015392 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_branch_action=> 'f?p=&APP_ID.:5:&SESSION.&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 1,
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2087122006015392 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_FILEID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 2086327384015387+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Fileid',
  p_source=>'FILEID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2059508447849557+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2087303289015396 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_IDNO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 2,
  p_item_plug_id => 2086327384015387+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Idno',
  p_source=>'IDNO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2059508447849557+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2087530262015396 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_FILENAME',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 3,
  p_item_plug_id => 2086327384015387+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Filename',
  p_source=>'FILENAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2059508447849557+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2087731777015396 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_FILELOCATION',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 2086327384015387+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Filelocation',
  p_source=>'FILELOCATION',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 32,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2059508447849557+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2087906958015396 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 4,
  p_name=>'P4_REQID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 12,
  p_item_plug_id => 2086327384015387+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Reqid',
  p_source=>'REQID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 22,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2059508447849557+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:FILEDSCR:P4_FILEID:FILEID';

wwv_flow_api.create_page_process(
  p_id     => 2088111059015400 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 4,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from FILEDSCR',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to fetch row.',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'#OWNER#:FILEDSCR:P4_FILEID:FILEID|I';

wwv_flow_api.create_page_process(
  p_id     => 2088312730015400 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 4,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of FILEDSCR',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process row of table FILEDSCR.',
  p_process_success_message=> 'Action Processed.',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'4';

wwv_flow_api.create_page_process(
  p_id     => 2088527365015400 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 4,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 4
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 5: Report on FILEDSCR
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 5,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'Report on FILEDSCR',
  p_step_title=> 'Report on FILEDSCR',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20100809230216',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>5,p_text=>h);
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select "FILEID", '||chr(10)||
'"IDNO",'||chr(10)||
'"FILENAME",'||chr(10)||
'"FILELOCATION",'||chr(10)||
'"REQID"'||chr(10)||
'from "#OWNER#"."FILEDSCR" '||chr(10)||
'where "FILELOCATION" like ''%''||(:P5_filelocation)||''%'''||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 2089206036015406 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_name=> 'Filedscr',
  p_template=> 2056521297849529+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_customized                   => '0',
  p_translate_title              => 'Y',
  p_query_row_template           => 2058727814849537+ wwv_flow_api.g_id_offset,
  p_query_headings_type          => 'COLON_DELMITED_LIST',
  p_query_num_rows               => '15',
  p_query_options                => 'DERIVED_REPORT_COLUMNS',
  p_query_break_cols             => '0',
  p_query_no_data_found          => 'no data found',
  p_query_num_rows_type          => 'ROW_RANGES_IN_SELECT_LIST',
  p_query_row_count_max          => '500',
  p_pagination_display_position  => 'BOTTOM_RIGHT',
  p_csv_output                   => 'N',
  p_query_asc_image              => 'arrow_down_gray_dark.gif',
  p_query_asc_image_attr         => 'width="13" height="12"',
  p_query_desc_image             => 'arrow_up_gray_dark.gif',
  p_query_desc_image_attr        => 'width="13" height="12"',
  p_plug_query_strip_html        => 'Y',
  p_required_patch               => '' + wwv_flow_api.g_id_offset,
  p_comment                      => '');
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2089521105015420 + wwv_flow_api.g_id_offset,
  p_region_id=> 2089206036015406 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'FILEID',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Edit',
  p_column_link=> 'f?p=#APP_ID#:4:#APP_SESSION#::::P4_FILEID:#FILEID#',
  p_column_linktext=> '<img src="#IMAGE_PREFIX#edit_big.gif"  border="0">',
  p_column_alignment=> 'RIGHT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'FILEDSCR',
  p_ref_column_name=> 'FILEID',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2089614432015420 + wwv_flow_api.g_id_offset,
  p_region_id=> 2089206036015406 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'IDNO',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Idno',
  p_column_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'FILEDSCR',
  p_ref_column_name=> 'IDNO',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2089725786015420 + wwv_flow_api.g_id_offset,
  p_region_id=> 2089206036015406 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'FILENAME',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Filename',
  p_column_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'FILEDSCR',
  p_ref_column_name=> 'FILENAME',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2089818824015420 + wwv_flow_api.g_id_offset,
  p_region_id=> 2089206036015406 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'FILELOCATION',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Filelocation',
  p_column_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'FILEDSCR',
  p_ref_column_name=> 'FILELOCATION',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2089917009015420 + wwv_flow_api.g_id_offset,
  p_region_id=> 2089206036015406 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'REQID',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Reqid',
  p_column_alignment=> 'RIGHT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'FILEDSCR',
  p_ref_column_name=> 'REQID',
  p_column_comment               => '');
end;
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 2090022593015420 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 30,
  p_button_plug_id => 2089206036015406+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2055001144849518+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=198:4:&SESSION.::NO:4',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>2093627562053309 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_branch_action=> 'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 10,
  p_branch_comment=> 'Created 09-AUG-2010 23:00 by IVAN');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2092209292029090 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_FILELOCATION',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 2089206036015406+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Filelocation',
  p_source_type=> 'STATIC',
  p_display_as=> 'TEXT_WITH_ENTER_SUBMIT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 180,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2059508447849557+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 5
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 101: Login
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h := null;
ph := null;
wwv_flow_api.create_page(
  p_id     => 101,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Login',
  p_alias  => 'LOGIN',
  p_step_title=> 'Login',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'AUTO_FIRST_ITEM',
  p_help_text => '',
  p_html_page_header => '',
  p_step_template => 2054720636849517+ wwv_flow_api.g_id_offset,
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => '',
  p_last_upd_yyyymmddhh24miss => '20100809222616',
  p_page_is_public_y_n=> 'N',
  p_page_comment  => '');
 
end;
 
end;
/

declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 2061519937849609 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 101,
  p_plug_name=> 'Login',
  p_plug_template=> 0,
  p_plug_display_sequence=> 10,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'AFTER_SHOW_ITEMS',
  p_plug_source  => s,
  p_plug_source_type=> 'STATIC_TEXT',
  p_plug_query_row_template=> 1,
  p_plug_query_headings_type=> 'COLON_DELMITED_LIST',
  p_plug_query_row_count_max => 500,
  p_plug_display_condition_type => '',
  p_plug_caching=> '',
  p_required_patch=> '' + wwv_flow_api.g_id_offset,
  p_plug_comment=> '');
end;
/
 
begin
 
null;
 
end;
/

 
begin
 
null;
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2061612963849615 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_USERNAME',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 2061519937849609+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_prompt=>'User Name',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 2,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2059508447849557+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2061727160849617 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_PASSWORD',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 2061519937849609+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_prompt=>'Password',
  p_display_as=> 'PASSWORD_WITH_ENTER_SUBMIT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 40,
  p_cMaxlength=> 100,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2059508447849557+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2061826510849617 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_LOGIN',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 2061519937849609+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> '',
  p_item_default => 'Login',
  p_prompt=>'Login',
  p_source=>'LOGIN',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> null,
  p_cHeight=> null,
  p_tag_attributes  => 'template:'||to_char(2055001144849518 + wwv_flow_api.g_id_offset),
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'begin'||chr(10)||
'owa_util.mime_header(''text/html'', FALSE);'||chr(10)||
'owa_cookie.send('||chr(10)||
'    name=>''LOGIN_USERNAME_COOKIE'','||chr(10)||
'    value=>lower(:P101_USERNAME));'||chr(10)||
'exception when others then null;'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 2062003170849618 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Set Username Cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'wwv_flow_custom_auth_std.login('||chr(10)||
'    P_UNAME       => :P101_USERNAME,'||chr(10)||
'    P_PASSWORD    => :P101_PASSWORD,'||chr(10)||
'    P_SESSION_ID  => v(''APP_SESSION''),'||chr(10)||
'    P_FLOW_PAGE   => :APP_ID||'':1'''||chr(10)||
'    );';

wwv_flow_api.create_page_process(
  p_id     => 2061929293849618 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 20,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Login',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'101';

wwv_flow_api.create_page_process(
  p_id     => 2062224902849618 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'Clear Page(s) Cache',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'declare'||chr(10)||
'    v varchar2(255) := null;'||chr(10)||
'    c owa_cookie.cookie;'||chr(10)||
'begin'||chr(10)||
'   c := owa_cookie.get(''LOGIN_USERNAME_COOKIE'');'||chr(10)||
'   :P101_USERNAME := c.vals(1);'||chr(10)||
'exception when others then null;'||chr(10)||
'end;';

wwv_flow_api.create_page_process(
  p_id     => 2062104512849618 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 101,
  p_process_sequence=> 10,
  p_process_point=> 'BEFORE_HEADER',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get Username Cookie',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_success_message=> '',
  p_process_is_stateful_y_n=>'N',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_process_comment=>'');
end;
null;
 
end;
/

 
begin
 
---------------------------------------
-- ...updatable report columns for page 101
--
 
begin
 
null;
end;
null;
 
end;
/

---------------------------------------
prompt  ...Lists
--
 
begin
 
wwv_flow_api.create_list (
  p_id=> 2062716919849632 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Navigation',
  p_list_status=> 'PUBLIC',
  p_list_displayed=> 'BY_DEFAULT',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_display_row_template_id=> 2057932544849537 + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_list_item (
  p_id=> 2062827251849640 + wwv_flow_api.g_id_offset,
  p_list_id=> 2062716919849632 + wwv_flow_api.g_id_offset,
  p_list_item_type=> 'LINK',
  p_list_item_status=> 'PUBLIC',
  p_item_displayed=> 'BY_DEFAULT',
  p_list_item_display_sequence=>10,
  p_list_item_link_text=> 'Accessors',
  p_list_item_link_target=> 'f?p=&FLOW_ID.:2:&SESSION.::&DEBUG.:',
  p_list_countclicks_y_n=> 'N',
  p_list_text_01=> '',
  p_list_item_current_type=> 'COLON_DELIMITED_PAGE_LIST',
  p_list_item_current_for_pages=> '2',
  p_list_item_owner=> '');
 
null;
 
end;
/

---------------------------------------
prompt  ...Breadcrumbs
--
 
begin
 
wwv_flow_api.create_menu (
  p_id=> 2062324068849618 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> ' Breadcrumb');
 
wwv_flow_api.create_menu_option (
  p_id=> 2063007400849656 + wwv_flow_api.g_id_offset,
  p_menu_id=> 2062324068849618 + wwv_flow_api.g_id_offset,
  p_parent_id               => 0,
  p_option_sequence=> 10,
  p_short_name     => 'Files',
  p_long_name      => '',
  p_link           => 'f?p=198:1:&SESSION.',
  p_page_id        => 1,
  p_also_current_for_pages  => '');
 
wwv_flow_api.create_menu_option (
  p_id=> 2063406336849659 + wwv_flow_api.g_id_offset,
  p_menu_id=> 2062324068849618 + wwv_flow_api.g_id_offset,
  p_parent_id               => 2063007400849656 + wwv_flow_api.g_id_offset,
  p_option_sequence=> 20,
  p_short_name     => 'Accessors',
  p_long_name      => '',
  p_link           => 'f?p=198:2:&SESSION.',
  p_page_id        => 2,
  p_also_current_for_pages  => '');
 
null;
 
end;
/

---------------------------------------
prompt  ...Page Templates for application: 198
--
prompt  ......Page template 2053905945849492
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#</body>'||chr(10)||
'</html>';

c3:=c3||'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td width="100%" valign="top"><div class="t2messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_01##REGION_POSITION_02##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 2053905945849492 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Printer Friendly',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t2success">#SUCCESS_MESSAGE#</div>'||chr(10)||
'',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t2notification">#MESSAGE#</div>',
  p_navigation_bar=> '<div class="t2NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t2navbar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_theme_id  => 2,
  p_theme_class_id => 5,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '3');
end;
 
null;
 
end;
/

prompt  ......Page template 2054024215849495
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table width="100%" cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/bottom_bar-0-0.png"/></td>'||chr(10)||
'<td width="100%" class="t2BottomBarCenter"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/bottom_bar-0-1.png"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/bottom_bar-0-3.png" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div class="t2footer"><table width';

c2:=c2||'="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" class="t2user">&APP_USER.</td>'||chr(10)||
'<td valign="bottom" class="t2copy"><!-- Copyright --><span class="t2Customize">#CUSTOMIZE#</span></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></div>'||chr(10)||
'<br />'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" class="t2Logo" width="100%">#LOGO#</td>'||chr(10)||
'<td valign="top" align="right">#NAVIGATION_BAR#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td width="100%"><br /></td>'||chr(10)||
'<td class="t2tabholder" valign="bottom"><table width="100%" cellpadding="0" cellspacin';

c3:=c3||'g="0" border="0" summary=""><tr>#PARENT_TAB_CELLS#</tr></table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table width="100%" cellpadding="0" border="0" cellspacing="0" summary="" height="70%">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2topbar01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/topbar-0-0.png" width="7" height="35" /><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="25" height="1" /></td>'||chr(10)||
'<td  class="t2topbar05"';

c3:=c3||'><img alt="" src="#IMAGE_PREFIX#themes/theme_2/topbar-0-3.png" width="21" height="35" /></td>'||chr(10)||
'<td class="t2topbar05" width="100%" valign="bottom"><table cellpadding="0" border="0" cellspacing="0" summary=""><tr><td><br /></td>#TAB_CELLS#</tr></table></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/topbar-0-6.png" width="8" height="35" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td rowspan="2" class="t2sidebar" val';

c3:=c3||'ign="top">#REGION_POSITION_02#</td>'||chr(10)||
'<td colspan="3" class="t2breadcrumbholder">#REGION_POSITION_01#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td align="left" class="t2body" valign="top" width="100%" colspan="3" height="100%"><table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td width="100%" valign="top"><div class="t2messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>';

c3:=c3||'#BOX_BODY##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 2054024215849495 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs with Side Bar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t2success">#SUCCESS_MESSAGE#</div>'||chr(10)||
'',
  p_current_tab=> '<td valign="bottom"><img src="#IMAGE_PREFIX#themes/theme_2/subtab_on_left.png" alt="" /></td>'||chr(10)||
'<td class="t2subtabcenterOn">#TAB_LABEL##TAB_INLINE_EDIT#</td>'||chr(10)||
'<td valign="bottom"><img src="#IMAGE_PREFIX#themes/theme_2/subtab_on_right.png" alt="" /></td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td valign="bottom"><img src="#IMAGE_PREFIX#themes/theme_2/subtab_off_left.png" alt="" /></td>'||chr(10)||
'<td class="t2subtabcenterOff"><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td valign="bottom"><img src="#IMAGE_PREFIX#themes/theme_2/subtab_off_right.png" alt="" /></td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_2/tab_on_left.png" alt="" /></td>'||chr(10)||
'<td class="t2tabcenterOn">#TAB_LABEL##TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_2/tab_on_right.png" alt="" /></td>'||chr(10)||
'',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_2/tab_off_left.png" alt="" /></td>'||chr(10)||
'<td class="t2tabcenterOff"><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_2/tab_off_right.png" alt="" /></td>',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t2notification">#MESSAGE#</div>'||chr(10)||
'',
  p_navigation_bar=> '<div class="t2NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t2navbar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 2,
  p_theme_class_id => 18,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ......Page template 2054129698849496
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table width="100%" cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/bottom_bar-0-0.png"/></td>'||chr(10)||
'<td width="100%" class="t2BottomBarCenter"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/bottom_bar-0-1.png"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/bottom_bar-0-3.png" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div class="t2footer"><table width';

c2:=c2||'="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" class="t2user">&APP_USER.</td>'||chr(10)||
'<td valign="bottom" class="t2copy"><!-- Copyright --><span class="t2Customize">#CUSTOMIZE#</span></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></div>'||chr(10)||
'<br />'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" class="t2Logo" width="100%">#LOGO#</td>'||chr(10)||
'<td valign="top" align="right">#NAVIGATION_BAR#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td width="100%"><br /></td>'||chr(10)||
'<td class="t2tabholder" valign="bottom"><table width="100%" cellpadding="0" cellspacin';

c3:=c3||'g="0" border="0" summary=""><tr><td><br /></td>#TAB_CELLS#</tr></table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table width="100%" cellpadding="0" border="0" cellspacing="0" summary="" height="70%">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2topbar01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/topbar-0-0.png" width="7" height="35" /><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="25" height="1" /></td>'||chr(10)||
'<td class="t2to';

c3:=c3||'pbar05"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/topbar-0-3.png" width="21" height="35" /></td>'||chr(10)||
'<td class="t2topbar05" width="100%"><br /></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/topbar-0-6.png" width="8" height="35" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td rowspan="2" class="t2sidebar" valign="top">#REGION_POSITION_02#</td>'||chr(10)||
'<td colspan="3" class="t2breadcrumbholder">#REGION_POSITION_01#</td>'||chr(10)||
'</';

c3:=c3||'tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2body" valign="top" width="100%" colspan="3" height="100%"><table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td width="100%" valign="top"><div class="t2messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'<td ';

c3:=c3||'valign="top">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 2054129698849496 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs with Side Bar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t2success">#SUCCESS_MESSAGE#</div>'||chr(10)||
'',
  p_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_2/tab_on_left.png" border="0" alt="" /></td>'||chr(10)||
'<td class="t2tabcenterOn">#TAB_LABEL##TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_2/tab_on_right.png" border="0" alt="" /></td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_2/tab_off_left.png" border="0" alt="" /></td>'||chr(10)||
'<td class="t2tabcenterOff"><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_2/tab_off_right.png" border="0" alt="" /></td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t2notification">#MESSAGE#</div>'||chr(10)||
'',
  p_navigation_bar=> '<div class="t2NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t2navbar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 2,
  p_theme_class_id => 16,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ......Page template 2054214403849498
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'#FORM_CLOSE#</body>'||chr(10)||
'</html>';

c3:=c3||'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td width="100%" valign="top"><div class="t2messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_01##REGION_POSITION_02##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 2054214403849498 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Popup',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t2success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t2notification">#MESSAGE#</div>',
  p_navigation_bar=> '<div class="t2NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t2navbar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_theme_id  => 2,
  p_theme_class_id => 4,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ......Page template 2054300321849498
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table width="100%" cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/bottom_bar-0-0.png"/></td>'||chr(10)||
'<td width="100%" class="t2BottomBarCenter"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/bottom_bar-0-1.png"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/bottom_bar-0-3.png" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div class="t2footer"><table width';

c2:=c2||'="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" class="t2user">&APP_USER.</td>'||chr(10)||
'<td valign="bottom" class="t2copy"><!-- Copyright --><span class="t1Customize">#CUSTOMIZE#</span></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></div>'||chr(10)||
'<br />'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" class="t2Logo" width="100%">#LOGO#</td>'||chr(10)||
'<td valign="top" align="right">#NAVIGATION_BAR#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table width="100%" cellpadding="0" border="0" cellspacing="0" summary="" height="70%">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2topbar01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/topbar-0-0.png" width="7" height=';

c3:=c3||'"35" /><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="25" height="1" /></td>'||chr(10)||
'<td class="t2topbar05"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/topbar-0-3.png" width="21" height="35" /></td>'||chr(10)||
'<td class="t2topbar05" width="100%"><br /></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/topbar-0-6.png" width="8" height="35" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td rowspan="2" valign="top"><b';

c3:=c3||'r/></td>'||chr(10)||
'<td colspan="3" class="t2breadcrumbholder">#REGION_POSITION_01#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2body" valign="top" width="100%" colspan="3" valign="top" height="100%"><table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td width="100%" valign="top"><div class="t2messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_';

c3:=c3||'02##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 2054300321849498 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t2success">#SUCCESS_MESSAGE#</div>'||chr(10)||
'',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t2notification">#MESSAGE#</div>'||chr(10)||
'',
  p_navigation_bar=> '<div class="t2NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t2navbar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 2,
  p_theme_class_id => 3,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ......Page template 2054510426849500
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table width="100%" cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/bottom_bar-0-0.png"/></td>'||chr(10)||
'<td width="100%" class="t2BottomBarCenter"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/bottom_bar-0-1.png"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/bottom_bar-0-3.png" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div class="t2footer"><table width';

c2:=c2||'="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" class="t2user">&APP_USER.</td>'||chr(10)||
'<td valign="bottom" class="t2copy"><!-- Copyright --><span class="t2Customize">#CUSTOMIZE#</span></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></div>'||chr(10)||
'<br />'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" class="t2Logo" width="100%">#LOGO#</td>'||chr(10)||
'<td valign="top" align="right">#NAVIGATION_BAR#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td width="100%"><br /></td>'||chr(10)||
'<td class="t2tabholder" valign="bottom"><table width="100%" cellpadding="0" cellspacin';

c3:=c3||'g="0" border="0" summary=""><tr><td><br /></td>#TAB_CELLS#</tr></table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table width="100%" height="70%" cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2topbar01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/topbar-0-0.png" width="7" height="35" /><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="25" height="1" /></td>'||chr(10)||
'<td class="t2to';

c3:=c3||'pbar05"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/topbar-0-3.png" width="21" height="35" /></td>'||chr(10)||
'<td class="t2topbar05" width="100%"><br /></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/topbar-0-6.png" width="8" height="35" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td rowspan="2" valign="top"><br/></td>'||chr(10)||
'<td colspan="3" class="t2breadcrumbholder">#REGION_POSITION_01#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2body" valig';

c3:=c3||'n="top" width="100%" colspan="3" height="100%"><table summary="" cellpadding="0" width="100%" height="70%" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td width="100%" valign="top"><div class="t2messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'<td ';

c3:=c3||'valign="top">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 2054510426849500 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'One Level Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t2success">#SUCCESS_MESSAGE#</div>'||chr(10)||
'',
  p_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_2/tab_on_left.png" border="0" alt="" /></td>'||chr(10)||
'<td class="t2tabcenterOn">#TAB_LABEL##TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_2/tab_on_right.png" border="0" alt="" /></td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_2/tab_off_left.png" border="0" alt="" /></td>'||chr(10)||
'<td class="t2tabcenterOff"><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_2/tab_off_right.png" border="0" alt="" /></td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t2notification">#MESSAGE#</div>'||chr(10)||
'',
  p_navigation_bar=> '<div class="t2NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t2navbar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 2,
  p_theme_class_id => 1,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '19');
end;
 
null;
 
end;
/

prompt  ......Page template 2054404833849498
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table width="100%" cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/bottom_bar-0-0.png"/></td>'||chr(10)||
'<td width="100%" class="t2BottomBarCenter"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/bottom_bar-0-1.png"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/bottom_bar-0-3.png" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div class="t2footer"><table width';

c2:=c2||'="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" class="t2user">&APP_USER.</td>'||chr(10)||
'<td valign="bottom" class="t2copy"><!-- Copyright --><span class="t2Customize">#CUSTOMIZE#</span></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></div>'||chr(10)||
'<br />'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" class="t2Logo" width="100%">#LOGO#</td>'||chr(10)||
'<td valign="top" align="right">#NAVIGATION_BAR#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table width="100%" cellpadding="0" border="0" cellspacing="0" summary="" height="70%">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2topbar01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/topbar-0-0.png" width="7" height=';

c3:=c3||'"35" /><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="25" height="1" /></td>'||chr(10)||
'<td class="t2topbar05"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/topbar-0-3.png" width="21" height="35" /></td>'||chr(10)||
'<td class="t2topbar05" width="100%"><br /></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/topbar-0-6.png" width="8" height="35" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td rowspan="2" class="t2sideba';

c3:=c3||'r" valign="top">#REGION_POSITION_02#</td>'||chr(10)||
'<td colspan="3" class="t2breadcrumbholder">#REGION_POSITION_01#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2body" valign="top" width="100%" colspan="3" height="100%"><table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td width="100%" valign="top"><div class="t2messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BO';

c3:=c3||'DY##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 2054404833849498 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'No Tabs with Side Bar',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t2success">#SUCCESS_MESSAGE#</div>'||chr(10)||
'',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t2notification">#MESSAGE#</div>',
  p_navigation_bar=> '<div class="t2NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t2navbar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_02',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 2,
  p_theme_class_id => 17,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ......Page template 2054612622849501
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'<table width="100%" cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/bottom_bar-0-0.png"/></td>'||chr(10)||
'<td width="100%" class="t2BottomBarCenter"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/bottom_bar-0-1.png"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/bottom_bar-0-3.png" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<div class="t2footer"><table width';

c2:=c2||'="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="bottom" class="t2user">&APP_USER.</td>'||chr(10)||
'<td valign="bottom" class="t2copy"><!-- Copyright --><span class="t2Customize">#CUSTOMIZE#</span></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></div>'||chr(10)||
'<br />'||chr(10)||
'#FORM_CLOSE# '||chr(10)||
'</body>'||chr(10)||
'</html>';

c3:=c3||'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top" class="t2Logo" width="100%">#LOGO#</td>'||chr(10)||
'<td valign="top" align="right">#NAVIGATION_BAR#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td width="100%"><br /></td>'||chr(10)||
'#PARENT_TAB_CELLS#'||chr(10)||
'<td width="6"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_tra';

c3:=c3||'ns.gif" width="6" height="1" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'<table width="100%" cellpadding="0" border="0" cellspacing="0" summary="" height="70%">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2topbar01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/topbar-0-0.png" width="7" height="35" /><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="25" height="1" /></td>'||chr(10)||
'<td class="t2topbar05"><img alt="" src="#IMAGE_PREFIX#t';

c3:=c3||'hemes/theme_2/topbar-0-3.png" width="21" height="35" /></td>'||chr(10)||
'<td class="t2topbar05" width="100%" valign="bottom"><table cellpadding="0" border="0" cellspacing="0" summary=""><tr><td><br /></td>#TAB_CELLS#</tr></table></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/topbar-0-6.png" width="8" height="35" /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td rowspan="2" class="t2sidebar" valign="top"><br /></td>'||chr(10)||
'<td colspan';

c3:=c3||'="3" class="t2breadcrumbholder">#REGION_POSITION_01#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2body" valign="top" width="100%" colspan="3" height="100%"><table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td width="100%" valign="top"><div class="t2messages">#GLOBAL_NOTIFICATION##SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BOX_BODY##REGION_POSITION_02##REGION_POSITION_04##REGION_PO';

c3:=c3||'SITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'<td valign="top">#REGION_POSITION_03#<br /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_template(
  p_id=> 2054612622849501 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Two Level Tabs',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t2success">#SUCCESS_MESSAGE#</div>',
  p_current_tab=> '<td valign="bottom"><img src="#IMAGE_PREFIX#themes/theme_2/subtab_on_left.png" alt="" /></td>'||chr(10)||
'<td class="t2subtabcenterOn">#TAB_LABEL##TAB_INLINE_EDIT#</td>'||chr(10)||
'<td valign="bottom"><img src="#IMAGE_PREFIX#themes/theme_2/subtab_on_right.png" alt="" /></td>',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '<td valign="bottom"><img src="#IMAGE_PREFIX#themes/theme_2/subtab_off_left.png" alt="" /></td>'||chr(10)||
'<td class="t2subtabcenterOff"><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td valign="bottom"><img src="#IMAGE_PREFIX#themes/theme_2/subtab_off_right.png" alt="" /></td>',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_2/tab_on_left.png" alt="" /></td>'||chr(10)||
'<td class="t2tabcenterOn">#TAB_LABEL##TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_2/tab_on_right.png" alt="" /></td>'||chr(10)||
'',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '<td><img src="#IMAGE_PREFIX#themes/theme_2/tab_off_left.png" alt="" /></td>'||chr(10)||
'<td class="t2tabcenterOff"><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>'||chr(10)||
'<td><img src="#IMAGE_PREFIX#themes/theme_2/tab_off_right.png" alt="" /></td>',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t2notification">#MESSAGE#</div>',
  p_navigation_bar=> '<div class="t2NavigationBar">#BAR_BODY#</div>',
  p_navbar_entry=> '<a href="#LINK#" class="t2navbar">#TEXT#</a>',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_sidebar_def_reg_pos => 'REGION_POSITION_03',
  p_breadcrumb_def_reg_pos => 'REGION_POSITION_01',
  p_theme_id  => 2,
  p_theme_class_id => 2,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '');
end;
 
null;
 
end;
/

prompt  ......Page template 2054720636849517
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">'||chr(10)||
'<head>'||chr(10)||
'#HEAD#'||chr(10)||
'<title>#TITLE#</title>'||chr(10)||
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/theme_V2.css" type="text/css" />'||chr(10)||
'</head>'||chr(10)||
'<body #ONLOAD#>#FORM_OPEN#';

c2:=c2||'  </body>'||chr(10)||
'</html>'||chr(10)||
'';

c3:=c3||'<div class="t2messages">#NOTIFICATION_MESSAGE#</div>'||chr(10)||
'<table cellpadding="0" border="0" cellspacing="0" summary="" style="margin-top:100px;" align="center">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-0.png" width="9" height="11"/></td>'||chr(10)||
'<td class="t2stdround01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_';

c3:=c3||'PREFIX#themes/theme_2/left_nav-0-3.png" width="9" height="11"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2stdround10"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td class="t2stroundbody"><table border="0" cellspacing="0" cellpadding="0" summary="" class="t2ReportsRegion">'||chr(10)||
'<td class="t2RegionBody" valign="top" colspan="2">#BOX_BODY##REGION_POSITION_01##REGION_POSITI';

c3:=c3||'ON_02##REGION_POSITION_03##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'<td class="t2stdround13"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-0.png" width="9" height="9"/></td>'||chr(10)||
'<td class="t2stdround21"><i';

c3:=c3||'mg alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-3.png" width="9" height="9"/></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'#FORM_CLOSE#'||chr(10)||
''||chr(10)||
'';

wwv_flow_api.create_template(
  p_id=> 2054720636849517 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'Login',
  p_body_title=> '',
  p_header_template=> c1,
  p_box=> c3,
  p_footer_template=> c2,
  p_success_message=> '<div class="t2success">#SUCCESS_MESSAGE#</div>'||chr(10)||
'',
  p_current_tab=> '',
  p_current_tab_font_attr=> '',
  p_non_current_tab=> '',
  p_non_current_tab_font_attr => '',
  p_top_current_tab=> '',
  p_top_current_tab_font_attr => '',
  p_top_non_curr_tab=> '',
  p_top_non_curr_tab_font_attr=> '',
  p_current_image_tab=> '',
  p_non_current_image_tab=> '',
  p_notification_message=> '<div class="t2notification">#MESSAGE#</div>'||chr(10)||
''||chr(10)||
'',
  p_navigation_bar=> '',
  p_navbar_entry=> '',
  p_app_tab_before_tabs=>'',
  p_app_tab_current_tab=>'',
  p_app_tab_non_current_tab=>'',
  p_app_tab_after_tabs=>'',
  p_region_table_cattributes=> ' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"',
  p_theme_id  => 2,
  p_theme_class_id => 6,
  p_required_patch   => null + wwv_flow_api.g_id_offset,
  p_translate_this_template => 'N',
  p_template_comment => '18');
end;
 
null;
 
end;
/

---------------------------------------
prompt  ...Button Templates
--
prompt  ......Button Template 2054925407849518
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<table class="t2ButtonAlternative2" cellspacing="0" cellpadding="0" border="0"  summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2L"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_2/button_alt2_left.gif" alt="" /></a></td>'||chr(10)||
'<td class="t2C"><a href="#LINK#">#LABEL#</a></td>'||chr(10)||
'<td class="t2R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_2/button_alt2_right.gif" alt="" /></a></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_button_templates (
  p_id=>2054925407849518 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 2',
  p_translate_this_template => 'N',
  p_theme_id  => 2,
  p_theme_class_id => 5,
  p_template_comment       => '');
end;
/
prompt  ......Button Template 2055001144849518
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<table class="t2Button" cellspacing="0" cellpadding="0" border="0"  summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2L"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_2/button_left.gif" alt="" /></a></td>'||chr(10)||
'<td class="t2C"><a href="#LINK#">#LABEL#</a></td>'||chr(10)||
'<td class="t2R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_2/button_right.gif" alt="" /></a></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_button_templates (
  p_id=>2055001144849518 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button',
  p_translate_this_template => 'N',
  p_theme_id  => 2,
  p_theme_class_id => 1,
  p_template_comment       => '');
end;
/
prompt  ......Button Template 2055117450849518
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<table class="t2ButtonAlternative1" cellspacing="0" cellpadding="0" border="0"  summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2L"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_2/button_alt1_left.gif" alt="" /></a></td>'||chr(10)||
'<td class="t2C"><a href="#LINK#">#LABEL#</a></td>'||chr(10)||
'<td class="t2R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_2/button_alt1_right.gif" alt="" /></a></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_button_templates (
  p_id=>2055117450849518 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 1',
  p_translate_this_template => 'N',
  p_theme_id  => 2,
  p_theme_class_id => 4,
  p_template_comment       => '');
end;
/
prompt  ......Button Template 2054832140849517
declare
  t varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
t:=t||'<table class="t2ButtonAlternative3" cellspacing="0" cellpadding="0" border="0"  summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2L"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_2/button_alt3_left.gif" alt="" /></a></td>'||chr(10)||
'<td class="t2C"><a href="#LINK#">#LABEL#</a></td>'||chr(10)||
'<td class="t2R"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_2/button_alt3_right.gif" alt="" /></a></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

wwv_flow_api.create_button_templates (
  p_id=>2054832140849517 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 3',
  p_translate_this_template => 'N',
  p_theme_id  => 2,
  p_theme_class_id => 2,
  p_template_comment       => '');
end;
/
---------------------------------------
prompt  ...Region Templates
--
prompt  ......Region Template 2055216718849518
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_ID#" class="htmldbRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-0.png" width="9" height="11"/></td>'||chr(10)||
'<td class="t2stdround01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-3.png" width="9" height';

t:=t||'="11"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2stdround10"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td class="t2stroundbody"><table border="0" cellspacing="0" cellpadding="0" summary="" class="t2RegionwithoutButtonsandTitles">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionBody" valign="top">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'<td class="t2stdround13"><img alt="" src="#IMAGE_PREFIX#the';

t:=t||'mes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-0.png" width="9" height="9"/></td>'||chr(10)||
'<td class="t2stdround21"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-3.png" width="9" height="9"/></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2055216718849518 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Region without Buttons and Titles',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 2,
  p_theme_class_id => 19,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2055216718849518 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2055320201849520
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_ID#" class="htmldbRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-0.png" width="9" height="11"/></td>'||chr(10)||
'<td class="t2stdround01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-3.png" width="9" height';

t:=t||'="11"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2stdround10"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td class="t2stroundbody"><table border="0" cellspacing="0" cellpadding="0" summary="" class="t2BracketedRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionHeader" valign="bottom">#TITLE#</td>'||chr(10)||
'<td class="t2ButtonHolder" valign="bottom">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DE';

t:=t||'LETE##EDIT##CHANGE##CREATE##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionBody" valign="top" colspan="2">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'<td class="t2stdround13"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-0.png" width="9" height="9"/></td>'||chr(10)||
'<td class="t2stdround21"><img alt="" src="#IMAG';

t:=t||'E_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-3.png" width="9" height="9"/></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2055320201849520 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Bracketed Region',
  p_plug_table_bgcolor     => '#FFFFFF',
  p_theme_id  => 2,
  p_theme_class_id => 18,
  p_plug_heading_bgcolor   => '#FFFFFF',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2055320201849520 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2055411717849520
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_ID#" class="htmldbRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-0.png" width="9" height="11"/></td>'||chr(10)||
'<td class="t2stdround01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-3.png" width="9" height';

t:=t||'="11"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2stdround10"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td class="t2stroundbody"><table border="0" cellspacing="0" cellpadding="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2GCCHeader" valign="bottom">#TITLE#</td>'||chr(10)||
'<td class="t2GCCHeader" align="right" valign="bottom"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2GCCBody" colspan="2" valig';

t:=t||'n="top"><table cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_2/chart.gif" /></td>'||chr(10)||
'<td valign="top">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'<td class="t2stdround13"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_n';

t:=t||'av-2-0.png" width="9" height="9"/></td>'||chr(10)||
'<td class="t2stdround21"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-3.png" width="9" height="9"/></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2055411717849520 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Chart List',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 2,
  p_theme_class_id => 29,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2055411717849520 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2055524673849525
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div class="t2BreadcrumbRegion"  id="#REGION_ID#">#BODY#</div>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2055524673849525 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Breadcrumb Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 2,
  p_theme_class_id => 6,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2055524673849525 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2055619683849525
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_ID#" class="htmldbRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-0.png" width="9" height="11"/></td>'||chr(10)||
'<td class="t2stdround01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-3.png" width="9" height';

t:=t||'="11"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2stdround10"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td class="t2stroundbody"><table border="0" cellspacing="0" cellpadding="0" summary="" class="t2WizardRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionHeader" valign="bottom">#TITLE#</td>'||chr(10)||
'<td class="t2ButtonHolder" valign="bottom">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELET';

t:=t||'E##EDIT##CHANGE##CREATE##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionBody" valign="top" colspan="2">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'<td class="t2stdround13"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-0.png" width="9" height="9"/></td>'||chr(10)||
'<td class="t2stdround21"><img alt="" src="#IMAGE_P';

t:=t||'REFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-3.png" width="9" height="9"/></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2055619683849525 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Wizard Region',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 2,
  p_theme_class_id => 12,
  p_plug_heading_bgcolor   => '#f7f7e7',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2055619683849525 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2055728066849525
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_ID#" class="htmldbRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-0.png" width="9" height="11"/></td>'||chr(10)||
'<td class="t2stdround01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-3.png" width="9" height';

t:=t||'="11"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2stdround10"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td class="t2stroundbody"><table border="0" cellspacing="0" cellpadding="0" summary="" class="t2ChartRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionHeader" valign="bottom">#TITLE#</td>'||chr(10)||
'<td class="t2ButtonHolder" valign="bottom">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE';

t:=t||'##EDIT##CHANGE##CREATE##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2Body" valign="top" colspan="2">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'<td class="t2stdround13"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-0.png" width="9" height="9"/></td>'||chr(10)||
'<td class="t2stdround21"><img alt="" src="#IMAGE_PREFIX#t';

t:=t||'hemes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-3.png" width="9" height="9"/></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2055728066849525 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Chart Region',
  p_plug_table_bgcolor     => '#FFFFFF',
  p_theme_id  => 2,
  p_theme_class_id => 30,
  p_plug_heading_bgcolor   => '#FFFFFF',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2055728066849525 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2055824024849525
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_ID#" class="htmldbRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-0.png" width="9" height="11"/></td>'||chr(10)||
'<td class="t2stdround01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-3.png" width="9" height';

t:=t||'="11"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2stdround10"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td class="t2stroundbody"><table border="0" cellspacing="0" cellpadding="0" summary="" class="t2FormRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionHeader" valign="bottom">#TITLE#</td>'||chr(10)||
'<td class="t2ButtonHolder" valign="bottom">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE#';

t:=t||'#EDIT##CHANGE##CREATE##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionBody" valign="top" colspan="2">#BODY#<img src="#IMAGE_PREFIX#/themes/theme_2/1px_trans.gif" height="1" width="582" style="display:block;" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'<td class="t2stdround13"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#the';

t:=t||'mes/theme_2/left_nav-2-0.png" width="9" height="9"/></td>'||chr(10)||
'<td class="t2stdround21"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-3.png" width="9" height="9"/></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2055824024849525 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Form Region',
  p_plug_table_bgcolor     => '#FFFFFF',
  p_theme_id  => 2,
  p_theme_class_id => 8,
  p_plug_heading_bgcolor   => '#FFFFFF',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2055824024849525 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2055923391849525
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_ID#" class="htmldbRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-0.png" width="9" height="11"/></td>'||chr(10)||
'<td class="t2stdround01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-3.png" width="9" height';

t:=t||'="11"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2stdround10"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td class="t2stroundbody"><table border="0" cellspacing="0" cellpadding="0" summary="" class="t2SidebarRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionHeader" valign="bottom">#TITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionBody" valign="top">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'<td clas';

t:=t||'s="t2stdround13"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-0.png" width="9" height="9"/></td>'||chr(10)||
'<td class="t2stdround21"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-3.png" width';

t:=t||'="9" height="9"/></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2055923391849525 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Sidebar Region',
  p_plug_table_bgcolor     => '#F7F7E7',
  p_theme_id  => 2,
  p_theme_class_id => 2,
  p_plug_heading_bgcolor   => '#F7F7E7',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2055923391849525 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2056024968849526
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_ID#" class="htmldbRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-0.png" width="9" height="11"/></td>'||chr(10)||
'<td class="t2stdround01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-3.png" width="9" height';

t:=t||'="11"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2stdround10"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td class="t2stroundbody"><table border="0" cellspacing="0" cellpadding="0" summary="" class="t2HideandShowRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionHeader" valign="bottom">#TITLE#<a style="margin-left:5px;" href="javascript:hideShow(''region#REGION_SEQUENCE_ID#'',''shIMG#R';

t:=t||'EGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#themes/theme_2/showhide_hidden.gif'',''#IMAGE_PREFIX#themes/theme_2/showhide_show.gif'');" class="t2HideandShowRegionLink"><img src="#IMAGE_PREFIX#themes/theme_2/showhide_hidden.gif" '||chr(10)||
'  id="shIMG#REGION_SEQUENCE_ID#" alt="" /></a></td>'||chr(10)||
'<td class="t2ButtonHolder" valign="bottom">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
'';

t:=t||'<tr>'||chr(10)||
'<td class="t2RegionBody" valign="top" colspan="2"><div class="t2Hide" id="region#REGION_SEQUENCE_ID#">#BODY#</div></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'<td class="t2stdround13"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-0.png" width="9" height="9"/></td>'||chr(10)||
'<td class="t2stdround21"><img alt=';

t:=t||'"" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-3.png" width="9" height="9"/></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2056024968849526 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Hide and Show Region',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 2,
  p_theme_class_id => 1,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2056024968849526 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2056114235849528
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_ID#" class="htmldbRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-0.png" width="9" height="11"/></td>'||chr(10)||
'<td class="t2stdround01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-3.png" width="9" height';

t:=t||'="11"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2stdround10"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td class="t2stroundbody"><table border="0" cellspacing="0" cellpadding="0" summary="" class="t2WizardRegionwithIcon">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionHeader" valign="bottom">#TITLE#</td>'||chr(10)||
'<td class="t2ButtonHolder" valign="bottom">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEX';

t:=t||'T##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionBody" valign="top" colspan="2"><table summary="" cellpadding="0" cellspacing="0" border="0">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_2/wizard_icon.gif" alt=""/></td>'||chr(10)||
'<td width="100%" valign="top">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'<td class="t2stdround13"><img alt="" src="#IMAGE_PREFIX#the';

t:=t||'mes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-0.png" width="9" height="9"/></td>'||chr(10)||
'<td class="t2stdround21"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-3.png" width="9" height="9"/></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2056114235849528 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Wizard Region with Icon',
  p_plug_table_bgcolor     => '#f7f7e7',
  p_theme_id  => 2,
  p_theme_class_id => 20,
  p_plug_heading_bgcolor   => '#f7f7e7',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2056114235849528 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2056228809849528
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<div class="t2NavigationRegion" id="#REGION_ID#">#BODY#</div>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2056228809849528 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Navigation Region',
  p_plug_table_bgcolor     => '#F7F7E7',
  p_theme_id  => 2,
  p_theme_class_id => 5,
  p_plug_heading_bgcolor   => '#F7F7E7',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2056228809849528 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2056313104849528
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_ID#" class="htmldbRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-0.png" width="9" height="11"/></td>'||chr(10)||
'<td class="t2stdround01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-3.png" width="9" height';

t:=t||'="11"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2stdround10"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td class="t2stroundbody"><table border="0" cellspacing="0" cellpadding="0" summary="" class="t2ButtonRegionwithTitle">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionHeader" valign="bottom">#TITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2ButtonHolder" valign="top">#CLOSE#&nbsp;&nbsp;&nbsp;#PREV';

t:=t||'IOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#<img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" style="display:block;" width="582" height="1" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'<td class="t2stdround13"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-0.png" width="9" height="9"/></t';

t:=t||'d>'||chr(10)||
'<td class="t2stdround21"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-3.png" width="9" height="9"/></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>#BODY#';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2056313104849528 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Button Region with Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 2,
  p_theme_class_id => 4,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2056313104849528 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2056422712849528
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_ID#" class="htmldbRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-0.png" width="9" height="11"/></td>'||chr(10)||
'<td class="t2stdround01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="600" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-3.png" width="9" heig';

t:=t||'ht="11"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2stdround10"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td class="t2stroundbody"><table border="0" cellspacing="0" cellpadding="0" summary="" class="t2ButtonRegionwithoutTitle">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2ButtonHolder" valign="top">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#<img alt="" src';

t:=t||'="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" style="display:block;" width="582" height="1" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'<td class="t2stdround13"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-0.png" width="9" height="9"/></td>'||chr(10)||
'<td class="t2stdround21"><img alt="" src="#IMAGE_PREFIX#the';

t:=t||'mes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-3.png" width="9" height="9"/></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>#BODY#';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2056422712849528 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Button Region without Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 2,
  p_theme_class_id => 17,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2056422712849528 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2056521297849529
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_ID#" class="htmldbRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-0.png" width="9" height="11"/></td>'||chr(10)||
'<td class="t2stdround01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-3.png" width="9" height';

t:=t||'="11"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2stdround10"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td class="t2stroundbody"><table border="0" cellspacing="0" cellpadding="0" summary="" class="t2ReportsRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionHeader" valign="bottom">#TITLE#</td>'||chr(10)||
'<td class="t2ButtonHolder" valign="bottom">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELE';

t:=t||'TE##EDIT##CHANGE##CREATE##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionBody" valign="top" colspan="2">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'<td class="t2stdround13"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-0.png" width="9" height="9"/></td>'||chr(10)||
'<td class="t2stdround21"><img alt="" src="#IMAGE_';

t:=t||'PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-3.png" width="9" height="9"/></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2056521297849529 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region',
  p_plug_table_bgcolor     => '#FFFFFF',
  p_theme_id  => 2,
  p_theme_class_id => 9,
  p_plug_heading_bgcolor   => '#FFFFFF',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2056521297849529 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2056626818849529
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_ID#" class="htmldbRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-0.png" width="9" height="11"/></td>'||chr(10)||
'<td class="t2stdround01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-3.png" width="9" height';

t:=t||'="11"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2stdround10"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td class="t2stroundbody"><table border="0" cellspacing="0" cellpadding="0" summary="" class="t2BorderlessRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionHeader" valign="bottom">#TITLE#</td>'||chr(10)||
'<td class="t2ButtonHolder" valign="bottom">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##D';

t:=t||'ELETE##EDIT##CHANGE##CREATE##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionBody" valign="top" colspan="2">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'<td class="t2stdround13"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-0.png" width="9" height="9"/></td>'||chr(10)||
'<td class="t2stdround21"><img alt="" src="#IMA';

t:=t||'GE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-3.png" width="9" height="9"/></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2056626818849529 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Borderless Region',
  p_plug_table_bgcolor     => '#FFFFFF',
  p_theme_id  => 2,
  p_theme_class_id => 7,
  p_plug_heading_bgcolor   => '#FFFFFF',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2056626818849529 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2056723132849529
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_ID#" class="htmldbRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-0.png" width="9" height="11"/></td>'||chr(10)||
'<td class="t2stdround01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-3.png" width="9" height';

t:=t||'="11"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2stdround10"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td class="t2stroundbody">'||chr(10)||
''||chr(10)||
'<table border="0" cellspacing="0" cellpadding="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2GCCHeader" valign="bottom">#TITLE#</td>'||chr(10)||
'<td class="t2GCCHeader" align="right" valign="bottom"><br /></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2GCCBody" colspan="2" val';

t:=t||'ign="top"><table cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_2/report.gif" /></td>'||chr(10)||
'<td valign="top">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
''||chr(10)||
'</td>'||chr(10)||
'<td class="t2stdround13"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/l';

t:=t||'eft_nav-2-0.png" width="9" height="9"/></td>'||chr(10)||
'<td class="t2stdround21"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-3.png" width="9" height="9"/></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2056723132849529 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Report List',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 2,
  p_theme_class_id => 29,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2056723132849529 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2056801318849529
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_ID#" class="htmldbRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/grey-region-0-0.png" width="9" height="11"/></td>'||chr(10)||
'<td class="t2greyround01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/grey-region-0-3.png" width="9"';

t:=t||' height="11"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2greyround10"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td class="t2greyroundbody"><table border="0" cellspacing="0" cellpadding="0" summary="" class="t2ReportsRegionAlternative1">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionHeader" valign="bottom">#TITLE#</td>'||chr(10)||
'<td class="t2ButtonHolder" valign="bottom">#CLOSE#&nbsp;&nbsp;&nbsp';

t:=t||';#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionBody" valign="top" colspan="2">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'<td class="t2greyround13"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/grey-region-2-0.png" width="9" height="9"/></td>'||chr(10)||
'<td class="t2greyround2';

t:=t||'1"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/grey-region-2-3.png" width="9" height="9"/></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2056801318849529 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region, Alternative 1',
  p_plug_table_bgcolor     => '#FFFFFF',
  p_theme_id  => 2,
  p_theme_class_id => 10,
  p_plug_heading_bgcolor   => '#FFFFFF',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2056801318849529 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2056928954849529
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_ID#" class="htmldbRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/grey-region-0-0.png" width="9" height="11"/></td>'||chr(10)||
'<td class="t2greyround01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/grey-region-0-3.png" width="9"';

t:=t||' height="11"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2greyround10"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td class="t2greyroundbody"><table border="0" cellspacing="0" cellpadding="0" summary="" class="t2SidebarRegionAlternative1">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionHeader" valign="bottom">#TITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionBody" valign="top">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'';

t:=t||'</table></td>'||chr(10)||
'<td class="t2greyround13"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/grey-region-2-0.png" width="9" height="9"/></td>'||chr(10)||
'<td class="t2greyround21"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/them';

t:=t||'e_2/grey-region-2-3.png" width="9" height="9"/></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2056928954849529 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Sidebar Region, Alternative 1',
  p_plug_table_bgcolor     => '#F7F7E7',
  p_theme_id  => 2,
  p_theme_class_id => 3,
  p_plug_heading_bgcolor   => '#F7F7E7',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2056928954849529 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2057028063849532
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table border="0" cellspacing="0" cellpadding="0" summary="" class="t2NavigationRegionAlternative1" id="#REGION_ID#">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionHeader" valign="bottom">#TITLE#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionBody" valign="top">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2057028063849532 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Navigation Region, Alternative 1',
  p_plug_table_bgcolor     => '#F7F7E7',
  p_theme_id  => 2,
  p_theme_class_id => 16,
  p_plug_heading_bgcolor   => '#F7F7E7',
  p_plug_font_size         => '-1',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2057028063849532 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2057109909849532
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" id="#REGION_ID#" class="htmldbRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-0.png" width="9" height="11"/></td>'||chr(10)||
'<td class="t2stdround01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-3.png" width="9" height';

t:=t||'="11"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2stdround10"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td class="t2stroundbody"><table border="0" cellspacing="0" cellpadding="0" summary="" class="t2RegionwithoutTitle">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2ButtonHolder" valign="bottom">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td';

t:=t||' class="t2RegionBody" valign="top">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'<td class="t2stdround13"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-0.png" width="9" height="9"/></td>'||chr(10)||
'<td class="t2stdround21"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td';

t:=t||'>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-3.png" width="9" height="9"/></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2057109909849532 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Region without Title',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 2,
  p_theme_class_id => 11,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => '');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2057109909849532 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2057219195849532
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_length number := 1;
begin
t:=t||'<table cellpadding="0" border="0" cellspacing="0" summary="" width="100%" id="#REGION_ID#" class="htmldbRegion">'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-0.png" width="9" height="11"/></td>'||chr(10)||
'<td class="t2stdround01"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-0-3.png" wid';

t:=t||'th="9" height="11"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2stdround10"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td class="t2stroundbody"><table border="0" cellspacing="0" cellpadding="0" summary="" width="100%" class="t2ReportsRegion100Width">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionHeader" valign="bottom">#TITLE#</td>'||chr(10)||
'<td class="t2ButtonHolder" valign="bottom">#CLOSE#&nbsp';

t:=t||';&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##HELP#</td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2RegionBody" valign="top" colspan="2">#BODY#</td>'||chr(10)||
'</tr>'||chr(10)||
'</table></td>'||chr(10)||
'<td class="t2stdround13"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'</tr>'||chr(10)||
'<tr>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-0.png" width="9" height="9"/></td>'||chr(10)||
'<td class="t2st';

t:=t||'dround21"><img alt="" src="#IMAGE_PREFIX#themes/theme_2/1px_trans.gif" width="1" height="1"/></td>'||chr(10)||
'<td><img alt="" src="#IMAGE_PREFIX#themes/theme_2/left_nav-2-3.png" width="9" height="9"/></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2 := null;
wwv_flow_api.create_plug_template (
  p_id       => 2057219195849532 + wwv_flow_api.g_id_offset,
  p_flow_id  => wwv_flow.g_flow_id,
  p_template => t,
  p_page_plug_template_name=> 'Reports Region 100% Width',
  p_plug_table_bgcolor     => '',
  p_theme_id  => 2,
  p_theme_class_id => 13,
  p_plug_heading_bgcolor   => '',
  p_plug_font_size         => '',
  p_translate_this_template => 'N',
  p_template_comment       => 'Outline, tab-title, 100%');
end;
null;
 
end;
/

 
begin
 
declare
    t2 varchar2(32767) := null;
begin
t2 := null;
wwv_flow_api.set_plug_template_tab_attr (
  p_id=> 2057219195849532 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

---------------------------------------
prompt  ...List Templates
--
prompt  ......List Template 2057306356849532
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><img src="#IMAGE_PREFIX#themes/theme_4/rollup_plus_dgray.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><img src="#IMAGE_PREFIX#themes/theme_4/rollup_plus_dgray.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><img src="#IMAGE_PREFIX#themes/theme_4/rollup_plus_dgray.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><img src="#IMAGE_PREFIX#themes/theme_4/rollup_plus_dgray.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>2057306356849532 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML Tree',
  p_theme_id  => 2,
  p_theme_class_id => 22,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 2057401222849534
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<li class="dhtmlMenuItem"><a href="#" onclick="javascript:app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)">#TEXT#</a></li>';

t6:=t6||'<li class="dhtmlMenuItem"><a href="#" onclick="javascript:app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)">#TEXT#</a></li>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="htmldbMIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="htmldbMIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>2057401222849534 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML Menu with Sublist',
  p_theme_id  => 2,
  p_theme_class_id => 20,
  p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu" style="display:none;">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 2057528255849534
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td class="t2current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /><br />#TEXT#</td></tr>';

t2:=t2||'<tr><td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /><br />#TEXT#</a></td></tr>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>2057528255849534 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Images List',
  p_theme_id  => 2,
  p_theme_class_id => 5,
  p_list_template_before_rows=>'<table cellpadding="0" cellspacing="0" border="0" summary="0" class="t2VerticalImagesList">',
  p_list_template_after_rows=>'</table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 2057619282849535
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a class="t2current" href="#TAB_LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#TAB_LINK#">#TEXT#</a></li>'||chr(10)||
'';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>2057619282849535 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tabbed Navigation List',
  p_theme_id  => 2,
  p_theme_class_id => 7,
  p_list_template_before_rows=>'<ul class="t2TabbedNavigationList">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 2057729007849535
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t2current"><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>2057729007849535 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Ordered List',
  p_theme_id  => 2,
  p_theme_class_id => 2,
  p_list_template_before_rows=>'<ol class="t2VerticalOrderedList">',
  p_list_template_after_rows=>'</ol>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 2057801540849535
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t2current">#TEXT#</li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>2057801540849535 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List without Bullet',
  p_theme_id  => 2,
  p_theme_class_id => 18,
  p_list_template_before_rows=>'<ul class="t2VerticalUnorderedListwithoutBullet">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 2057932544849537
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li class="t2current">#TEXT#</li>'||chr(10)||
'';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>'||chr(10)||
'';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>2057932544849537 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Unordered List with Bullet',
  p_theme_id  => 2,
  p_theme_class_id => 1,
  p_list_template_before_rows=>'<ul class="t2VerticalUnorderedListwithBullet">',
  p_list_template_after_rows=>'</ul>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 2058016112849537
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<td class="t2current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#/><br />#TEXT#</td>';

t2:=t2||'<td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#/></a><br /><a href="#LINK#">#TEXT#</a></td>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>2058016112849537 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Images with Label List',
  p_theme_id  => 2,
  p_theme_class_id => 4,
  p_list_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t2HorizontalImageswithLabelList"><tr>',
  p_list_template_after_rows=>'</tr></table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 2058120953849537
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t2current">#TEXT#</a>';

t2:=t2||'<a href="#LINK#">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>2058120953849537 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Horizontal Links List',
  p_theme_id  => 2,
  p_theme_class_id => 3,
  p_list_template_before_rows=>'<div class="t2HorizontalLinksList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 2058201064849537
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<a href="#LINK#" class="t2navcurrent">#TEXT#</a>';

t2:=t2||'<a href="#LINK#" class="t2nav">#TEXT#</a>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>2058201064849537 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Vertical Sidebar List',
  p_theme_id  => 2,
  p_theme_class_id => 19,
  p_list_template_before_rows=>'<div class="t2VerticalSidebarList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 2058510059849537
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t2:=t2||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t3:=t3||'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>';

t4:=t4||'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>';

t5:=t5||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t6:=t6||'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>';

t7:=t7||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="htmldbMIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

t8:=t8||'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="htmldbMIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>';

wwv_flow_api.create_list_template (
  p_id=>2058510059849537 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'DHTML List (Image) with Sublist',
  p_theme_id  => 2,
  p_theme_class_id => 21,
  p_list_template_before_rows=>'<div class="dhtmlMenuLG">',
  p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu" style="display:none;">'||chr(10)||
'<li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 2058610021849537
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<li><a href="#LINK#">#TEXT#</a></li>';

t2:=t2||'<li><a href="#LINK#">#TEXT#</a></li>';

t3:=t3||'<li><a href="#LINK#">#TEXT#</a></li>';

t4:=t4||'<li><a href="#LINK#">#TEXT#</a></li>';

t5:=t5||'<li><a href="#LINK#">#TEXT#</a></li>';

t6:=t6||'<li><a href="#LINK#">#TEXT#</a></li>';

t7:=t7||'<li><a href="#LINK#">#TEXT#</a></li>';

t8:=t8||'<li><a href="#LINK#">#TEXT#</a></li>';

wwv_flow_api.create_list_template (
  p_id=>2058610021849537 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Tree List',
  p_theme_id  => 2,
  p_theme_class_id => 23,
  p_list_template_before_rows=>'<ul class="dhtmlTree">',
  p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>',
  p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">',
  p_after_sub_list=>'</ul>',
  p_sub_list_item_current=> t3,
  p_sub_list_item_noncurrent=> t4,
  p_item_templ_curr_w_child=> t5,
  p_item_templ_noncurr_w_child=> t6,
  p_sub_templ_curr_w_child=> t7,
  p_sub_templ_noncurr_w_child=> t8,
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 2058323530849537
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<tr><td class="t2current">#TEXT#<br /><img src="#IMAGE_PREFIX#themes/theme_2/arrow_down.gif" alt="Down" /></td></tr>';

t2:=t2||'<tr><td>#TEXT#<br /><img src="#IMAGE_PREFIX#themes/theme_2/arrow_down.gif" alt="Down" /></td></tr>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>2058323530849537 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Wizard Progress List',
  p_theme_id  => 2,
  p_theme_class_id => 17,
  p_list_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" class="t2WizardProgressList">',
  p_list_template_after_rows=>'<tr><td>&DONE.</td></tr>'||chr(10)||
'</table>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

prompt  ......List Template 2058423624849537
 
begin
 
declare
  t varchar2(32767) := null;
  t2 varchar2(32767) := null;
  t3 varchar2(32767) := null;
  t4 varchar2(32767) := null;
  t5 varchar2(32767) := null;
  t6 varchar2(32767) := null;
  t7 varchar2(32767) := null;
  t8 varchar2(32767) := null;
  l_clob clob;
  l_clob2 clob;
  l_clob3 clob;
  l_clob4 clob;
  l_clob5 clob;
  l_clob6 clob;
  l_clob7 clob;
  l_clob8 clob;
  l_length number := 1;
begin
t:=t||'<table class="t2ButtonList" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2L"><img src="#IMAGE_PREFIX#/themes/theme_2/button_list_left.png" alt="" /></td>'||chr(10)||
'<td class="t2C"><a href="#LINK#">#TEXT#</a></td>'||chr(10)||
'<td class="t2R"><img src="#IMAGE_PREFIX#/themes/theme_2/button_list_right.png" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t2:=t2||'<table class="t2ButtonList" cellspacing="0" cellpadding="0" border="0" summary="">'||chr(10)||
'<tr>'||chr(10)||
'<td class="t2L"><img src="#IMAGE_PREFIX#/themes/theme_2/button_list_left.png" alt="" /></td>'||chr(10)||
'<td class="t2NC"><a href="#LINK#">#TEXT#</a></td>'||chr(10)||
'<td class="t2R"><img src="#IMAGE_PREFIX#/themes/theme_2/button_list_right.png" alt="" /></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>';

t3 := null;
t4 := null;
t5 := null;
t6 := null;
t7 := null;
t8 := null;
wwv_flow_api.create_list_template (
  p_id=>2058423624849537 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_list_template_current=>t,
  p_list_template_noncurrent=> t2,
  p_list_template_name=>'Button List',
  p_theme_id  => 2,
  p_theme_class_id => 6,
  p_list_template_before_rows=>'<div class="t2ButtonList">',
  p_list_template_after_rows=>'</div>',
  p_translate_this_template => 'N',
  p_list_template_comment=>'');
end;
null;
 
end;
/

---------------------------------------
prompt  ...Report Templates
--
prompt  ......Row Template 2059103139849553
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<li>#COLUMN_VALUE#</li>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 2059103139849553 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'One Column Unordered List',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" cellspacing="0" border="0" summary="">'||chr(10)||
'#TOP_PAGINATION#'||chr(10)||
'<tr><td><ul class="t2OneColumnUnorderedList">',
  p_row_template_after_rows =>'</ul><div class="t2CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t2pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>',
  p_previous_page_template=>'<a href="#LINK#" class="t2pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t2pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="#LINK#" class="t2pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 2,
  p_theme_class_id => 3,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 2059103139849553 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'OMIT',
  p_row_template_after_last =>'OMIT');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 2059213532849553
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t2data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 2059213532849553 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Horizontal Border',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="">#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t2HorizontalBorder">',
  p_row_template_after_rows =>'</table><div class="t2CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>'||chr(10)||
'</tr>#PAGINATION#'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th class="t2header"  id="#COLUMN_HEADER_NAME#" #ALIGNMENT#>#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t2pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>',
  p_previous_page_template=>'<a href="#LINK#" class="t2pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t2pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="#LINK#" class="t2pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 2,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 2059213532849553 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 2058727814849537
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t2data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 2058727814849537 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="">#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t2standard">',
  p_row_template_after_rows =>'</table><div class="t2CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t2header">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t2pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>',
  p_previous_page_template=>'<a href="#LINK#" class="t2pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t2pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="#LINK#" class="t2pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 2,
  p_theme_class_id => 4,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 2058727814849537 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 2058825775849551
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<tr><th class="t2header">#COLUMN_HEADER#</th><td class="t2data">#COLUMN_VALUE#</td></tr>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 2058825775849551 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Value Attribute Pairs',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="">'||chr(10)||
'#TOP_PAGINATION#'||chr(10)||
'<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" class="t2ValueAttributePairs">',
  p_row_template_after_rows =>'</table><div class="t2CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'NOT_CONDITIONAL',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t2pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>',
  p_previous_page_template=>'<a href="#LINK#" class="t2pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t2pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="#LINK#" class="t2pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 2,
  p_theme_class_id => 6,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 2058825775849551 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'OMIT',
  p_row_template_after_last =>'<tr><td colspan="2" class="t2seperate"><hr /></td></tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 2058931090849551
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t2data">#COLUMN_VALUE#</td>';

c2:=c2||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t2dataalt">#COLUMN_VALUE#</td>';

c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 2058931090849551 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard, Alternating Row Colors',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="">#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t2standardalternatingrowcolors">',
  p_row_template_after_rows =>'</table><div class="t2CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>'||chr(10)||
'</tr>#PAGINATION#'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t2header">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'EVEN_ROW_NUMBERS',
  p_row_template_display_cond2=>'ODD_ROW_NUMBERS',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'EVEN_ROW_NUMBERS',
  p_next_page_template=>'<a href="#LINK#" class="t2pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>',
  p_previous_page_template=>'<a href="#LINK#" class="t2pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t2pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="#LINK#" class="t2pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 2,
  p_theme_class_id => 5,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 2058931090849551 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 2059013155849551
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t2data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 2059013155849551 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Borderless',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="">#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t2borderless">'||chr(10)||
''||chr(10)||
'',
  p_row_template_after_rows =>'</table><div class="t2CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'</table>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t2header">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="#LINK#" class="t2pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>'||chr(10)||
'',
  p_previous_page_template=>'<a href="#LINK#" class="t2pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="#LINK#" class="t2pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="#LINK#" class="t2pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 2,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 2059013155849551 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 2059307360849553
 
begin
 
declare
  c1 varchar2(32767) := null;
  c2 varchar2(32767) := null;
  c3 varchar2(32767) := null;
  c4 varchar2(32767) := null;
begin
c1:=c1||'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t2data">#COLUMN_VALUE#</td>';

c2 := null;
c3 := null;
c4 := null;
wwv_flow_api.create_row_template (
  p_id=> 2059307360849553 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_row_template_name=> 'Standard (PPR)',
  p_row_template1=> c1,
  p_row_template_condition1=> '',
  p_row_template2=> c2,
  p_row_template_condition2=> '',
  p_row_template3=> c3,
  p_row_template_condition3=> '',
  p_row_template4=> c4,
  p_row_template_condition4=> '',
  p_row_template_before_rows=>'<div id="report#REGION_ID#"><htmldb:#REGION_ID#><table cellpadding="0" border="0" cellspacing="0" summary="">#TOP_PAGINATION#'||chr(10)||
'<tr>'||chr(10)||
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="t2standard">',
  p_row_template_after_rows =>'</table><div class="t2CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>'||chr(10)||
'</tr>'||chr(10)||
'#PAGINATION#'||chr(10)||
'</table><script language=JavaScript type=text/javascript>'||chr(10)||
'<!--'||chr(10)||
'init_htmlPPRReport(''#REGION_ID#'');'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>'||chr(10)||
'</htmldb:#REGION_ID#>'||chr(10)||
'</div>',
  p_row_template_table_attr =>'OMIT',
  p_row_template_type =>'GENERIC_COLUMNS',
  p_column_heading_template =>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t2header">#COLUMN_HEADER#</th>',
  p_row_template_display_cond1=>'0',
  p_row_template_display_cond2=>'0',
  p_row_template_display_cond3=>'0',
  p_row_template_display_cond4=>'0',
  p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t2pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>',
  p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t2pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>',
  p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t2pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>',
  p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" class="t2pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>',
  p_theme_id  => 2,
  p_theme_class_id => 7,
  p_translate_this_template => 'N',
  p_row_template_comment=> '');
end;
null;
 
end;
/

 
begin
 
begin
wwv_flow_api.create_row_template_patch (
  p_id => 2059307360849553 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

---------------------------------------
prompt  ...Label Templates
--
prompt  ......Field Template 2059414949849553
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 2059414949849553 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><span class="t2Optional">',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'<div class="t2InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 2,
  p_theme_class_id => 3,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ......Field Template 2059508447849557
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 2059508447849557 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Optional with Help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><a class="t2OptionalwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_on_error_before_label=>'<div class="t2InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 2,
  p_theme_class_id => 1,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ......Field Template 2059629859849557
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 2059629859849557 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'No Label',
  p_template_body1=>'<span class="t2NoLabel">',
  p_template_body2=>'</span>',
  p_on_error_before_label=>'<div class="t2InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 2,
  p_theme_class_id => 13,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ......Field Template 2059723604849557
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 2059723604849557 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required with help',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_2/required.gif" alt="Required Field Icon" tabindex="999" style="margin-right:5px;"/><a class="t2RequiredwithHelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">',
  p_template_body2=>'</a></label>',
  p_on_error_before_label=>'<div class="t2InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 2,
  p_theme_class_id => 2,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

prompt  ......Field Template 2059812450849557
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 2059812450849557 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_template_name=>'Required',
  p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" tabindex="999"><span class="t2Required"><img src="#IMAGE_PREFIX#themes/theme_2/required.gif" alt="Required Field Icon" style="margin-right:5px;" />',
  p_template_body2=>'</span></label>',
  p_on_error_before_label=>'<div class="t2InlineError">',
  p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>',
  p_theme_id  => 2,
  p_theme_class_id => 4,
  p_translate_this_template=> 'N',
  p_template_comment=> '');
end;
null;
 
end;
/

---------------------------------------
prompt  ...Breadcrumb Templates
--
prompt  ......Breadcrumb Template 2059910997849557
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 2059910997849557 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Breadcrumb Menu',
  p_before_first=>'<div class="t2BreadcrumbMenu">',
  p_current_page_option=>'<span class="t2current">#NAME#</span>',
  p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>',
  p_menu_link_attributes=>'',
  p_between_levels=>'&nbsp;&gt;&nbsp;',
  p_after_last=>'</div>',
  p_max_levels=>12,
  p_start_with_node=>'PARENT_TO_LEAF',
  p_theme_id  => 2,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

prompt  ......Breadcrumb Template 2060016882849576
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 2060016882849576 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=>'Hierarchical Menu',
  p_before_first=>'<ul class="t2HierarchicalMenu">',
  p_current_page_option=>'<li class="t2current">#NAME#</li>',
  p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>',
  p_menu_link_attributes=>'',
  p_between_levels=>'',
  p_after_last=>'</ul>',
  p_max_levels=>11,
  p_start_with_node=>'CHILD_MENU',
  p_theme_id  => 2,
  p_theme_class_id => 2,
  p_translate_this_template => 'N',
  p_template_comments=>'');
end;
null;
 
end;
/

---------------------------------------
prompt  ...Popup List of Values Templates
--
prompt  ......Popup LOV Template 2060721326849581
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 2060721326849581 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_popup_icon=>'#IMAGE_PREFIX#list.gif',
  p_popup_icon_attr=>'width="13" height="13" alt="Popup Lov"',
  p_page_name=>'winlov',
  p_page_title=>'Search Dialog',
  p_page_html_head=>'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/theme.css" type="text/css">'||chr(10)||
'',
  p_page_body_attr=>'onload="first_field()" style="margin:0;"',
  p_before_field_text=>'<div class="t2PopupHead">',
  p_page_heading_text=>'',
  p_page_footer_text =>'',
  p_filter_width     =>'20',
  p_filter_max_width =>'100',
  p_filter_text_attr =>'',
  p_find_button_text =>'Search',
  p_find_button_image=>'',
  p_find_button_attr =>'',
  p_close_button_text=>'Close',
  p_close_button_image=>'',
  p_close_button_attr=>'',
  p_next_button_text =>'Next >',
  p_next_button_image=>'',
  p_next_button_attr =>'',
  p_prev_button_text =>'< Previous',
  p_prev_button_image=>'',
  p_prev_button_attr =>'',
  p_after_field_text=>'</div>',
  p_scrollbars=>'1',
  p_resizable=>'1',
  p_width =>'400',
  p_height=>'450',
  p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>',
  p_result_rows_per_pg=>10,
  p_before_result_set=>'<div class="t2PopupBody">',
  p_theme_id  => 2,
  p_theme_class_id => 1,
  p_translate_this_template => 'N',
  p_after_result_set   =>'</div>');
end;
null;
 
end;
/

---------------------------------------
prompt  ...Calendar Templates
--
prompt  ......Calendar Template 2060110119849576
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 2060110119849576 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar, Alternative 1',
  p_translate_this_template=> 'Y',
  p_day_of_week_format=> '<th class="t2DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t2CalendarAlternative1Holder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="t2MonthTitle">#IMONTH# #YYYY#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="1" summary="0" class="t2CalendarAlternative1">',
  p_month_close_format=> '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'',
  p_day_title_format=> '<div class="t2DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="t2Day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t2Today">',
  p_weekend_title_format=> '<div class="t2WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="t2WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t2NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="t2NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_theme_id  => 2,
  p_theme_class_id => 2,
  p_reference_id=> null);
end;
null;
 
end;
/

prompt  ......Calendar Template 2060329928849579
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 2060329928849579 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Small Calendar',
  p_translate_this_template=> 'Y',
  p_day_of_week_format=> '<th class="t2DayOfWeek" height="12">#DY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t2SmallCalendarHolder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="t2MonthTitle">#IMONTH# #YYYY#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="2" summary="0" class="t2SmallCalendar">',
  p_month_close_format=> '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'',
  p_day_title_format=> '<div class="t2DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="t2Day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t2Today">',
  p_weekend_title_format=> '<div class="t2WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="t2WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t2NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="t2NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_theme_id  => 2,
  p_theme_class_id => 3,
  p_reference_id=> null);
end;
null;
 
end;
/

prompt  ......Calendar Template 2060504504849579
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 2060504504849579 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_cal_template_name=>'Calendar',
  p_translate_this_template=> 'Y',
  p_day_of_week_format=> '<th class="t2DayOfWeek">#IDAY#</th>',
  p_month_title_format=> '<table cellspacing="0" cellpadding="0" border="0" summary="" class="t2CalendarHolder"> '||chr(10)||
' <tr>'||chr(10)||
'   <td class="t2MonthTitle">#IMONTH# #YYYY#</td>'||chr(10)||
' </tr>'||chr(10)||
' <tr>'||chr(10)||
' <td>',
  p_month_open_format=> '<table border="0" cellpadding="0" cellspacing="2" summary="0" class="t2Calendar">',
  p_month_close_format=> '</table></td>'||chr(10)||
'</tr>'||chr(10)||
'</table>'||chr(10)||
'',
  p_day_title_format=> '<div class="t2DayTitle">#DD#</div>',
  p_day_open_format=> '<td class="t2Day" valign="top">',
  p_day_close_format=> '</td>',
  p_today_open_format=> '<td valign="top" class="t2Today">',
  p_weekend_title_format=> '<div class="t2WeekendDayTitle">#DD#</div>',
  p_weekend_open_format => '<td valign="top" class="t2WeekendDay">',
  p_weekend_close_format => '</td>',
  p_nonday_title_format => '<div class="t2NonDayTitle">#DD#</div>',
  p_nonday_open_format => '<td class="t2NonDay" valign="top">',
  p_nonday_close_format => '</td>',
  p_week_title_format => '',
  p_week_open_format => '<tr>',
  p_week_close_format => '</tr> ',
  p_daily_title_format => '<th width="14%" class="calheader">#IDAY#</th>',
  p_daily_open_format => '<tr>',
  p_daily_close_format => '</tr>',
  p_theme_id  => 2,
  p_theme_class_id => 1,
  p_reference_id=> null);
end;
null;
 
end;
/

---------------------------------------
prompt  ...Application Themes
--
prompt  ......Theme 2060819461849582
begin
wwv_flow_api.create_theme (
  p_id                        =>2060819461849582 + wwv_flow_api.g_id_offset,
  p_flow_id                   =>wwv_flow.g_flow_id,
  p_theme_id  => 2,
  p_theme_name=>'Blue and Tan',
  p_default_page_template=>2054510426849500 + wwv_flow_api.g_id_offset,
  p_error_template=>2054510426849500 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=>2053905945849492 + wwv_flow_api.g_id_offset,
  p_breadcrumb_display_point=>'REGION_POSITION_01',
  p_sidebar_display_point=>'REGION_POSITION_02',
  p_login_template            =>2054720636849517 + wwv_flow_api.g_id_offset,
  p_default_button_template   =>2055001144849518 + wwv_flow_api.g_id_offset,
  p_default_region_template   =>2056521297849529 + wwv_flow_api.g_id_offset,
  p_default_chart_template    =>2055728066849525 + wwv_flow_api.g_id_offset,
  p_default_form_template     =>2055824024849525 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>2056521297849529 + wwv_flow_api.g_id_offset,
  p_default_tabform_template  =>2056521297849529 + wwv_flow_api.g_id_offset,
  p_default_wizard_template   =>2055619683849525 + wwv_flow_api.g_id_offset,
  p_default_menur_template    =>2055524673849525 + wwv_flow_api.g_id_offset,
  p_default_listr_template    =>2056521297849529 + wwv_flow_api.g_id_offset,
  p_default_report_template   =>2058727814849537 + wwv_flow_api.g_id_offset,
  p_default_label_template    =>2059508447849557 + wwv_flow_api.g_id_offset,
  p_default_menu_template     =>2059910997849557 + wwv_flow_api.g_id_offset,
  p_default_calendar_template =>2060504504849579 + wwv_flow_api.g_id_offset,
  p_default_list_template     =>2057932544849537 + wwv_flow_api.g_id_offset,
  p_default_option_label      =>2059508447849557 + wwv_flow_api.g_id_offset,
  p_default_required_label    =>2059723604849557 + wwv_flow_api.g_id_offset);
end;
/
---------------------------------------
prompt  ...Build Options used by APPLICATION 198
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...Messages Used by Application: 198
--
---------------------------------------
prompt  ...Language Maps for Application 198
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...Shortcuts
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...Configurations for application198
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...WEB SERVICES (9iR2 or better)
--
---------------------------------------
prompt  ...Authorization Schemes
--
prompt  ......Authentication Schemes 2060911034849589
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'-BUILTIN-';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 2060911034849589 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'HTML DB',
  p_description=>'Use internal Application Express account credentials and login page in this application.',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'101',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&p_next_flow_page_sess=&APP_ID.:1',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

prompt  ......Authentication Schemes 2061005525849590
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1:=s1||'-DATABASE-';

s2 := null;
s3 := null;
s4 := null;
s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 2061005525849590 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'DATABASE',
  p_description=>'Use database authentication (user identified by DAD).',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

prompt  ......Authentication Schemes 2061107584849590
 
begin
 
declare
  s1 varchar2(32767) := null;
  s2 varchar2(32767) := null;
  s3 varchar2(32767) := null;
  s4 varchar2(32767) := null;
  s5 varchar2(32767) := null;
begin
s1 := null;
s2 := null;
s3 := null;
s4:=s4||'return false; end;--';

s5 := null;
wwv_flow_api.create_auth_setup (
  p_id=> 2061107584849590 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> 'DATABASE ACCOUNT',
  p_description=>'Use database account credentials.',
  p_page_sentry_function=> s1,
  p_sess_verify_function=> s2,
  p_pre_auth_process=> s3,
  p_auth_function=> s4,
  p_post_auth_process=> s5,
  p_invalid_session_page=>'101',
  p_invalid_session_url=>'',
  p_cookie_name=>'',
  p_cookie_path=>'',
  p_cookie_domain=>'',
  p_ldap_host=>'',
  p_ldap_port=>'',
  p_ldap_string=>'',
  p_attribute_01=>'',
  p_attribute_02=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&p_next_flow_page_sess=&APP_ID.:1',
  p_attribute_03=>'',
  p_attribute_04=>'',
  p_attribute_05=>'',
  p_attribute_06=>'',
  p_attribute_07=>'',
  p_attribute_08=>'',
  p_required_patch=>'');
end;
null;
 
end;
/

---------------------------------------
prompt  ...Application Entry Points
--
 
begin
 
null;
 
end;
/

commit;
commit;
begin 
execute immediate 'alter session set nls_numeric_characters='''||wwv_flow_api.g_nls_numeric_chars||'''';
end;
/
set verify on
set feedback on
prompt  ...done
