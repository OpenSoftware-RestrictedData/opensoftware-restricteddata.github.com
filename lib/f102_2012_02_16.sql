 
--------------------------------------------------------------------
prompt  APPLICATION 102 - ORACLE_OF_DELPHE
--
-- Application Export:
--   Application:     102
--   Name:            ORACLE_OF_DELPHE
--   Date and Time:   11:45 Thursday February 16, 2012
--   Exported By:     IVAN
--   Flashback:       0
--   Version: 2.1.0.00.39
 
-- Import:
--   Using application application builder
--   or
--   Using sqlplus as the Oracle user: FLOWS_020100
 
-- Application Statistics:
--   Pages:                16
--     Items:             124
--     Computations:        0
--     Validations:         2
--     Processes:          34
--     Regions:            19
--     Buttons:            43
--   Shared Components
--     Breadcrumbs:         1
--        Entries           3
--     Items:               1
--     Computations:        0
--     Processes:           0
--     Parent Tabs:         0
--     Tab Sets:            1
--        Tabs:             5
--     NavBars:             1
--     Lists:               0
--     Shortcuts:           1
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
   wwv_flow.g_flow_id := 102;
   wwv_flow_api.g_id_offset := 0;
null;
 
end;
/

 
begin
 
   -- Remove Application
wwv_flow_api.remove_flow(102);
 
end;
/

 
begin
 
wwv_flow_audit.remove_audit_trail(102);
null;
 
end;
/

 
begin
 
