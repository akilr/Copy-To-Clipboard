prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_210100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.0'
,p_default_workspace_id=>34855934618856717508
,p_default_application_id=>117274
,p_default_id_offset=>7559811305546521551
,p_default_owner=>'WORKSPACEAKIL'
);
end;
/
 
prompt APPLICATION 117274 - Test App
--
-- Application Export:
--   Application:     117274
--   Name:            Test App
--   Date and Time:   06:20 Friday May 28, 2021
--   Exported By:     AKILR20@GMAIL.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 16152554132576998999
--   Manifest End
--   Version:         21.1.0
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_api.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/dynamic_action/copy_to_clipboard_apex
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(16152554132576998999)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'COPY.TO.CLIPBOARD.APEX'
,p_display_name=>'Copy To Clipboard'
,p_category=>'EFFECT'
,p_supported_ui_types=>'DESKTOP'
,p_javascript_file_urls=>'#PLUGIN_FILES#CopyToClipboard.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION render(p_dynamic_action IN apex_plugin.t_dynamic_action,',
'                p_plugin         IN apex_plugin.t_plugin)',
'    RETURN apex_plugin.t_dynamic_action_render_result ',
'IS',
'  l_result       apex_plugin.t_dynamic_action_render_result;',
'BEGIN',
'  l_result.attribute_01 := p_dynamic_action.attribute_01;',
'  l_result.attribute_02 := p_dynamic_action.attribute_02;',
'  l_result.javascript_function := ''copyToClipBoard.execute'';',
'',
'  RETURN l_result;',
'',
'END render;'))
,p_api_version=>2
,p_render_function=>'render'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'https://github.com/akilr/Copy-To-Clipboard'
,p_files_version=>57
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(16154015871687039125)
,p_plugin_id=>wwv_flow_api.id(16152554132576998999)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Item To Be Copied'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>true
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(16165313746949277047)
,p_plugin_id=>wwv_flow_api.id(16152554132576998999)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Message'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'Copied to Clipboard!'
,p_max_length=>200
,p_supported_ui_types=>'DESKTOP'
,p_is_translatable=>true
,p_help_text=>'The maximum length of the message can only be 200 characters.'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2F20436F7079204974656D20746F20436C6970626F61726420696E20415045580D0A2F2F20417574686F723A20416B696C20520D0A2F2F2056657273696F6E3A20312E300D0A2F2F202A2A415045582068696464656E206974656D732063616E20616C';
wwv_flow_api.g_varchar2_table(2) := '736F20626520636F706965642A2A0D0A0D0A76617220636F7079546F436C6970426F617264203D207B0D0A090D0A092F2F66756E6374696F6E20746F2073686F77207468652073756363657373206D6573736167650D0A0973686F774D6573736167653A';
wwv_flow_api.g_varchar2_table(3) := '2066756E6374696F6E28704D65737361676529207B0D0A2020202020202020617065782E6D6573736167652E73686F77506167655375636365737328704D657373616765293B0D0A097D2C0D0A090D0A092F2F66756E6374696F6E20746F20636F707920';
wwv_flow_api.g_varchar2_table(4) := '746865206974656D200D0A20202020636F7079203A66756E6374696F6E2028704974656D2C704D65737361676529207B09090D0A09096C657420246974656D203D2024282723272B704974656D293B0D0A09096C6574207461674E616D65203D20246974';
wwv_flow_api.g_varchar2_table(5) := '656D5B305D2E7461674E616D653B0D0A09096C65742074797065203D20246974656D2E6174747228277479706527293B0D0A0D0A09092F2F6966202D3E20746F20636F707920746865206E6F726D616C206974656D287329202854657874204669656C64';
wwv_flow_api.g_varchar2_table(6) := '2C20546578742041726561206574632E2E290D0A09092F2F656C7365202D3E20746F20636F7079207468652068696464656E206974656D2873290D0A0909696628287461674E616D65203D3D3D2022494E50555422207C7C207461674E616D65203D3D3D';
wwv_flow_api.g_varchar2_table(7) := '202254455854415245412229202626207479706520213D202768696464656E2729207B090D0A0909202020246974656D2E73656C65637428293B0D0A0909202020646F63756D656E742E65786563436F6D6D616E642822636F707922293B0D0A09092020';
wwv_flow_api.g_varchar2_table(8) := '20696628704D65737361676529207B636F7079546F436C6970426F6172642E73686F774D65737361676528704D657373616765293B7D0D0A09097D0D0A0909656C7365206966287461674E616D65203D3D3D2022494E505554222026262074797065203D';
wwv_flow_api.g_varchar2_table(9) := '3D202768696464656E27297B090D0A0909202020246974656D2E61747472282274797065222C20227465787422292E73656C65637428293B0D0A0909202020646F63756D656E742E65786563436F6D6D616E642822636F707922293B0D0A090920202024';
wwv_flow_api.g_varchar2_table(10) := '6974656D2E61747472282274797065222C202268696464656E22293B092020200D0A0909202020696628704D65737361676529207B636F7079546F436C6970426F6172642E73686F774D65737361676528704D657373616765293B7D20200D0A09097D0D';
wwv_flow_api.g_varchar2_table(11) := '0A097D2C0D0A0D0A202020202F2F66756E6374696F6E207468617420676574732063616C6C65642066726F6D20706C7567696E0D0A20202020657865637574653A2066756E6374696F6E2829207B09090D0A09096C6574206974656D20203D2074686973';
wwv_flow_api.g_varchar2_table(12) := '2E616374696F6E2E61747472696275746530310D0A09096C6574206D657373616765203D20746869732E616374696F6E2E61747472696275746530323B0D0A0909636F7079546F436C6970426F6172642E636F7079286974656D2C6D657373616765293B';
wwv_flow_api.g_varchar2_table(13) := '0D0A097D0D0A7D3B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(16152669675410003648)
,p_plugin_id=>wwv_flow_api.id(16152554132576998999)
,p_file_name=>'CopyToClipboard.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