wwv_flow_api.create_flow(
  p_id    => 102,
  p_display_id=> 102,
  p_owner => 'IVAN',
  p_name  => 'ORACLE_OF_DELPHE',
  p_alias => 'F116',
  p_page_view_logging => 'YES',
  p_default_page_template=> 2422347813900637 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=> 2421734358900621 + wwv_flow_api.g_id_offset,
  p_default_region_template=> 2424350913900657 + wwv_flow_api.g_id_offset,
  p_error_template    => 2422347813900637 + wwv_flow_api.g_id_offset,
  p_checksum_salt_last_reset => '20120216112829',
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
  p_cust_authentication_process=> '.'||to_char(2428929476900707 + wwv_flow_api.g_id_offset)||'.',
  p_cust_authentication_page=> '',
  p_custom_auth_login_url=> '',
  p_flow_version      => 'release 1.0',
  p_flow_status       => 'AVAILABLE_W_EDIT_LINK',
  p_flow_unavailable_text=> 'This application is currently unavailable at this time.',
  p_build_status      => 'RUN_AND_BUILD',
  p_exact_substitutions_only=> 'Y',
  p_vpd               => '',
  p_theme_id => 2,
  p_default_label_template => 2427332484900676 + wwv_flow_api.g_id_offset,
  p_default_report_template => 2426546339900670 + wwv_flow_api.g_id_offset,
  p_default_list_template => 2425749527900668 + wwv_flow_api.g_id_offset,
  p_default_menu_template => 2427747557900676 + wwv_flow_api.g_id_offset,
  p_default_button_template => 2422849353900641 + wwv_flow_api.g_id_offset,
  p_default_chart_template => 2423529578900652 + wwv_flow_api.g_id_offset,
  p_default_form_template => 2423649325900652 + wwv_flow_api.g_id_offset,
  p_default_wizard_template => 2423436817900652 + wwv_flow_api.g_id_offset,
  p_default_tabform_template => 2424350913900657 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>2424350913900657 + wwv_flow_api.g_id_offset,
  p_default_menur_template => 2423334690900652 + wwv_flow_api.g_id_offset,
  p_default_listr_template => 2424350913900657 + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20120216112829',
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
  p_id             => 2429026804900709 + wwv_flow_api.g_id_offset,
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
  p_id=> 2437625743916538 + wwv_flow_api.g_id_offset,
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
  p_id=> 2430433933900755 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 10,
  p_tab_name=> 'T_STDYDSCR',
  p_tab_text => 'STDYDSCR',
  p_tab_step => 1,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
wwv_flow_api.create_tab (
  p_id=> 2430941048900766 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 20,
  p_tab_name=> 'T_FILEDSCR',
  p_tab_text => 'FILEDSCR',
  p_tab_step => 2,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
wwv_flow_api.create_tab (
  p_id=> 2659153829466115 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 40,
  p_tab_name=> 'T_ACCESSSTDY',
  p_tab_text => 'ACCESSSTDY',
  p_tab_step => 4,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
wwv_flow_api.create_tab (
  p_id=> 1168805521332810 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 50,
  p_tab_name=> 'T_KEYWORDS',
  p_tab_text => 'KEYWORDS',
  p_tab_step => 10,
  p_tab_also_current_for_pages => '',
  p_tab_parent_tabset=>'',
  p_required_patch=>null + wwv_flow_api.g_id_offset,
  p_tab_comment  => '');
 
wwv_flow_api.create_tab (
  p_id=> 2532704434381626 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_tab_sequence=> 60,
  p_tab_name=> 'T_OTHRSTDYMAT',
  p_tab_text => 'OTHRSTDYMAT',
  p_tab_step => 11,
  p_tab_also_current_for_pages => '',
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
prompt  ...PAGE 1: STDYDSCR
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
  p_name   => 'STDYDSCR',
  p_step_title=> 'STDYDSCR',
  p_step_sub_title => 'STDYDSCR',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20100809232216',
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
  p_id=> 2430637574900763 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_plug_name=> 'Breadcrumbs',
  p_plug_template=> 2423334690900652+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'REGION_POSITION_01',
  p_plug_source  => s,
  p_plug_source_type=> 'M'|| to_char(2430126750900748 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 2427747557900676+ wwv_flow_api.g_id_offset,
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
s:=s||'select "IDNO" AS GOTOFILES,'||chr(10)||
'"PKEY", '||chr(10)||
'"TITL",'||chr(10)||
'"AUTHENTY",'||chr(10)||
'dbms_lob.substr("ABSTRACT",4000,1) "ABSTRACT"'||chr(10)||
'from "#OWNER#"."STDYDSCR" '||chr(10)||
'WHERE IDNO like ''%''||upper(:p1_search)||''%'''||chr(10)||
'OR IDNO like ''%''||lower(:p1_search)||''%'''||chr(10)||
'  '||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 2755147752891190 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 1,
  p_name=> 'Stdydscr',
  p_template=> 2424350913900657+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_customized                   => '0',
  p_translate_title              => 'Y',
  p_query_row_template           => 2426546339900670+ wwv_flow_api.g_id_offset,
  p_query_headings_type          => 'COLON_DELMITED_LIST',
  p_query_num_rows               => '10',
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
  p_id=> 2760827150909597 + wwv_flow_api.g_id_offset,
  p_region_id=> 2755147752891190 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'GOTOFILES',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Gotofiles',
  p_column_link=> 'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::P2_IDNO:#GOTOFILES#',
  p_column_linktext=> '#GOTOFILES#',
  p_column_alignment=> 'LEFT',
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
  p_id=> 2755425470891195 + wwv_flow_api.g_id_offset,
  p_region_id=> 2755147752891190 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'PKEY',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Edit',
  p_column_link=> 'f?p=#APP_ID#:33:#APP_SESSION#::::P33_PKEY:#PKEY#',
  p_column_linktext=> '<img src="#IMAGE_PREFIX#edit-white.gif"  border="0">',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
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
  p_id=> 2755524777891196 + wwv_flow_api.g_id_offset,
  p_region_id=> 2755147752891190 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'TITL',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Titl',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'STDYDSCR',
  p_ref_column_name=> 'TITL',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2819530343536817 + wwv_flow_api.g_id_offset,
  p_region_id=> 2755147752891190 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'AUTHENTY',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Authenty',
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
  p_id=> 2755829025891196 + wwv_flow_api.g_id_offset,
  p_region_id=> 2755147752891190 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'ABSTRACT',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Abstract',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'STDYDSCR',
  p_ref_column_name=> 'ABSTRACT',
  p_column_comment               => '');
end;
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 2513741899705101 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 1,
  p_button_sequence=> 30,
  p_button_plug_id => 2512924736705098+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:11:&SESSION.::NO:11',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2755946508891196 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 1,
  p_button_sequence=> 30,
  p_button_plug_id => 2755147752891190+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:33:&SESSION.::NO:33',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2571152308898706 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 1,
  p_button_sequence=> 30,
  p_button_plug_id => 2570347245898705+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:17:&SESSION.::NO:17',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2585839838933616 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 1,
  p_button_sequence=> 30,
  p_button_plug_id => 2585049917933610+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:19:&SESSION.::NO:19',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2606237886982571 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 1,
  p_button_sequence=> 30,
  p_button_plug_id => 2605447315982569+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:21:&SESSION.::NO:21',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>2455226647159453 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_branch_action=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#',
  p_branch_point=> 'AFTER_PROCESSING',
  p_branch_type=> 'REDIRECT_URL',
  p_branch_sequence=> 999,
  p_branch_comment=> '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1411605931917037 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_SEARCH',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 2755147752891190+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Search',
  p_source_type=> 'STATIC',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1412212164918778 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 1,
  p_name=>'P1_GO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 2755147752891190+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default => 'Go',
  p_prompt=>'Go',
  p_source=>'Go',
  p_source_type=> 'STATIC',
  p_display_as=> 'BUTTON',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'NO',
  p_colspan => 1,
  p_rowspan => 1,
  p_button_image => 'go.gif',
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_is_persistent=> 'N',
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
prompt  ...PAGE 2: FILEDSCR
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
  p_name   => 'FILEDSCR',
  p_step_title=> 'FILEDSCR',
  p_step_sub_title => 'FILEDSCR',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20120117141547',
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
s:=s||'select "FILEID", '||chr(10)||
'"IDNO",'||chr(10)||
'"FILENAME",'||chr(10)||
'"FILETYPE",'||chr(10)||
'"FILEDSCR",'||chr(10)||
'"NOTES",'||chr(10)||
'"FILELOCATION",'||chr(10)||
'"FILEID" AS GOTODATADSCR,'||chr(10)||
'"PUBLISHDDI",'||chr(10)||
'"REQID"'||chr(10)||
'from "#OWNER#"."FILEDSCR" '||chr(10)||
'WHERE "IDNO" = :P2_IDNO'||chr(10)||
'  '||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 2532947815790925 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_name=> 'Filedscr',
  p_template=> 2424350913900657+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_customized                   => '0',
  p_translate_title              => 'Y',
  p_query_row_template           => 2426546339900670+ wwv_flow_api.g_id_offset,
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
  p_id=> 2533230903790928 + wwv_flow_api.g_id_offset,
  p_region_id=> 2532947815790925 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'FILEID',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Edit',
  p_column_link=> 'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::P13_FILEID,P2_IDNO:#FILEID#,#IDNO#',
  p_column_linktext=> '<img src="#IMAGE_PREFIX#edit-white.gif"  border="0">',
  p_column_alignment=> 'RIGHT',
  p_heading_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
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
  p_id=> 2533339804790928 + wwv_flow_api.g_id_offset,
  p_region_id=> 2532947815790925 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'IDNO',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Idno',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'LEFT',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_lov_show_nulls=> 'NO',
  p_pk_col_source=> s,
  p_lov_display_extra=> 'YES',
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
  p_id=> 2533443543790928 + wwv_flow_api.g_id_offset,
  p_region_id=> 2532947815790925 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'FILENAME',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Filename',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
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
  p_id=> 2533552846790928 + wwv_flow_api.g_id_offset,
  p_region_id=> 2532947815790925 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'FILETYPE',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Filetype',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'FILEDSCR',
  p_ref_column_name=> 'FILETYPE',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1805421647858357 + wwv_flow_api.g_id_offset,
  p_region_id=> 2532947815790925 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'FILEDSCR',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Filedscr',
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
  p_id=> 2533625937790928 + wwv_flow_api.g_id_offset,
  p_region_id=> 2532947815790925 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'NOTES',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Notes',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'FILEDSCR',
  p_ref_column_name=> 'NOTES',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1900124542758043 + wwv_flow_api.g_id_offset,
  p_region_id=> 2532947815790925 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'FILELOCATION',
  p_column_display_sequence=> 9,
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
  p_id=> 2770639168130787 + wwv_flow_api.g_id_offset,
  p_region_id=> 2532947815790925 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'GOTODATADSCR',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Gotodatadscr',
  p_column_link=> 'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::P3_FILEID:#GOTODATADSCR#',
  p_column_linktext=> '#GOTODATADSCR#',
  p_column_alignment=> 'LEFT',
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
  p_id=> 1691819151856101 + wwv_flow_api.g_id_offset,
  p_region_id=> 2532947815790925 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 9,
  p_form_element_id=> null,
  p_column_alias=> 'PUBLISHDDI',
  p_column_display_sequence=> 8,
  p_column_heading=> 'Publishddi',
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
  p_id=> 2200208102865212 + wwv_flow_api.g_id_offset,
  p_region_id=> 2532947815790925 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 10,
  p_form_element_id=> null,
  p_column_alias=> 'REQID',
  p_column_display_sequence=> 10,
  p_column_heading=> 'Reqid',
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
end;
/
declare
    s varchar2(32767) := null;
    l_clob clob;
    l_length number := 1;
begin
s := null;
wwv_flow_api.create_page_plug (
  p_id=> 2431141025900766 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 2,
  p_plug_name=> 'Breadcrumbs',
  p_plug_template=> 2423334690900652+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'REGION_POSITION_01',
  p_plug_source  => s,
  p_plug_source_type=> 'M'|| to_char(2430126750900748 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 2427747557900676+ wwv_flow_api.g_id_offset,
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
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 2533725607790928 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 2,
  p_button_sequence=> 30,
  p_button_plug_id => 2532947815790925+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:13:&SESSION.::NO:13',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
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
  p_id=>2449554684114094 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 2,
  p_name=>'P2_IDNO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
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
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 2536031133807538 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 2532947815790925 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 1,
  p_query_column_name=> 'FILEID',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 2536137976807538 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 2532947815790925 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 2,
  p_query_column_name=> 'IDNO',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 2536231377807538 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 2532947815790925 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 3,
  p_query_column_name=> 'FILENAME',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 2536344798807538 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 2532947815790925 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 4,
  p_query_column_name=> 'FILETYPE',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
wwv_flow_api.create_region_rpt_cols (
  p_id     => 2536457061807538 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_plug_id=> 2532947815790925 + wwv_flow_api.g_id_offset,
  p_column_sequence=> 5,
  p_query_column_name=> 'NOTES',
  p_display_as=> 'TEXT',
  p_column_comment=> '');
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 3: DATADSCR
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph := null;
wwv_flow_api.create_page(
  p_id     => 3,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'DATADSCR',
  p_step_title=> 'DATADSCR',
  p_step_sub_title => 'DATADSCR',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20100719162852',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>3,p_text=>h);
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
  p_id=> 2431656950900766 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_plug_name=> 'Breadcrumbs',
  p_plug_template=> 2423334690900652+ wwv_flow_api.g_id_offset,
  p_plug_display_sequence=> 1,
  p_plug_display_column  => 1,
  p_plug_display_point   => 'REGION_POSITION_01',
  p_plug_source  => s,
  p_plug_source_type=> 'M'|| to_char(2430126750900748 + wwv_flow_api.g_id_offset),
  p_menu_template_id=> 2427747557900676+ wwv_flow_api.g_id_offset,
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
s:=s||'select "PKEY", '||chr(10)||
'"LABL",'||chr(10)||
'"NOTES",'||chr(10)||
'"SPECPERMVAR",'||chr(10)||
'"FILEID"'||chr(10)||
'from "#OWNER#"."DATADSCR" '||chr(10)||
'WHERE "FILEID" = :P3_FILEID'||chr(10)||
'  '||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 2555231891862169 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 3,
  p_name=> 'datadscrs',
  p_template=> 2424350913900657+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_customized                   => '0',
  p_translate_title              => 'Y',
  p_query_row_template           => 2426546339900670+ wwv_flow_api.g_id_offset,
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
  p_id=> 2555555446862171 + wwv_flow_api.g_id_offset,
  p_region_id=> 2555231891862169 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'PKEY',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Edit',
  p_column_link=> 'f?p=#APP_ID#:15:#APP_SESSION#::::P15_PKEY:#PKEY#',
  p_column_linktext=> '<img src="#IMAGE_PREFIX#edit-white.gif"  border="0">',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'DATADSCR',
  p_ref_column_name=> 'PKEY',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2555641141862171 + wwv_flow_api.g_id_offset,
  p_region_id=> 2555231891862169 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'LABL',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Labl',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'DATADSCR',
  p_ref_column_name=> 'LABL',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2555739153862171 + wwv_flow_api.g_id_offset,
  p_region_id=> 2555231891862169 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'NOTES',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Notes',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'DATADSCR',
  p_ref_column_name=> 'NOTES',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2555838804862171 + wwv_flow_api.g_id_offset,
  p_region_id=> 2555231891862169 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'SPECPERMVAR',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Specpermvar',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'DATADSCR',
  p_ref_column_name=> 'SPECPERMVAR',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2555949583862171 + wwv_flow_api.g_id_offset,
  p_region_id=> 2555231891862169 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'FILEID',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Fileid',
  p_column_alignment=> 'RIGHT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'DATADSCR',
  p_ref_column_name=> 'FILEID',
  p_column_comment               => '');
end;
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 2556052392862171 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 3,
  p_button_sequence=> 30,
  p_button_plug_id => 2555231891862169+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:15:&SESSION.::NO:15',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
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
  p_id=>2478227784314490 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 3,
  p_name=>'P3_FILEID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_use_cache_before_default=> 'YES',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_source_type=> 'STATIC',
  p_display_as=> 'HIDDEN',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'NO',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'LEFT',
  p_field_alignment  => 'LEFT',
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
-- ...updatable report columns for page 3
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 4: ACCESSSTDY
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
  p_tab_set=> 'TS1',
  p_name   => 'ACCESSSTDY',
  p_alias  => 'ACCESSSTDY',
  p_step_title=> 'ACCESSSTDY',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'NO_FIRST_ITEM',
  p_help_text => '',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20101129144955',
  p_page_comment  => '');
 
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select "REQID", '||chr(10)||
'"REQID" AS REQID2,'||chr(10)||
'"IDNO",'||chr(10)||
'"REQUESTER",'||chr(10)||
'"PROJECTTITLE",'||chr(10)||
'"ETHICS",'||chr(10)||
'"REQUESTDATE",'||chr(10)||
'"ACCESSSTARTDATE",'||chr(10)||
'"ACCESSENDDATE"'||chr(10)||
'from "#OWNER#"."ACCESSSTDY" '||chr(10)||
'WHERE IDNO = :P2_IDNO'||chr(10)||
'  '||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 2670156889503871 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 4,
  p_name=> 'Report on ACCESSSTDY',
  p_template=> 2424350913900657+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_customized                   => '0',
  p_translate_title              => 'Y',
  p_query_row_template           => 2426546339900670+ wwv_flow_api.g_id_offset,
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
  p_id=> 2670456405503872 + wwv_flow_api.g_id_offset,
  p_region_id=> 2670156889503871 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'REQID',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Edit',
  p_column_link=> 'f?p=#APP_ID#:26:#APP_SESSION#::::P26_REQID:#REQID#',
  p_column_linktext=> '<img src="#IMAGE_PREFIX#edit-white.gif"  border="0">',
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
  p_id=> 2674949399526035 + wwv_flow_api.g_id_offset,
  p_region_id=> 2670156889503871 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'REQID2',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Reqid2',
  p_column_link=> 'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::P5_REQID:#REQID2#',
  p_column_linktext=> '#REQID2#',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'N',
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
  p_id=> 2670538326503872 + wwv_flow_api.g_id_offset,
  p_region_id=> 2670156889503871 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'IDNO',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Idno',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'ACCESSSTDY',
  p_ref_column_name=> 'IDNO',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2670644930503872 + wwv_flow_api.g_id_offset,
  p_region_id=> 2670156889503871 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
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
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'ACCESSSTDY',
  p_ref_column_name=> 'REQUESTER',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2670725931503872 + wwv_flow_api.g_id_offset,
  p_region_id=> 2670156889503871 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'PROJECTTITLE',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Projecttitle',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'ACCESSSTDY',
  p_ref_column_name=> 'PROJECTTITLE',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2263616442529418 + wwv_flow_api.g_id_offset,
  p_region_id=> 2670156889503871 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'ETHICS',
  p_column_display_sequence=> 6,
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
  p_id=> 2670836458503872 + wwv_flow_api.g_id_offset,
  p_region_id=> 2670156889503871 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'REQUESTDATE',
  p_column_display_sequence=> 7,
  p_column_heading=> 'Requestdate',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_default_sort_column_sequence=> 0,
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'ACCESSSTDY',
  p_ref_column_name=> 'REQUESTDATE',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2236901932773207 + wwv_flow_api.g_id_offset,
  p_region_id=> 2670156889503871 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'ACCESSSTARTDATE',
  p_column_display_sequence=> 8,
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
  p_id=> 2237017208773207 + wwv_flow_api.g_id_offset,
  p_region_id=> 2670156889503871 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 9,
  p_form_element_id=> null,
  p_column_alias=> 'ACCESSENDDATE',
  p_column_display_sequence=> 9,
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
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 2670940905503874 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 4,
  p_button_sequence=> 30,
  p_button_plug_id => 2670156889503871+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:26:&SESSION.::NO:26',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
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
prompt  ...PAGE 5: ACCESSORS
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h := null;
ph := null;
wwv_flow_api.create_page(
  p_id     => 5,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'ACCESSORS',
  p_alias  => 'ACCESSORS',
  p_step_title=> 'ACCESSORS',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'NO_FIRST_ITEM',
  p_help_text => '',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20101126164236',
  p_page_comment  => '');
 
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select "PKEY", '||chr(10)||
'"REQID",'||chr(10)||
'"ACCESSORNAMES",'||chr(10)||
'"LOCATION",'||chr(10)||
'"ACCESSSTARTDATE",'||chr(10)||
'"ACCESSENDDATE",'||chr(10)||
'"ACCESSREVOKED",'||chr(10)||
'"OTHERMAT",'||chr(10)||
'"APPROVAL"'||chr(10)||
'from "#OWNER#"."ACCESSORS" '||chr(10)||
'WHERE REQID = :P5_REQID'||chr(10)||
'  '||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 2690338565604914 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 5,
  p_name=> 'Report on ACCESSORS',
  p_template=> 2424350913900657+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_customized                   => '0',
  p_translate_title              => 'Y',
  p_query_row_template           => 2426546339900670+ wwv_flow_api.g_id_offset,
  p_query_headings_type          => 'COLON_DELMITED_LIST',
  p_query_num_rows               => '15',
  p_query_options                => 'DERIVED_REPORT_COLUMNS',
  p_query_no_data_found          => 'no data found',
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
  p_id=> 2690639559604928 + wwv_flow_api.g_id_offset,
  p_region_id=> 2690338565604914 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'PKEY',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Edit',
  p_column_link=> 'f?p=#APP_ID#:31:#APP_SESSION#::::P31_PKEY:#PKEY#',
  p_column_linktext=> '<img src="#IMAGE_PREFIX#edit-white.gif"  border="0">',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'ACCESSORS',
  p_ref_column_name=> 'PKEY',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2690738251604928 + wwv_flow_api.g_id_offset,
  p_region_id=> 2690338565604914 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'REQID',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Reqid',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'ACCESSORS',
  p_ref_column_name=> 'REQID',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2690843964604928 + wwv_flow_api.g_id_offset,
  p_region_id=> 2690338565604914 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'ACCESSORNAMES',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Accessornames',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'ACCESSORS',
  p_ref_column_name=> 'ACCESSORNAMES',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2690953949604928 + wwv_flow_api.g_id_offset,
  p_region_id=> 2690338565604914 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'LOCATION',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Location',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'ACCESSORS',
  p_ref_column_name=> 'LOCATION',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2691026269604928 + wwv_flow_api.g_id_offset,
  p_region_id=> 2690338565604914 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'ACCESSSTARTDATE',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Accessstartdate',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'ACCESSORS',
  p_ref_column_name=> 'ACCESSSTARTDATE',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2691147513604928 + wwv_flow_api.g_id_offset,
  p_region_id=> 2690338565604914 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 6,
  p_form_element_id=> null,
  p_column_alias=> 'ACCESSENDDATE',
  p_column_display_sequence=> 6,
  p_column_heading=> 'Accessenddate',
  p_column_alignment=> 'LEFT',
  p_heading_alignment=> 'CENTER',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'ACCESSORS',
  p_ref_column_name=> 'ACCESSENDDATE',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1478024227868467 + wwv_flow_api.g_id_offset,
  p_region_id=> 2690338565604914 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 7,
  p_form_element_id=> null,
  p_column_alias=> 'ACCESSREVOKED',
  p_column_display_sequence=> 7,
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
  p_id=> 2281910800361750 + wwv_flow_api.g_id_offset,
  p_region_id=> 2690338565604914 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 8,
  p_form_element_id=> null,
  p_column_alias=> 'OTHERMAT',
  p_column_display_sequence=> 8,
  p_column_heading=> 'Othermat',
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
  p_id=> 2466900251504328 + wwv_flow_api.g_id_offset,
  p_region_id=> 2690338565604914 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 9,
  p_form_element_id=> null,
  p_column_alias=> 'APPROVAL',
  p_column_display_sequence=> 9,
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
 
wwv_flow_api.create_page_button(
  p_id             => 2691227474604928 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 5,
  p_button_sequence=> 30,
  p_button_plug_id => 2690338565604914+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:31:&SESSION.::NO:31',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
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
  p_id=>2692243306609479 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 5,
  p_name=>'P5_REQID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 2690338565604914+wwv_flow_api.g_id_offset,
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
-- ...updatable report columns for page 5
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 10: KEYWORDS
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h := null;
ph := null;
wwv_flow_api.create_page(
  p_id     => 10,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'KEYWORDS',
  p_alias  => 'KEYWORDS',
  p_step_title=> 'KEYWORDS',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'NO_FIRST_ITEM',
  p_help_text => '',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20100429114417',
  p_page_comment  => '');
 
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select "PKEY", '||chr(10)||
'"IDNO",'||chr(10)||
'"KEYWORDS"'||chr(10)||
'from "#OWNER#"."KEYWORDS" '||chr(10)||
'WHERE "IDNO" = :P2_IDNO'||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 1173830647337531 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 10,
  p_name=> 'Report on KEYWORDS',
  p_template=> 2424350913900657+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_customized                   => '0',
  p_translate_title              => 'Y',
  p_query_row_template           => 2426546339900670+ wwv_flow_api.g_id_offset,
  p_query_headings_type          => 'COLON_DELMITED_LIST',
  p_query_num_rows               => '15',
  p_query_options                => 'DERIVED_REPORT_COLUMNS',
  p_query_no_data_found          => 'no data found',
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
  p_id=> 1174119424337531 + wwv_flow_api.g_id_offset,
  p_region_id=> 1173830647337531 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'PKEY',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Edit',
  p_column_link=> 'f?p=#APP_ID#:12:#APP_SESSION#::::P12_PKEY:#PKEY#',
  p_column_linktext=> '<img src="#IMAGE_PREFIX#edit-white.gif"  border="0">',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'KEYWORDS',
  p_ref_column_name=> 'PKEY',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1174206292337531 + wwv_flow_api.g_id_offset,
  p_region_id=> 1173830647337531 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'IDNO',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Idno',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'KEYWORDS',
  p_ref_column_name=> 'IDNO',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 1174330025337532 + wwv_flow_api.g_id_offset,
  p_region_id=> 1173830647337531 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'KEYWORDS',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Keywords',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'KEYWORDS',
  p_ref_column_name=> 'KEYWORDS',
  p_column_comment               => '');
end;
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 1174418995337532 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 10,
  p_button_sequence=> 30,
  p_button_plug_id => 1173830647337531+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=102:12:&SESSION.::NO:12',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
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

 
begin
 
---------------------------------------
-- ...updatable report columns for page 10
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 11: OTHRSTDYMAT
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h := null;
ph := null;
wwv_flow_api.create_page(
  p_id     => 11,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> 'TS1',
  p_name   => 'OTHRSTDYMAT',
  p_alias  => 'OTHRSTDYMAT',
  p_step_title=> 'OTHRSTDYMAT',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> 'NO_FIRST_ITEM',
  p_help_text => '',
  p_html_page_header => '',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20101201103515',
  p_page_comment  => '');
 
end;
 
end;
/

declare
  s varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
s:=s||'select "OTHRSTDYMATID", '||chr(10)||
'"IDNO",'||chr(10)||
'"RELSTDYIDNO",'||chr(10)||
'dbms_lob.substr("RELPUBL",4000,1) "RELPUBL",'||chr(10)||
'dbms_lob.substr("NOTES",4000,1) "NOTES"'||chr(10)||
'from "#OWNER#"."OTHRSTDYMAT" '||chr(10)||
'WHERE IDNO = :P2_IDNO'||chr(10)||
'  '||chr(10)||
'';

wwv_flow_api.create_report_region (
  p_id=> 2557301642440125 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 11,
  p_name=> 'Report on OTHRSTDYMAT',
  p_template=> 2424350913900657+ wwv_flow_api.g_id_offset,
  p_display_sequence=> 10,
  p_display_column=> 1,
  p_display_point=> 'AFTER_SHOW_ITEMS',
  p_source=> s,
  p_source_type=> 'SQL_QUERY',
  p_display_error_message=> '#SQLERRM#',
  p_customized                   => '0',
  p_translate_title              => 'Y',
  p_query_row_template           => 2426546339900670+ wwv_flow_api.g_id_offset,
  p_query_headings_type          => 'COLON_DELMITED_LIST',
  p_query_num_rows               => '15',
  p_query_options                => 'DERIVED_REPORT_COLUMNS',
  p_query_no_data_found          => 'no data found',
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
  p_id=> 2557603700440126 + wwv_flow_api.g_id_offset,
  p_region_id=> 2557301642440125 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 1,
  p_form_element_id=> null,
  p_column_alias=> 'OTHRSTDYMATID',
  p_column_display_sequence=> 1,
  p_column_heading=> 'Edit',
  p_column_link=> 'f?p=#APP_ID#:16:#APP_SESSION#::::P16_OTHRSTDYMATID:#OTHRSTDYMATID#',
  p_column_linktext=> '<img src="#IMAGE_PREFIX#edit-white.gif"  border="0">',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'OTHRSTDYMAT',
  p_ref_column_name=> 'OTHRSTDYMATID',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2557718177440126 + wwv_flow_api.g_id_offset,
  p_region_id=> 2557301642440125 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 2,
  p_form_element_id=> null,
  p_column_alias=> 'IDNO',
  p_column_display_sequence=> 2,
  p_column_heading=> 'Idno',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'OTHRSTDYMAT',
  p_ref_column_name=> 'IDNO',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2557819128440126 + wwv_flow_api.g_id_offset,
  p_region_id=> 2557301642440125 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 3,
  p_form_element_id=> null,
  p_column_alias=> 'RELSTDYIDNO',
  p_column_display_sequence=> 3,
  p_column_heading=> 'Relstdyidno',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'OTHRSTDYMAT',
  p_ref_column_name=> 'RELSTDYIDNO',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2557916962440126 + wwv_flow_api.g_id_offset,
  p_region_id=> 2557301642440125 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 4,
  p_form_element_id=> null,
  p_column_alias=> 'RELPUBL',
  p_column_display_sequence=> 4,
  p_column_heading=> 'Relpubl',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'OTHRSTDYMAT',
  p_ref_column_name=> 'RELPUBL',
  p_column_comment               => '');
end;
declare
  s varchar2(32767) := null;
begin
s := null;
wwv_flow_api.create_report_columns (
  p_id=> 2558021702440126 + wwv_flow_api.g_id_offset,
  p_region_id=> 2557301642440125 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_query_column_id=> 5,
  p_form_element_id=> null,
  p_column_alias=> 'NOTES',
  p_column_display_sequence=> 5,
  p_column_heading=> 'Notes',
  p_column_alignment=> 'LEFT',
  p_disable_sort_column=> 'Y',
  p_sum_column=> 'N',
  p_hidden_column=> 'N',
  p_display_as=> 'WITHOUT_MODIFICATION',
  p_pk_col_source=> s,
  p_ref_schema=> 'IVAN',
  p_ref_table_name=> 'OTHRSTDYMAT',
  p_ref_column_name=> 'NOTES',
  p_column_comment               => '');
end;
end;
/
 
begin
 
wwv_flow_api.create_page_button(
  p_id             => 2558118041440126 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 11,
  p_button_sequence=> 30,
  p_button_plug_id => 2557301642440125+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=102:16:&SESSION.::NO:16',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
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

 
begin
 
---------------------------------------
-- ...updatable report columns for page 11
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 12: Form on KEYWORDS
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 12,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Form on KEYWORDS',
  p_step_title=> 'Form on KEYWORDS',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20100429114446',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>12,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>12,p_text=>ph);
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
  p_id=> 1171124040337528 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 12,
  p_plug_name=> 'Form on KEYWORDS',
  p_plug_template=> 2423649325900652+ wwv_flow_api.g_id_offset,
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
  p_id             => 1171421428337528 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 12,
  p_button_sequence=> 30,
  p_button_plug_id => 1171124040337528+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P12_PKEY',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 1171603788337528 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 12,
  p_button_sequence=> 10,
  p_button_plug_id => 1171124040337528+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 1171310580337528 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 12,
  p_button_sequence=> 40,
  p_button_plug_id => 1171124040337528+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P12_PKEY',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 1171522125337528 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 12,
  p_button_sequence=> 20,
  p_button_plug_id => 1171124040337528+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE'');',
  p_button_condition=> 'P12_PKEY',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>1172202014337529 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 12,
  p_branch_action=> 'f?p=&APP_ID.:10:&SESSION.&success_msg=#SUCCESS_MSG#',
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
  p_id=>1172419916337529 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 12,
  p_name=>'P12_PKEY',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 1171124040337528+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Pkey',
  p_source=>'PKEY',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1172624479337529 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 12,
  p_name=>'P12_IDNO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 1171124040337528+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default => ':P2_IDNO',
  p_item_default_type => 'PLSQL_EXPRESSION',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1172826761337529 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 12,
  p_name=>'P12_KEYWORDS',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 1171124040337528+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Keywords',
  p_source=>'KEYWORDS',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
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
p:=p||'F|#OWNER#:KEYWORDS:P12_PKEY:PKEY';

wwv_flow_api.create_page_process(
  p_id     => 1173028250337529 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 12,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from KEYWORDS',
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
p:=p||'declare '||chr(10)||
'  function get_pk return varchar2 '||chr(10)||
'  is '||chr(10)||
'  begin '||chr(10)||
'    for c1 in (select KEYWORD_SEQ.nextval next_val'||chr(10)||
'               from dual)'||chr(10)||
'    loop'||chr(10)||
'        return c1.next_val;'||chr(10)||
'    end loop;'||chr(10)||
'  end; '||chr(10)||
'begin '||chr(10)||
'  :P12_PKEY := get_pk; '||chr(10)||
'end; ';

wwv_flow_api.create_page_process(
  p_id     => 1173205875337531 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 12,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get PK',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to get primary key item value.',
  p_process_when_button_id=>1171310580337528 + wwv_flow_api.g_id_offset,
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
p:=p||'#OWNER#:KEYWORDS:P12_PKEY:PKEY|IUD';

wwv_flow_api.create_page_process(
  p_id     => 1173406534337531 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 12,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of KEYWORDS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process row of table KEYWORDS.',
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
p:=p||'12';

wwv_flow_api.create_page_process(
  p_id     => 1173628551337531 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 12,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>1171522125337528 + wwv_flow_api.g_id_offset,
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
-- ...updatable report columns for page 12
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 13: Form on FILEDSCR
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 13,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Form on FILEDSCR',
  p_step_title=> 'Form on FILEDSCR',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20120216112829',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>13,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>13,p_text=>ph);
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
  p_id=> 2528832206790899 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 13,
  p_plug_name=> 'Filedscr',
  p_plug_template=> 2423649325900652+ wwv_flow_api.g_id_offset,
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
  p_id             => 2529139841790900 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 13,
  p_button_sequence=> 30,
  p_button_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P13_FILEID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2529356027790900 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 13,
  p_button_sequence=> 10,
  p_button_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2529048429790900 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 13,
  p_button_sequence=> 40,
  p_button_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P13_FILEID',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2529235285790900 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 13,
  p_button_sequence=> 20,
  p_button_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE'');',
  p_button_condition=> 'P13_FILEID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>2529954679790902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_branch_action=> 'f?p=&APP_ID.:2:&SESSION.&success_msg=#SUCCESS_MSG#',
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
  p_id=>2530143002790902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_FILEID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2530342203790910 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_IDNO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 2,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default => ':P2_IDNO',
  p_item_default_type => 'PLSQL_EXPRESSION',
  p_prompt=>'Idno',
  p_source=>'IDNO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 100,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2532139631790917 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_FILELOCATION',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 3,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Filelocation',
  p_source=>'FILELOCATION',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2530555758790910 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_FILENAME',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 4,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Filename',
  p_source=>'FILENAME',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2531931780790911 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_FILEDSCR',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 5,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Filedscr',
  p_source=>'FILEDSCR',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 10,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'A SQL query or other way to get the data';

wwv_flow_api.create_page_item(
  p_id=>2531144097790911 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_NOTES',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 6,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Notes',
  p_source=>'NOTES',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXTAREA',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 5,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2530749454790911 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_FILETYPE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 7,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default => 'FILETYPE',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Filetype',
  p_source=>'FILETYPE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_lov => 'STATIC2:Working directory;Working directory,1-Data;1-Data,2-Analysis;2-Analysis,3-Document;3-Document,4-Archive;4-Archive',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2530948680790911 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_PROCSTAT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 8,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Procstat',
  p_source=>'PROCSTAT',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2531348005790911 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_SPECPERMFILE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 9,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Specpermfile',
  p_source=>'SPECPERMFILE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1650525896018028 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_BACKUPLOCATION',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Backuplocation',
  p_source=>'BACKUPLOCATION',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1309722361280901 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_PUBLISHDDI',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 11,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Publishddi',
  p_source=>'PUBLISHDDI',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'CHECKBOX',
  p_lov => 'STATIC2:Publish;1',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1311507039295334 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_BACKUPVALID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 12,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Backupvalid',
  p_source=>'BACKUPVALID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1313614920316589 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_DATEBACKUPVALID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 13,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Datebackupvalid',
  p_source=>'DATEBACKUPVALID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MON_RR',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1600717539841681 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_CHECKED',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 14,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Checked',
  p_source=>'CHECKED',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'CHECKBOX',
  p_named_lov=> '%null%',
  p_lov => 'STATIC2:CHECKED;1',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2531540447790911 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_DATEARCHIVED',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 15,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Datearchived',
  p_source=>'DATEARCHIVED',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MON_RR',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 6,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2531727441790911 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_DATEDESTROY',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 16,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Datedestroy',
  p_source=>'DATEDESTROY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>3246515889427090 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_DESTROYED',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 17,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default => '0',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Destroyed',
  p_source=>'DESTROYED',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'CHECKBOX',
  p_lov => 'STATIC2:DESTROYED;1,NOT DESTROYED;0',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '0',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1290926171931915 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_REQID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 18,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Reqid',
  p_source=>'REQID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1992930529795887 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_PRODDATEDOCFILE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 27,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default => 'to_char(sysdate, ''DD-MON-YYYY'')',
  p_item_default_type => 'PLSQL_EXPRESSION',
  p_prompt=>'Proddatedocfile',
  p_source=>'PRODDATEDOCFILE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MM_YYYY_DASH',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1995830099814729 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 13,
  p_name=>'P13_PRODUCERDOCFILE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 37,
  p_item_plug_id => 2528832206790899+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Producerdocfile',
  p_source=>'PRODUCERDOCFILE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 50,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
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
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:FILEDSCR:P13_FILEID:FILEID';

wwv_flow_api.create_page_process(
  p_id     => 2532336383790917 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 13,
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
p:=p||'#OWNER#:FILEDSCR:P13_FILEID:FILEID|IUD';

wwv_flow_api.create_page_process(
  p_id     => 2532538227790919 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 13,
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
p:=p||'13';

wwv_flow_api.create_page_process(
  p_id     => 2532741508790920 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 13,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>2529235285790900 + wwv_flow_api.g_id_offset,
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
-- ...updatable report columns for page 13
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 15: Form on DATADSCR
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 15,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Form on DATADSCR',
  p_step_title=> 'Form on DATADSCR',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20100420152225',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>15,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>15,p_text=>ph);
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
  p_id=> 2552125492862163 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 15,
  p_plug_name=> 'Datadscr',
  p_plug_template=> 2423649325900652+ wwv_flow_api.g_id_offset,
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
  p_id             => 2552426055862163 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 15,
  p_button_sequence=> 30,
  p_button_plug_id => 2552125492862163+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P15_PKEY',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2552645215862163 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 15,
  p_button_sequence=> 10,
  p_button_plug_id => 2552125492862163+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2552350618862163 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 15,
  p_button_sequence=> 40,
  p_button_plug_id => 2552125492862163+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P15_PKEY',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2552547515862163 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 15,
  p_button_sequence=> 20,
  p_button_plug_id => 2552125492862163+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE'');',
  p_button_condition=> 'P15_PKEY',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>2553256980862168 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 15,
  p_branch_action=> 'f?p=&APP_ID.:3:&SESSION.&success_msg=#SUCCESS_MSG#',
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
  p_id=>2553451084862168 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 15,
  p_name=>'P15_PKEY',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 2552125492862163+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Pkey',
  p_source=>'PKEY',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2553631927862169 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 15,
  p_name=>'P15_LABL',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 3,
  p_item_plug_id => 2552125492862163+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Labl',
  p_source=>'LABL',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2553833682862169 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 15,
  p_name=>'P15_NOTES',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 4,
  p_item_plug_id => 2552125492862163+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Notes',
  p_source=>'NOTES',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2554039167862169 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 15,
  p_name=>'P15_SPECPERMVAR',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 5,
  p_item_plug_id => 2552125492862163+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Specpermvar',
  p_source=>'SPECPERMVAR',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2554257190862169 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 15,
  p_name=>'P15_FILEID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 6,
  p_item_plug_id => 2552125492862163+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default => ':P3_FILEID',
  p_item_default_type => 'PLSQL_EXPRESSION',
  p_prompt=>'Fileid',
  p_source=>'FILEID',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
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
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:DATADSCR:P15_PKEY:PKEY';

wwv_flow_api.create_page_process(
  p_id     => 2554429100862169 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 15,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from DATADSCR',
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
p:=p||'declare '||chr(10)||
'  function get_pk return varchar2 '||chr(10)||
'  is '||chr(10)||
'  begin '||chr(10)||
'    for c1 in (select DATADSCR_SEQ.nextval next_val'||chr(10)||
'               from dual)'||chr(10)||
'    loop'||chr(10)||
'        return c1.next_val;'||chr(10)||
'    end loop;'||chr(10)||
'  end; '||chr(10)||
'begin '||chr(10)||
'  :P15_PKEY := get_pk; '||chr(10)||
'end; ';

wwv_flow_api.create_page_process(
  p_id     => 2554637153862169 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 15,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get PK',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to get primary key item value.',
  p_process_when_button_id=>2552350618862163 + wwv_flow_api.g_id_offset,
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
p:=p||'#OWNER#:DATADSCR:P15_PKEY:PKEY|IUD';

wwv_flow_api.create_page_process(
  p_id     => 2554832467862169 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 15,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of DATADSCR',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process row of table DATADSCR.',
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
p:=p||'15';

wwv_flow_api.create_page_process(
  p_id     => 2555028692862169 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 15,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>2552547515862163 + wwv_flow_api.g_id_offset,
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
-- ...updatable report columns for page 15
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 16: Form on OTHRSTDYMAT
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 16,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Form on OTHRSTDYMAT',
  p_step_title=> 'Form on OTHRSTDYMAT',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20101201121723',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>16,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>16,p_text=>ph);
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
  p_id=> 2554228556440118 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 16,
  p_plug_name=> 'Form on OTHRSTDYMAT',
  p_plug_template=> 2423649325900652+ wwv_flow_api.g_id_offset,
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
  p_id             => 2554505834440118 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 16,
  p_button_sequence=> 30,
  p_button_plug_id => 2554228556440118+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P16_OTHRSTDYMATID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2554706982440118 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 16,
  p_button_sequence=> 10,
  p_button_plug_id => 2554228556440118+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2554414466440118 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 16,
  p_button_sequence=> 40,
  p_button_plug_id => 2554228556440118+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P16_OTHRSTDYMATID',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2554632065440118 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 16,
  p_button_sequence=> 20,
  p_button_plug_id => 2554228556440118+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE'');',
  p_button_condition=> 'P16_OTHRSTDYMATID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>2555316179440121 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 16,
  p_branch_action=> 'f?p=&APP_ID.:11:&SESSION.&success_msg=#SUCCESS_MSG#',
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
  p_id=>2555532569440121 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 16,
  p_name=>'P16_OTHRSTDYMATID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 2554228556440118+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Othrstdymatid',
  p_source=>'OTHRSTDYMATID',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2555705135440123 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 16,
  p_name=>'P16_IDNO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 2554228556440118+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default => ':P2_IDNO ',
  p_item_default_type => 'PLSQL_EXPRESSION',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2555912150440123 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 16,
  p_name=>'P16_RELSTDYIDNO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 2554228556440118+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Relstdyidno',
  p_source=>'RELSTDYIDNO',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2556113704440125 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 16,
  p_name=>'P16_RELPUBL',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 2554228556440118+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Relpubl',
  p_source=>'RELPUBL',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXTAREA',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 3,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2556303390440125 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 16,
  p_name=>'P16_NOTES',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 2554228556440118+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Notes',
  p_source=>'NOTES',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXTAREA',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 4,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
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
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:OTHRSTDYMAT:P16_OTHRSTDYMATID:OTHRSTDYMATID';

wwv_flow_api.create_page_process(
  p_id     => 2556525368440125 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 16,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from OTHRSTDYMAT',
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
p:=p||'declare '||chr(10)||
'  function get_pk return varchar2 '||chr(10)||
'  is '||chr(10)||
'  begin '||chr(10)||
'    for c1 in (select OTHRSTDYMAT_SEQ.nextval next_val'||chr(10)||
'               from dual)'||chr(10)||
'    loop'||chr(10)||
'        return c1.next_val;'||chr(10)||
'    end loop;'||chr(10)||
'  end; '||chr(10)||
'begin '||chr(10)||
'  :P16_OTHRSTDYMATID := get_pk; '||chr(10)||
'end; ';

wwv_flow_api.create_page_process(
  p_id     => 2556710269440125 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 16,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get PK',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to get primary key item value.',
  p_process_when_button_id=>2554414466440118 + wwv_flow_api.g_id_offset,
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
p:=p||'#OWNER#:OTHRSTDYMAT:P16_OTHRSTDYMATID:OTHRSTDYMATID|IUD';

wwv_flow_api.create_page_process(
  p_id     => 2556911390440125 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 16,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of OTHRSTDYMAT',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process row of table OTHRSTDYMAT.',
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
p:=p||'16';

wwv_flow_api.create_page_process(
  p_id     => 2557104724440125 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 16,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>2554632065440118 + wwv_flow_api.g_id_offset,
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
-- ...updatable report columns for page 16
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 21: Form on STDYDSCR2
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 21,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Form on STDYDSCR2',
  p_step_title=> 'Form on STDYDSCR2',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20100421111834',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>21,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>21,p_text=>ph);
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
  p_id=> 2597949483982552 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 21,
  p_plug_name=> 'Stdydscr2',
  p_plug_template=> 2423649325900652+ wwv_flow_api.g_id_offset,
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
  p_id             => 2598233300982552 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 21,
  p_button_sequence=> 30,
  p_button_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P21_IDNO',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2598444971982552 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 21,
  p_button_sequence=> 10,
  p_button_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2598135727982552 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 21,
  p_button_sequence=> 40,
  p_button_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P21_IDNO',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2598354757982552 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 21,
  p_button_sequence=> 20,
  p_button_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE'');',
  p_button_condition=> 'P21_IDNO',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>2599030864982552 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_branch_action=> 'f?p=&APP_ID.:1:&SESSION.&success_msg=#SUCCESS_MSG#',
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
  p_id=>2599234376982552 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_IDNO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Idno',
  p_source=>'IDNO',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2599447318982554 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_PKEY',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Pkey',
  p_source=>'PKEY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'HIDDEN',
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
  p_field_template => 2427550862900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2599841838982554 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_TITL',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 2,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Titl',
  p_source=>'TITL',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 5,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2600033843982554 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_PRODUCER',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 4,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Producer',
  p_source=>'PRODUCER',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2600243872982554 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_PRODDATEDOC',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 5,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Proddatedoc',
  p_source=>'PRODDATEDOC',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MM_YYYY',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2600430401982554 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_BIBLCITDOC',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 6,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Biblcitdoc',
  p_source=>'BIBLCITDOC',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2600649900982561 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_AUTHENTY',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 7,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Authenty',
  p_source=>'AUTHENTY',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2600857316982561 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_COPYRIGHT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 8,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Copyright',
  p_source=>'COPYRIGHT',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2601030055982561 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_PRODDATESTDY',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 9,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Proddatestdy',
  p_source=>'PRODDATESTDY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MM_YYYY',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2601240770982563 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_FUNDAG',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Fundag',
  p_source=>'FUNDAG',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2601439246982563 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_DISTRBTR',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 11,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Distrbtr',
  p_source=>'DISTRBTR',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2601643849982565 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_SERNAME',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 12,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Sername',
  p_source=>'SERNAME',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2601832758982566 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_VERSION',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 13,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Version',
  p_source=>'VERSION',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2602047233982566 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_BIBLCITSTDY',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 14,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Biblcitstdy',
  p_source=>'BIBLCITSTDY',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2602242156982566 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_ABSTRACT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 15,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Abstract',
  p_source=>'LONGABSTRACT',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXTAREA',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 5,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2602452719982566 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_TIMEPRD',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 16,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Timeprd',
  p_source=>'TIMEPRD',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2602655075982566 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_COLLDATE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 17,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Colldate',
  p_source=>'COLLDATE',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2602833004982566 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_GEOGCOVER',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 18,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Geogcover',
  p_source=>'GEOGCOVER',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2603050553982566 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_GEOGUNIT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 19,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Geogunit',
  p_source=>'GEOGUNIT',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2603243004982568 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_ANLYUNIT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Anlyunit',
  p_source=>'ANLYUNIT',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2603445120982568 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_UNIVERSE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 21,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Universe',
  p_source=>'UNIVERSE',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2603632641982568 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_DATAKIND',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 22,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Datakind',
  p_source=>'DATAKIND',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2603834639982568 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_CLEANOPS',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 23,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Cleanops',
  p_source=>'CLEANOPS',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2604052330982568 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_CONFDEC',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 24,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Confdec',
  p_source=>'CONFDEC',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2604249220982568 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_SPECPERM',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 25,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Specperm',
  p_source=>'SPECPERM',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2604453287982569 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_RESTRCTN',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 26,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Restrctn',
  p_source=>'RESTRCTN',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2604630717982569 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 21,
  p_name=>'P21_NOTES',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 27,
  p_item_plug_id => 2597949483982552+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Notes',
  p_source=>'NOTES',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 2599639429982554 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 21,
  p_validation_name => 'P21_PKEY not null',
  p_validation_sequence=> 1,
  p_validation => 'P21_PKEY',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Pkey must have some value.',
  p_associated_item=> 2599447318982554 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:STDYDSCR:P21_IDNO:IDNO';

wwv_flow_api.create_page_process(
  p_id     => 2604844677982569 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 21,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from STDYDSCR',
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
p:=p||'#OWNER#:STDYDSCR:P21_IDNO:IDNO|IUD';

wwv_flow_api.create_page_process(
  p_id     => 2605028280982569 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 21,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of STDYDSCR',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process row of table STDYDSCR.',
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
p:=p||'21';

wwv_flow_api.create_page_process(
  p_id     => 2605235149982569 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 21,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>2598354757982552 + wwv_flow_api.g_id_offset,
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
-- ...updatable report columns for page 21
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 26: Form on ACCESSSTDY
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 26,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Form on ACCESSSTDY',
  p_step_title=> 'Form on ACCESSSTDY',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20110411131141',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>26,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>26,p_text=>ph);
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
  p_id=> 2666048985503849 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 26,
  p_plug_name=> 'Form on ACCESSSTDY',
  p_plug_template=> 2423649325900652+ wwv_flow_api.g_id_offset,
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
  p_id             => 2666355737503851 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 26,
  p_button_sequence=> 30,
  p_button_plug_id => 2666048985503849+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P26_REQID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2666526311503851 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 26,
  p_button_sequence=> 10,
  p_button_plug_id => 2666048985503849+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2666228109503851 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 26,
  p_button_sequence=> 40,
  p_button_plug_id => 2666048985503849+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P26_REQID',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2666450426503851 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 26,
  p_button_sequence=> 20,
  p_button_plug_id => 2666048985503849+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE'');',
  p_button_condition=> 'P26_REQID',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>2667146059503852 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 26,
  p_branch_action=> 'f?p=&APP_ID.:4:&SESSION.&success_msg=#SUCCESS_MSG#',
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
  p_id=>2667336328503854 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 26,
  p_name=>'P26_REQID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 2666048985503849+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Reqid',
  p_source=>'REQID',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2667547430503866 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 26,
  p_name=>'P26_IDNO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 2666048985503849+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default => ':P2_IDNO',
  p_item_default_type => 'PLSQL_EXPRESSION',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2667733870503866 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 26,
  p_name=>'P26_REQUESTER',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 2666048985503849+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Requester',
  p_source=>'REQUESTER',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2669145700503866 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 26,
  p_name=>'P26_REQUESTERUID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 31,
  p_item_plug_id => 2666048985503849+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Requesteruid',
  p_source=>'REQUESTERUID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2667945314503866 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 26,
  p_name=>'P26_OTHERMAT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 2666048985503849+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Othermat',
  p_source=>'OTHERMAT',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 25,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2668151792503866 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 26,
  p_name=>'P26_PROJECTTITLE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 2666048985503849+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Projecttitle',
  p_source=>'PROJECTTITLE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2668349069503866 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 26,
  p_name=>'P26_PURPOSE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 2666048985503849+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Purpose',
  p_source=>'PURPOSE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2668533829503866 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 26,
  p_name=>'P26_REQUESTDATE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 70,
  p_item_plug_id => 2666048985503849+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Requestdate',
  p_source=>'REQUESTDATE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MON_RR',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2668726717503866 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 26,
  p_name=>'P26_DATAINGEST',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 80,
  p_item_plug_id => 2666048985503849+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Dataingest',
  p_source=>'DATAINGEST',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 6,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2668949611503866 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 26,
  p_name=>'P26_ETHICS',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 90,
  p_item_plug_id => 2666048985503849+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Ethics',
  p_source=>'ETHICS',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 10,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1329305280417884 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 26,
  p_name=>'P26_SLA',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 100,
  p_item_plug_id => 2666048985503849+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Sla',
  p_source=>'SLA',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2238323057779329 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 26,
  p_name=>'P26_ACCESSSTARTDATE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 110,
  p_item_plug_id => 2666048985503849+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Accessstartdate',
  p_source=>'ACCESSSTARTDATE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MM_YYYY_DASH',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap="nowrap"',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2241109467794332 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 26,
  p_name=>'P26_ACCESSENDDATE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 120,
  p_item_plug_id => 2666048985503849+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Accessenddate',
  p_source=>'ACCESSENDDATE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MM_YYYY_DASH',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2855129380811982 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 26,
  p_name=>'P26_SETPERMISSIONS',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 130,
  p_item_plug_id => 2666048985503849+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Setpermissions',
  p_source=>'SETPERMISSIONS',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXTAREA',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 2000,
  p_cHeight=> 20,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
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
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:ACCESSSTDY:P26_REQID:REQID';

wwv_flow_api.create_page_process(
  p_id     => 2669329694503868 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 26,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from ACCESSSTDY',
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
p:=p||'declare '||chr(10)||
'  function get_pk return varchar2 '||chr(10)||
'  is '||chr(10)||
'  begin '||chr(10)||
'    for c1 in (select ACCESSSTDY_SEQ.nextval next_val'||chr(10)||
'               from dual)'||chr(10)||
'    loop'||chr(10)||
'        return c1.next_val;'||chr(10)||
'    end loop;'||chr(10)||
'  end; '||chr(10)||
'begin '||chr(10)||
'  :P26_REQID := get_pk; '||chr(10)||
'end; ';

wwv_flow_api.create_page_process(
  p_id     => 2669550153503868 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 26,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get PK',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to get primary key item value.',
  p_process_when_button_id=>2666228109503851 + wwv_flow_api.g_id_offset,
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
p:=p||'#OWNER#:ACCESSSTDY:P26_REQID:REQID|IUD';

wwv_flow_api.create_page_process(
  p_id     => 2669742115503868 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 26,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of ACCESSSTDY',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process row of table ACCESSSTDY.',
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
p:=p||'26';

wwv_flow_api.create_page_process(
  p_id     => 2669939017503868 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 26,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>2666450426503851 + wwv_flow_api.g_id_offset,
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
-- ...updatable report columns for page 26
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 31: Form on ACCESSORS
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 31,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Form on ACCESSORS',
  p_step_title=> 'Form on ACCESSORS',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20101126165215',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>31,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>31,p_text=>ph);
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
  p_id=> 2686032097604880 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 31,
  p_plug_name=> 'Form on ACCESSORS',
  p_plug_template=> 2423649325900652+ wwv_flow_api.g_id_offset,
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
  p_id             => 2686344832604883 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 31,
  p_button_sequence=> 30,
  p_button_plug_id => 2686032097604880+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P31_PKEY',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2686524964604883 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 31,
  p_button_sequence=> 10,
  p_button_plug_id => 2686032097604880+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2686231674604883 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 31,
  p_button_sequence=> 40,
  p_button_plug_id => 2686032097604880+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P31_PKEY',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2686453507604883 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 31,
  p_button_sequence=> 20,
  p_button_plug_id => 2686032097604880+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE'');',
  p_button_condition=> 'P31_PKEY',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>2687126220604883 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 31,
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
  p_id=>2687356168604883 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 31,
  p_name=>'P31_PKEY',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 2686032097604880+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Pkey',
  p_source=>'PKEY',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2687549237604899 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 31,
  p_name=>'P31_REQID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 2686032097604880+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default => ':P5_REQID',
  p_item_default_type => 'PLSQL_EXPRESSION',
  p_prompt=>'Reqid',
  p_source=>'REQID',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2687738637604902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 31,
  p_name=>'P31_ACCESSORNAMES',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 2686032097604880+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Accessornames',
  p_source=>'ACCESSORNAMES',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2687951801604902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 31,
  p_name=>'P31_LOCATION',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 40,
  p_item_plug_id => 2686032097604880+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Location',
  p_source=>'LOCATION',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2688130083604902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 31,
  p_name=>'P31_ACCESSSTARTDATE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 50,
  p_item_plug_id => 2686032097604880+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Accessstartdate',
  p_source=>'ACCESSSTARTDATE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MON_RR',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2688353568604902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 31,
  p_name=>'P31_ACCESSENDDATE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 60,
  p_item_plug_id => 2686032097604880+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Accessenddate',
  p_source=>'ACCESSENDDATE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MON_RR',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2688526259604902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 31,
  p_name=>'P31_ACCESSREVOKED',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 70,
  p_item_plug_id => 2686032097604880+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Accessrevoked',
  p_source=>'ACCESSREVOKED',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 6,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2688725338604902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 31,
  p_name=>'P31_ARCHIVEMEDIA',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 80,
  p_item_plug_id => 2686032097604880+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Archivemedia',
  p_source=>'ARCHIVEMEDIA',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 6,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2688945863604902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 31,
  p_name=>'P31_DESTROYDATE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 90,
  p_item_plug_id => 2686032097604880+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Destroydate',
  p_source=>'DESTROYDATE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MON_RR',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 6,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2689138771604902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 31,
  p_name=>'P31_DESTROYED',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 100,
  p_item_plug_id => 2686032097604880+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Destroyed',
  p_source=>'DESTROYED',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 6,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2689354614604902 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 31,
  p_name=>'P31_ACCESSORUID',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 110,
  p_item_plug_id => 2686032097604880+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Accessoruid',
  p_source=>'ACCESSORUID',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 6,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2280424868356335 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 31,
  p_name=>'P31_OTHERMAT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 120,
  p_item_plug_id => 2686032097604880+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Othermat',
  p_source=>'OTHERMAT',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 2000,
  p_cHeight=> 1,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2463722022482226 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 31,
  p_name=>'P31_APPROVAL',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 130,
  p_item_plug_id => 2686032097604880+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Approval',
  p_source=>'APPROVAL',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXTAREA',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 2000,
  p_cHeight=> 8,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
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
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:ACCESSORS:P31_PKEY:PKEY';

wwv_flow_api.create_page_process(
  p_id     => 2689538494604903 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 31,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from ACCESSORS',
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
p:=p||'declare '||chr(10)||
'  function get_pk return varchar2 '||chr(10)||
'  is '||chr(10)||
'  begin '||chr(10)||
'    for c1 in (select ACCESSORS_SEQ.nextval next_val'||chr(10)||
'               from dual)'||chr(10)||
'    loop'||chr(10)||
'        return c1.next_val;'||chr(10)||
'    end loop;'||chr(10)||
'  end; '||chr(10)||
'begin '||chr(10)||
'  :P31_PKEY := get_pk; '||chr(10)||
'end; ';

wwv_flow_api.create_page_process(
  p_id     => 2689737998604903 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 31,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get PK',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to get primary key item value.',
  p_process_when_button_id=>2686231674604883 + wwv_flow_api.g_id_offset,
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
p:=p||'#OWNER#:ACCESSORS:P31_PKEY:PKEY|IUD';

wwv_flow_api.create_page_process(
  p_id     => 2689946411604903 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 31,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of ACCESSORS',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process row of table ACCESSORS.',
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
p:=p||'31';

wwv_flow_api.create_page_process(
  p_id     => 2690140711604903 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 31,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>2686453507604883 + wwv_flow_api.g_id_offset,
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
-- ...updatable report columns for page 31
--
 
begin
 
null;
end;
null;
 
end;
/

 
------------------------------------------
prompt  ...PAGE 33: Form on STDYDSCR3
--
 
begin
 
declare
    h varchar2(32767) := null;
    ph varchar2(32767) := null;
begin
h:=h||'No help is available for this page.';

ph:=ph||'<script language="JavaScript" type="text/javascript">'||chr(10)||
'<!--'||chr(10)||
''||chr(10)||
' htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'||chr(10)||
''||chr(10)||
'//-->'||chr(10)||
'</script>';

wwv_flow_api.create_page(
  p_id     => 33,
  p_flow_id=> wwv_flow.g_flow_id,
  p_tab_set=> '',
  p_name   => 'Form on STDYDSCR3',
  p_step_title=> 'Form on STDYDSCR3',
  p_step_sub_title_type => 'TEXT_WITH_SUBSTITUTIONS',
  p_first_item=> '',
  p_help_text => ' ',
  p_html_page_header => ' ',
  p_step_template => '',
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => 'IVAN',
  p_last_upd_yyyymmddhh24miss => '20101201134322',
  p_page_comment  => '');
 
wwv_flow_api.set_page_help_text(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>33,p_text=>h);
wwv_flow_api.set_html_page_header(p_flow_id=>wwv_flow.g_flow_id,p_flow_step_id=>33,p_text=>ph);
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
  p_id=> 2747443046891143 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_page_id=> 33,
  p_plug_name=> 'Stdydscr',
  p_plug_template=> 2423649325900652+ wwv_flow_api.g_id_offset,
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
  p_id             => 2747731412891150 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 33,
  p_button_sequence=> 30,
  p_button_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_button_name    => 'SAVE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Apply Changes',
  p_button_position=> 'REGION_TEMPLATE_CHANGE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P33_PKEY',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'UPDATE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2747942104891151 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 33,
  p_button_sequence=> 10,
  p_button_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_button_name    => 'CANCEL',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Cancel',
  p_button_position=> 'REGION_TEMPLATE_CLOSE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2747629644891150 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 33,
  p_button_sequence=> 40,
  p_button_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_button_name    => 'CREATE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Create',
  p_button_position=> 'REGION_TEMPLATE_CREATE',
  p_button_alignment=> 'RIGHT',
  p_button_condition=> 'P33_PKEY',
  p_button_condition_type=> 'ITEM_IS_NULL',
  p_database_action=>'INSERT',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
wwv_flow_api.create_page_button(
  p_id             => 2747838342891150 + wwv_flow_api.g_id_offset,
  p_flow_id        => wwv_flow.g_flow_id,
  p_flow_step_id   => 33,
  p_button_sequence=> 20,
  p_button_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_button_name    => 'DELETE',
  p_button_image   => 'template:'||to_char(2422849353900641+wwv_flow_api.g_id_offset),
  p_button_image_alt=> 'Delete',
  p_button_position=> 'REGION_TEMPLATE_DELETE',
  p_button_alignment=> 'RIGHT',
  p_button_redirect_url=> 'javascript:confirmDelete(htmldb_delete_message,''DELETE'');',
  p_button_condition=> 'P33_PKEY',
  p_button_condition_type=> 'ITEM_IS_NOT_NULL',
  p_database_action=>'DELETE',
  p_required_patch => null + wwv_flow_api.g_id_offset);
 
 
end;
/

 
begin
 
wwv_flow_api.create_page_branch(
  p_id=>2748546044891156 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_branch_action=> 'f?p=&APP_ID.:1:&SESSION.&success_msg=#SUCCESS_MSG#',
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
  p_id=>2748730766891162 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_PKEY',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 1,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Pkey',
  p_source=>'PKEY',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2749156279891171 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_IDNO',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 2,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
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
  p_field_template => 2427550862900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'A short title of the study.';

wwv_flow_api.create_page_item(
  p_id=>2748925736891171 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_TITL',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 3,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Titl',
  p_source=>'TITL',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 60,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427550862900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1595621647814459 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_CHECKPRIORITY',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 4,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Checkpriority',
  p_source=>'CHECKPRIORITY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> 1,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2754148698891182 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_ABSTRACT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 4,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Abstract',
  p_source=>'ABSTRACT',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXTAREA',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 5,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427550862900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>1596720047823515 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_CHECKED',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 5,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Checked',
  p_source=>'CHECKED',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'CHECKBOX',
  p_named_lov=> '%null%',
  p_lov => 'STATIC2:CHECKED;1',
  p_lov_columns=> 1,
  p_lov_display_null=> 'YES',
  p_lov_translated=> 'N',
  p_lov_null_text=>'',
  p_lov_null_value=> '',
  p_cSize=> 30,
  p_cMaxlength=> 2000,
  p_cHeight=> null,
  p_cAttributes=> 'nowrap',
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Authoring Entity.  The Principal investigators.';

wwv_flow_api.create_page_item(
  p_id=>2750146870891179 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_AUTHENTY',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 6,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Authenty',
  p_source=>'AUTHENTY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427550862900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2752949453891181 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_DATAKIND',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 7,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Datakind',
  p_source=>'DATAKIND',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_lov => 'STATIC2:COMBINED;COMBINED,HEALTH;HEALTH,POPULATION;POPULATION,ENVIRONMENT;ENVIRONMENT,OTHER;OTHER,GEOGRAPHY;GEOGRAPHY',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427550862900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2753940623891182 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_NOTES',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 8,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Notes',
  p_source=>'NOTES',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'COMBOBOX',
  p_lov => 'STATIC2:NCEPH Restricted;NCEPH Restricted,NCEPH Unrestricted;NCEPH Unrestricted,Private;Private,GIS Library;GIS Library,External;External',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427550862900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
h := null;
h:=h||'Best first-point-of-contact person.  Often a staff or student at NCEPH.';

wwv_flow_api.create_page_item(
  p_id=>2750925036891179 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_DISTRBTR',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 9,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Distrbtr',
  p_source=>'DISTRBTR',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427550862900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_help_text   => h,
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2751533903891181 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_BIBLCITSTDY',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Biblcitstdy',
  p_source=>'BIBLCITSTDY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXTAREA',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 5,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2753526464891182 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_SPECPERM',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 11,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Specperm',
  p_source=>'SPECPERM',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2751744189891181 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_TIMEPRD',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 12,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Timeprd',
  p_source=>'TIMEPRD',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2752152524891181 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_GEOGCOVER',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 13,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Geogcover',
  p_source=>'GEOGCOVER',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2752353780891181 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_GEOGUNIT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 14,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Geogunit',
  p_source=>'GEOGUNIT',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2753756034891182 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_RESTRCTN',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 15,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Restrctn',
  p_source=>'RESTRCTN',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2750552816891179 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_PRODDATESTDY',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 16,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Proddatestdy',
  p_source=>'PRODDATESTDY',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MM_YYYY',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> null,
  p_cMaxlength=> 255,
  p_cHeight=> null,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2751140824891179 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_SERNAME',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 17,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Sername',
  p_source=>'SERNAME',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2751356672891179 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_VERSION',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 18,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Version',
  p_source=>'VERSION',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2751948665891181 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_COLLDATE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 19,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Colldate',
  p_source=>'COLLDATE',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2752545168891181 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_ANLYUNIT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Anlyunit',
  p_source=>'ANLYUNIT',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2752754568891181 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_UNIVERSE',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 21,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Universe',
  p_source=>'UNIVERSE',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2753137543891182 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_CLEANOPS',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 23,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Cleanops',
  p_source=>'CLEANOPS',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2753350212891182 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_CONFDEC',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 24,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Confdec',
  p_source=>'CONFDEC',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2750745970891179 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_FUNDAG',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 25,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Fundag',
  p_source=>'FUNDAG',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2750353766891179 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_COPYRIGHT',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 26,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default_type => 'STATIC_TEXT_WITH_SUBSTITUTIONS',
  p_prompt=>'Copyright',
  p_source=>'COPYRIGHT',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2749545729891178 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_PRODUCER',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 27,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Producer',
  p_source=>'PRODUCER',
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2749756442891178 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_PRODDATEDOC',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 28,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_item_default => 'to_char(sysdate, ''DD-MON-YYYY'')',
  p_item_default_type => 'PLSQL_EXPRESSION',
  p_prompt=>'Proddatedoc',
  p_source=>'PRODDATEDOC',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'PICK_DATE_DD_MM_YYYY',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 30,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_lov_display_extra=>'NO',
  p_protection_level => 'N',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2749927453891178 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 33,
  p_name=>'P33_BIBLCITDOC',
  p_data_type=> 'VARCHAR',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 29,
  p_item_plug_id => 2747443046891143+wwv_flow_api.g_id_offset,
  p_use_cache_before_default=> 'NO',
  p_prompt=>'Biblcitdoc',
  p_source=>'BIBLCITDOC',
  p_source_type=> 'DB_COLUMN',
  p_display_as=> 'TEXT',
  p_lov_columns=> null,
  p_lov_display_null=> 'NO',
  p_lov_translated=> 'N',
  p_cSize=> 200,
  p_cMaxlength=> 255,
  p_cHeight=> 1,
  p_begin_on_new_line => 'YES',
  p_begin_on_new_field=> 'YES',
  p_colspan => 1,
  p_rowspan => 1,
  p_label_alignment  => 'RIGHT',
  p_field_alignment  => 'LEFT',
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

 
begin
 
null;
 
end;
/

 
begin
 
wwv_flow_api.create_page_validation(
  p_id => 2749348155891173 + wwv_flow_api.g_id_offset,
  p_flow_id => wwv_flow.g_flow_id,
  p_flow_step_id => 33,
  p_validation_name => 'P33_IDNO not null',
  p_validation_sequence=> 3,
  p_validation => 'P33_IDNO',
  p_validation_type => 'ITEM_NOT_NULL',
  p_error_message => 'Idno must have some value.',
  p_associated_item=> 2749156279891171 + wwv_flow_api.g_id_offset,
  p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION',
  p_validation_comment=> '');
 
null;
 
end;
/

 
begin
 
declare
  p varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
p:=p||'F|#OWNER#:STDYDSCR:P33_PKEY:PKEY';

wwv_flow_api.create_page_process(
  p_id     => 2754354163891184 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 33,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_HEADER',
  p_process_type=> 'DML_FETCH_ROW',
  p_process_name=> 'Fetch Row from STDYDSCR',
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
p:=p||'declare '||chr(10)||
'  function get_pk return varchar2 '||chr(10)||
'  is '||chr(10)||
'  begin '||chr(10)||
'    for c1 in (select STDYDSCR_SEQ.nextval next_val'||chr(10)||
'               from dual)'||chr(10)||
'    loop'||chr(10)||
'        return c1.next_val;'||chr(10)||
'    end loop;'||chr(10)||
'  end; '||chr(10)||
'begin '||chr(10)||
'  :P33_PKEY := get_pk; '||chr(10)||
'end; ';

wwv_flow_api.create_page_process(
  p_id     => 2754525114891185 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 33,
  p_process_sequence=> 10,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'PLSQL',
  p_process_name=> 'Get PK',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to get primary key item value.',
  p_process_when_button_id=>2747629644891150 + wwv_flow_api.g_id_offset,
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
p:=p||'#OWNER#:STDYDSCR:P33_PKEY:PKEY|IUD';

wwv_flow_api.create_page_process(
  p_id     => 2754745265891189 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 33,
  p_process_sequence=> 30,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'DML_PROCESS_ROW',
  p_process_name=> 'Process Row of STDYDSCR',
  p_process_sql_clob => p, 
  p_process_error_message=> 'Unable to process row of table STDYDSCR.',
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
p:=p||'33';

wwv_flow_api.create_page_process(
  p_id     => 2754944736891189 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id => 33,
  p_process_sequence=> 40,
  p_process_point=> 'AFTER_SUBMIT',
  p_process_type=> 'CLEAR_CACHE_FOR_PAGES',
  p_process_name=> 'reset page',
  p_process_sql_clob => p, 
  p_process_error_message=> '',
  p_process_when_button_id=>2747838342891150 + wwv_flow_api.g_id_offset,
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
-- ...updatable report columns for page 33
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
  p_step_template => 2422546684900637+ wwv_flow_api.g_id_offset,
  p_required_patch=> null + wwv_flow_api.g_id_offset,
  p_last_updated_by => '',
  p_last_upd_yyyymmddhh24miss => '20100419132713',
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
  p_id=> 2429351268900719 + wwv_flow_api.g_id_offset,
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
  p_id=>2429447524900729 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_USERNAME',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 10,
  p_item_plug_id => 2429351268900719+wwv_flow_api.g_id_offset,
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2429533172900741 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_PASSWORD',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 20,
  p_item_plug_id => 2429351268900719+wwv_flow_api.g_id_offset,
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
  p_field_template => 2427332484900676+wwv_flow_api.g_id_offset,
  p_is_persistent=> 'Y',
  p_item_comment => '');
 
 
end;
/

declare
    h varchar2(32767) := null;
begin
wwv_flow_api.create_page_item(
  p_id=>2429633995900741 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_flow_step_id=> 101,
  p_name=>'P101_LOGIN',
  p_data_type=> '',
  p_accept_processing=> 'REPLACE_EXISTING',
  p_item_sequence=> 30,
  p_item_plug_id => 2429351268900719+wwv_flow_api.g_id_offset,
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
  p_tag_attributes  => 'template:'||to_char(2422849353900641 + wwv_flow_api.g_id_offset),
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
  p_id     => 2429828954900746 + wwv_flow_api.g_id_offset,
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
  p_id     => 2429757202900743 + wwv_flow_api.g_id_offset,
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
  p_id     => 2430038521900748 + wwv_flow_api.g_id_offset,
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
  p_id     => 2429933459900746 + wwv_flow_api.g_id_offset,
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
---------------------------------------
prompt  ...Breadcrumbs
--
 
begin
 
wwv_flow_api.create_menu (
  p_id=> 2430126750900748 + wwv_flow_api.g_id_offset,
  p_flow_id=> wwv_flow.g_flow_id,
  p_name=> ' Breadcrumb');
 
wwv_flow_api.create_menu_option (
  p_id=> 2430536085900757 + wwv_flow_api.g_id_offset,
  p_menu_id=> 2430126750900748 + wwv_flow_api.g_id_offset,
  p_parent_id               => 0,
  p_option_sequence=> 10,
  p_short_name     => 'STDYDSCR',
  p_long_name      => '',
  p_link           => 'f?p=&APP_ID.:1:&SESSION.',
  p_page_id        => 1,
  p_also_current_for_pages  => '');
 
wwv_flow_api.create_menu_option (
  p_id=> 2431056609900766 + wwv_flow_api.g_id_offset,
  p_menu_id=> 2430126750900748 + wwv_flow_api.g_id_offset,
  p_parent_id               => 0,
  p_option_sequence=> 20,
  p_short_name     => 'FILEDSCR',
  p_long_name      => '',
  p_link           => 'f?p=&APP_ID.:2:&SESSION.',
  p_page_id        => 2,
  p_also_current_for_pages  => '');
 
wwv_flow_api.create_menu_option (
  p_id=> 2431539744900766 + wwv_flow_api.g_id_offset,
  p_menu_id=> 2430126750900748 + wwv_flow_api.g_id_offset,
  p_parent_id               => 0,
  p_option_sequence=> 30,
  p_short_name     => 'DATADSCR',
  p_long_name      => '',
  p_link           => 'f?p=&APP_ID.:3:&SESSION.',
  p_page_id        => 3,
  p_also_current_for_pages  => '');
 
null;
 
end;
/

---------------------------------------
prompt  ...Page Templates for application: 102
--
prompt  ......Page template 2421943487900635
 
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
  p_id=> 2421943487900635 + wwv_flow_api.g_id_offset,
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

prompt  ......Page template 2421734358900621
 
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
  p_id=> 2421734358900621 + wwv_flow_api.g_id_offset,
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

prompt  ......Page template 2421849405900635
 
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
  p_id=> 2421849405900635 + wwv_flow_api.g_id_offset,
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

prompt  ......Page template 2422028678900635
 
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
  p_id=> 2422028678900635 + wwv_flow_api.g_id_offset,
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

prompt  ......Page template 2422143073900635
 
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
  p_id=> 2422143073900635 + wwv_flow_api.g_id_offset,
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

prompt  ......Page template 2422239835900635
 
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
  p_id=> 2422239835900635 + wwv_flow_api.g_id_offset,
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

prompt  ......Page template 2422437618900637
 
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
  p_id=> 2422437618900637 + wwv_flow_api.g_id_offset,
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

prompt  ......Page template 2422546684900637
 
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
  p_id=> 2422546684900637 + wwv_flow_api.g_id_offset,
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

prompt  ......Page template 2422347813900637
 
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
  p_id=> 2422347813900637 + wwv_flow_api.g_id_offset,
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

---------------------------------------
prompt  ...Button Templates
--
prompt  ......Button Template 2422657181900637
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
  p_id=>2422657181900637 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 3',
  p_translate_this_template => 'N',
  p_theme_id  => 2,
  p_theme_class_id => 2,
  p_template_comment       => '');
end;
/
prompt  ......Button Template 2422742561900641
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
  p_id=>2422742561900641 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 2',
  p_translate_this_template => 'N',
  p_theme_id  => 2,
  p_theme_class_id => 5,
  p_template_comment       => '');
end;
/
prompt  ......Button Template 2422849353900641
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
  p_id=>2422849353900641 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button',
  p_translate_this_template => 'N',
  p_theme_id  => 2,
  p_theme_class_id => 1,
  p_template_comment       => '');
end;
/
prompt  ......Button Template 2422927751900641
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
  p_id=>2422927751900641 + wwv_flow_api.g_id_offset,
  p_flow_id=>wwv_flow.g_flow_id,
  p_template=>t,
  p_template_name=> 'Button, Alternative 1',
  p_translate_this_template => 'N',
  p_theme_id  => 2,
  p_theme_class_id => 4,
  p_template_comment       => '');
end;
/
---------------------------------------
prompt  ...Region Templates
--
prompt  ......Region Template 2423032419900643
 
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
  p_id       => 2423032419900643 + wwv_flow_api.g_id_offset,
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
  p_id=> 2423032419900643 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2423148377900652
 
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
  p_id       => 2423148377900652 + wwv_flow_api.g_id_offset,
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
  p_id=> 2423148377900652 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2423234941900652
 
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
  p_id       => 2423234941900652 + wwv_flow_api.g_id_offset,
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
  p_id=> 2423234941900652 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2423334690900652
 
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
  p_id       => 2423334690900652 + wwv_flow_api.g_id_offset,
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
  p_id=> 2423334690900652 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2423436817900652
 
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
  p_id       => 2423436817900652 + wwv_flow_api.g_id_offset,
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
  p_id=> 2423436817900652 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2423529578900652
 
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
  p_id       => 2423529578900652 + wwv_flow_api.g_id_offset,
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
  p_id=> 2423529578900652 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2423649325900652
 
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
  p_id       => 2423649325900652 + wwv_flow_api.g_id_offset,
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
  p_id=> 2423649325900652 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2423753197900655
 
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
  p_id       => 2423753197900655 + wwv_flow_api.g_id_offset,
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
  p_id=> 2423753197900655 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2423839222900655
 
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
  p_id       => 2423839222900655 + wwv_flow_api.g_id_offset,
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
  p_id=> 2423839222900655 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2423933378900655
 
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
  p_id       => 2423933378900655 + wwv_flow_api.g_id_offset,
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
  p_id=> 2423933378900655 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2424043062900655
 
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
  p_id       => 2424043062900655 + wwv_flow_api.g_id_offset,
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
  p_id=> 2424043062900655 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2424132095900657
 
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
  p_id       => 2424132095900657 + wwv_flow_api.g_id_offset,
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
  p_id=> 2424132095900657 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2424249470900657
 
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
  p_id       => 2424249470900657 + wwv_flow_api.g_id_offset,
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
  p_id=> 2424249470900657 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2424350913900657
 
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
  p_id       => 2424350913900657 + wwv_flow_api.g_id_offset,
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
  p_id=> 2424350913900657 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2424435070900657
 
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
  p_id       => 2424435070900657 + wwv_flow_api.g_id_offset,
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
  p_id=> 2424435070900657 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2424538021900657
 
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
  p_id       => 2424538021900657 + wwv_flow_api.g_id_offset,
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
  p_id=> 2424538021900657 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2424644764900657
 
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
  p_id       => 2424644764900657 + wwv_flow_api.g_id_offset,
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
  p_id=> 2424644764900657 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2424741392900657
 
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
  p_id       => 2424741392900657 + wwv_flow_api.g_id_offset,
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
  p_id=> 2424741392900657 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2424851453900657
 
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
  p_id       => 2424851453900657 + wwv_flow_api.g_id_offset,
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
  p_id=> 2424851453900657 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2424938204900657
 
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
  p_id       => 2424938204900657 + wwv_flow_api.g_id_offset,
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
  p_id=> 2424938204900657 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

prompt  ......Region Template 2425042546900659
 
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
  p_id       => 2425042546900659 + wwv_flow_api.g_id_offset,
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
  p_id=> 2425042546900659 + wwv_flow_api.g_id_offset,
  p_form_table_attr=> t2 );
exception when others then null;
end;
null;
 
end;
/

---------------------------------------
prompt  ...List Templates
--
prompt  ......List Template 2426438653900670
 
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
  p_id=>2426438653900670 + wwv_flow_api.g_id_offset,
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

prompt  ......List Template 2425152833900659
 
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
  p_id=>2425152833900659 + wwv_flow_api.g_id_offset,
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

prompt  ......List Template 2425238284900666
 
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
  p_id=>2425238284900666 + wwv_flow_api.g_id_offset,
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

prompt  ......List Template 2425339409900666
 
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
  p_id=>2425339409900666 + wwv_flow_api.g_id_offset,
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

prompt  ......List Template 2425444419900668
 
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
  p_id=>2425444419900668 + wwv_flow_api.g_id_offset,
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

prompt  ......List Template 2425528744900668
 
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
  p_id=>2425528744900668 + wwv_flow_api.g_id_offset,
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

prompt  ......List Template 2425638130900668
 
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
  p_id=>2425638130900668 + wwv_flow_api.g_id_offset,
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

prompt  ......List Template 2425749527900668
 
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
  p_id=>2425749527900668 + wwv_flow_api.g_id_offset,
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

prompt  ......List Template 2425850779900668
 
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
  p_id=>2425850779900668 + wwv_flow_api.g_id_offset,
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

prompt  ......List Template 2425953400900668
 
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
  p_id=>2425953400900668 + wwv_flow_api.g_id_offset,
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

prompt  ......List Template 2426051756900668
 
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
  p_id=>2426051756900668 + wwv_flow_api.g_id_offset,
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

prompt  ......List Template 2426132842900668
 
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
  p_id=>2426132842900668 + wwv_flow_api.g_id_offset,
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

prompt  ......List Template 2426234557900668
 
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
  p_id=>2426234557900668 + wwv_flow_api.g_id_offset,
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

prompt  ......List Template 2426335266900670
 
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
  p_id=>2426335266900670 + wwv_flow_api.g_id_offset,
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

---------------------------------------
prompt  ...Report Templates
--
prompt  ......Row Template 2426939963900673
 
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
  p_id=> 2426939963900673 + wwv_flow_api.g_id_offset,
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
  p_id => 2426939963900673 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'OMIT',
  p_row_template_after_last =>'OMIT');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 2427039550900673
 
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
  p_id=> 2427039550900673 + wwv_flow_api.g_id_offset,
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
  p_id => 2427039550900673 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 2427142860900673
 
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
  p_id=> 2427142860900673 + wwv_flow_api.g_id_offset,
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
  p_id => 2427142860900673 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 2426546339900670
 
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
  p_id=> 2426546339900670 + wwv_flow_api.g_id_offset,
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
  p_id => 2426546339900670 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 2426640973900671
 
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
  p_id=> 2426640973900671 + wwv_flow_api.g_id_offset,
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
  p_id => 2426640973900671 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'OMIT',
  p_row_template_after_last =>'<tr><td colspan="2" class="t2seperate"><hr /></td></tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 2426739947900673
 
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
  p_id=> 2426739947900673 + wwv_flow_api.g_id_offset,
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
  p_id => 2426739947900673 + wwv_flow_api.g_id_offset,
  p_row_template_before_first =>'<tr #HIGHLIGHT_ROW#>',
  p_row_template_after_last =>'</tr>');
exception when others then null;
end;
null;
 
end;
/

prompt  ......Row Template 2426834871900673
 
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
  p_id=> 2426834871900673 + wwv_flow_api.g_id_offset,
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
  p_id => 2426834871900673 + wwv_flow_api.g_id_offset,
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
prompt  ......Field Template 2427255368900673
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 2427255368900673 + wwv_flow_api.g_id_offset,
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

prompt  ......Field Template 2427332484900676
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 2427332484900676 + wwv_flow_api.g_id_offset,
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

prompt  ......Field Template 2427455743900676
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 2427455743900676 + wwv_flow_api.g_id_offset,
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

prompt  ......Field Template 2427550862900676
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 2427550862900676 + wwv_flow_api.g_id_offset,
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

prompt  ......Field Template 2427654279900676
 
begin
 
begin
wwv_flow_api.create_field_template (
  p_id=> 2427654279900676 + wwv_flow_api.g_id_offset,
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
prompt  ......Breadcrumb Template 2427747557900676
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 2427747557900676 + wwv_flow_api.g_id_offset,
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

prompt  ......Breadcrumb Template 2427844577900682
 
begin
 
begin
wwv_flow_api.create_menu_template (
  p_id=> 2427844577900682 + wwv_flow_api.g_id_offset,
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
prompt  ......Popup LOV Template 2428545306900688
 
begin
 
begin
wwv_flow_api.create_popup_lov_template (
  p_id=> 2428545306900688 + wwv_flow_api.g_id_offset,
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
prompt  ......Calendar Template 2427951142900682
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 2427951142900682 + wwv_flow_api.g_id_offset,
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

prompt  ......Calendar Template 2428130133900687
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 2428130133900687 + wwv_flow_api.g_id_offset,
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

prompt  ......Calendar Template 2428348494900687
 
begin
 
begin
wwv_flow_api.create_calendar_template(
  p_id=> 2428348494900687 + wwv_flow_api.g_id_offset,
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
prompt  ......Theme 2428630819900690
begin
wwv_flow_api.create_theme (
  p_id                        =>2428630819900690 + wwv_flow_api.g_id_offset,
  p_flow_id                   =>wwv_flow.g_flow_id,
  p_theme_id  => 2,
  p_theme_name=>'Blue and Tan',
  p_default_page_template=>2422347813900637 + wwv_flow_api.g_id_offset,
  p_error_template=>2422347813900637 + wwv_flow_api.g_id_offset,
  p_printer_friendly_template=>2421734358900621 + wwv_flow_api.g_id_offset,
  p_breadcrumb_display_point=>'REGION_POSITION_01',
  p_sidebar_display_point=>'REGION_POSITION_02',
  p_login_template            =>2422546684900637 + wwv_flow_api.g_id_offset,
  p_default_button_template   =>2422849353900641 + wwv_flow_api.g_id_offset,
  p_default_region_template   =>2424350913900657 + wwv_flow_api.g_id_offset,
  p_default_chart_template    =>2423529578900652 + wwv_flow_api.g_id_offset,
  p_default_form_template     =>2423649325900652 + wwv_flow_api.g_id_offset,
  p_default_reportr_template   =>2424350913900657 + wwv_flow_api.g_id_offset,
  p_default_tabform_template  =>2424350913900657 + wwv_flow_api.g_id_offset,
  p_default_wizard_template   =>2423436817900652 + wwv_flow_api.g_id_offset,
  p_default_menur_template    =>2423334690900652 + wwv_flow_api.g_id_offset,
  p_default_listr_template    =>2424350913900657 + wwv_flow_api.g_id_offset,
  p_default_report_template   =>2426546339900670 + wwv_flow_api.g_id_offset,
  p_default_label_template    =>2427332484900676 + wwv_flow_api.g_id_offset,
  p_default_menu_template     =>2427747557900676 + wwv_flow_api.g_id_offset,
  p_default_calendar_template =>2428348494900687 + wwv_flow_api.g_id_offset,
  p_default_list_template     =>2425749527900668 + wwv_flow_api.g_id_offset,
  p_default_option_label      =>2427332484900676 + wwv_flow_api.g_id_offset,
  p_default_required_label    =>2427550862900676 + wwv_flow_api.g_id_offset);
end;
/
---------------------------------------
prompt  ...Build Options used by APPLICATION 102
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...Messages Used by Application: 102
--
---------------------------------------
prompt  ...Language Maps for Application 102
--
 
begin
 
null;
 
end;
/

---------------------------------------
prompt  ...Shortcuts
--
 
begin
 
declare
  c1 varchar2(32767) := null;
  l_clob clob;
  l_length number := 1;
begin
c1:=c1||'Would you like to perform this delete action?';

wwv_flow_api.create_shortcut (
 p_id=> 2505824703705068 + wwv_flow_api.g_id_offset,
 p_flow_id=> wwv_flow.g_flow_id,
 p_shortcut_name=> 'DELETE_CONFIRM_MSG',
 p_shortcut_type=> 'TEXT_ESCAPE_JS',
 p_shortcut=> c1);
end;
 
null;
 
end;
/

---------------------------------------
prompt  ...Configurations for application102
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
prompt  ......Authentication Schemes 2428742502900707
 
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
  p_id=> 2428742502900707 + wwv_flow_api.g_id_offset,
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

prompt  ......Authentication Schemes 2428854682900707
 
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
  p_id=> 2428854682900707 + wwv_flow_api.g_id_offset,
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

prompt  ......Authentication Schemes 2428929476900707
 
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
  p_id=> 2428929476900707 + wwv_flow_api.g_id_offset,
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
