INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_proc', 'pg_proc_proname_args_nsp_index', null, 'CREATE UNIQUE INDEX pg_proc_proname_args_nsp_index ON pg_catalog.pg_proc USING btree (proname, proargtypes, pronamespace)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_type', 'pg_type_typname_nsp_index', null, 'CREATE UNIQUE INDEX pg_type_typname_nsp_index ON pg_catalog.pg_type USING btree (typname, typnamespace)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_attribute', 'pg_attribute_relid_attnam_index', null, 'CREATE UNIQUE INDEX pg_attribute_relid_attnam_index ON pg_catalog.pg_attribute USING btree (attrelid, attname)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_class', 'pg_class_relname_nsp_index', null, 'CREATE UNIQUE INDEX pg_class_relname_nsp_index ON pg_catalog.pg_class USING btree (relname, relnamespace)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_class', 'pg_class_tblspc_relfilenode_index', null, 'CREATE INDEX pg_class_tblspc_relfilenode_index ON pg_catalog.pg_class USING btree (reltablespace, relfilenode)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_attrdef', 'pg_attrdef_adrelid_adnum_index', null, 'CREATE UNIQUE INDEX pg_attrdef_adrelid_adnum_index ON pg_catalog.pg_attrdef USING btree (adrelid, adnum)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_type', 'pg_type_oid_index', null, 'CREATE UNIQUE INDEX pg_type_oid_index ON pg_catalog.pg_type USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_attribute', 'pg_attribute_relid_attnum_index', null, 'CREATE UNIQUE INDEX pg_attribute_relid_attnum_index ON pg_catalog.pg_attribute USING btree (attrelid, attnum)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_attrdef', 'pg_attrdef_oid_index', null, 'CREATE UNIQUE INDEX pg_attrdef_oid_index ON pg_catalog.pg_attrdef USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_constraint', 'pg_constraint_conname_nsp_index', null, 'CREATE INDEX pg_constraint_conname_nsp_index ON pg_catalog.pg_constraint USING btree (conname, connamespace)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_constraint', 'pg_constraint_conrelid_contypid_conname_index', null, 'CREATE UNIQUE INDEX pg_constraint_conrelid_contypid_conname_index ON pg_catalog.pg_constraint USING btree (conrelid, contypid, conname)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_constraint', 'pg_constraint_contypid_index', null, 'CREATE INDEX pg_constraint_contypid_index ON pg_catalog.pg_constraint USING btree (contypid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_constraint', 'pg_constraint_conparentid_index', null, 'CREATE INDEX pg_constraint_conparentid_index ON pg_catalog.pg_constraint USING btree (conparentid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_inherits', 'pg_inherits_parent_index', null, 'CREATE INDEX pg_inherits_parent_index ON pg_catalog.pg_inherits USING btree (inhparent)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_index', 'pg_index_indrelid_index', null, 'CREATE INDEX pg_index_indrelid_index ON pg_catalog.pg_index USING btree (indrelid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_operator', 'pg_operator_oprname_l_r_n_index', null, 'CREATE UNIQUE INDEX pg_operator_oprname_l_r_n_index ON pg_catalog.pg_operator USING btree (oprname, oprleft, oprright, oprnamespace)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_opfamily', 'pg_opfamily_am_name_nsp_index', null, 'CREATE UNIQUE INDEX pg_opfamily_am_name_nsp_index ON pg_catalog.pg_opfamily USING btree (opfmethod, opfname, opfnamespace)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_opclass', 'pg_opclass_am_name_nsp_index', null, 'CREATE UNIQUE INDEX pg_opclass_am_name_nsp_index ON pg_catalog.pg_opclass USING btree (opcmethod, opcname, opcnamespace)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_am', 'pg_am_name_index', null, 'CREATE UNIQUE INDEX pg_am_name_index ON pg_catalog.pg_am USING btree (amname)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_amop', 'pg_amop_fam_strat_index', null, 'CREATE UNIQUE INDEX pg_amop_fam_strat_index ON pg_catalog.pg_amop USING btree (amopfamily, amoplefttype, amoprighttype, amopstrategy)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_amop', 'pg_amop_opr_fam_index', null, 'CREATE UNIQUE INDEX pg_amop_opr_fam_index ON pg_catalog.pg_amop USING btree (amopopr, amoppurpose, amopfamily)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_amproc', 'pg_amproc_fam_proc_index', null, 'CREATE UNIQUE INDEX pg_amproc_fam_proc_index ON pg_catalog.pg_amproc USING btree (amprocfamily, amproclefttype, amprocrighttype, amprocnum)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_language', 'pg_language_name_index', null, 'CREATE UNIQUE INDEX pg_language_name_index ON pg_catalog.pg_language USING btree (lanname)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_statistic_ext', 'pg_statistic_ext_name_index', null, 'CREATE UNIQUE INDEX pg_statistic_ext_name_index ON pg_catalog.pg_statistic_ext USING btree (stxname, stxnamespace)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_statistic_ext', 'pg_statistic_ext_relid_index', null, 'CREATE INDEX pg_statistic_ext_relid_index ON pg_catalog.pg_statistic_ext USING btree (stxrelid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_rewrite', 'pg_rewrite_rel_rulename_index', null, 'CREATE UNIQUE INDEX pg_rewrite_rel_rulename_index ON pg_catalog.pg_rewrite USING btree (ev_class, rulename)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_trigger', 'pg_trigger_tgconstraint_index', null, 'CREATE INDEX pg_trigger_tgconstraint_index ON pg_catalog.pg_trigger USING btree (tgconstraint)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_trigger', 'pg_trigger_tgrelid_tgname_index', null, 'CREATE UNIQUE INDEX pg_trigger_tgrelid_tgname_index ON pg_catalog.pg_trigger USING btree (tgrelid, tgname)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_event_trigger', 'pg_event_trigger_evtname_index', null, 'CREATE UNIQUE INDEX pg_event_trigger_evtname_index ON pg_catalog.pg_event_trigger USING btree (evtname)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_cast', 'pg_cast_source_target_index', null, 'CREATE UNIQUE INDEX pg_cast_source_target_index ON pg_catalog.pg_cast USING btree (castsource, casttarget)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_enum', 'pg_enum_typid_label_index', null, 'CREATE UNIQUE INDEX pg_enum_typid_label_index ON pg_catalog.pg_enum USING btree (enumtypid, enumlabel)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_enum', 'pg_enum_typid_sortorder_index', null, 'CREATE UNIQUE INDEX pg_enum_typid_sortorder_index ON pg_catalog.pg_enum USING btree (enumtypid, enumsortorder)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_inherits', 'pg_inherits_relid_seqno_index', null, 'CREATE UNIQUE INDEX pg_inherits_relid_seqno_index ON pg_catalog.pg_inherits USING btree (inhrelid, inhseqno)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_operator', 'pg_operator_oid_index', null, 'CREATE UNIQUE INDEX pg_operator_oid_index ON pg_catalog.pg_operator USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_opfamily', 'pg_opfamily_oid_index', null, 'CREATE UNIQUE INDEX pg_opfamily_oid_index ON pg_catalog.pg_opfamily USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_opclass', 'pg_opclass_oid_index', null, 'CREATE UNIQUE INDEX pg_opclass_oid_index ON pg_catalog.pg_opclass USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_am', 'pg_am_oid_index', null, 'CREATE UNIQUE INDEX pg_am_oid_index ON pg_catalog.pg_am USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_amop', 'pg_amop_oid_index', null, 'CREATE UNIQUE INDEX pg_amop_oid_index ON pg_catalog.pg_amop USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_amproc', 'pg_amproc_oid_index', null, 'CREATE UNIQUE INDEX pg_amproc_oid_index ON pg_catalog.pg_amproc USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_language', 'pg_language_oid_index', null, 'CREATE UNIQUE INDEX pg_language_oid_index ON pg_catalog.pg_language USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_largeobject_metadata', 'pg_largeobject_metadata_oid_index', null, 'CREATE UNIQUE INDEX pg_largeobject_metadata_oid_index ON pg_catalog.pg_largeobject_metadata USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_largeobject', 'pg_largeobject_loid_pn_index', null, 'CREATE UNIQUE INDEX pg_largeobject_loid_pn_index ON pg_catalog.pg_largeobject USING btree (loid, pageno)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_aggregate', 'pg_aggregate_fnoid_index', null, 'CREATE UNIQUE INDEX pg_aggregate_fnoid_index ON pg_catalog.pg_aggregate USING btree (aggfnoid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_statistic', 'pg_statistic_relid_att_inh_index', null, 'CREATE UNIQUE INDEX pg_statistic_relid_att_inh_index ON pg_catalog.pg_statistic USING btree (starelid, staattnum, stainherit)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_statistic_ext', 'pg_statistic_ext_oid_index', null, 'CREATE UNIQUE INDEX pg_statistic_ext_oid_index ON pg_catalog.pg_statistic_ext USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_statistic_ext_data', 'pg_statistic_ext_data_stxoid_index', null, 'CREATE UNIQUE INDEX pg_statistic_ext_data_stxoid_index ON pg_catalog.pg_statistic_ext_data USING btree (stxoid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_rewrite', 'pg_rewrite_oid_index', null, 'CREATE UNIQUE INDEX pg_rewrite_oid_index ON pg_catalog.pg_rewrite USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_trigger', 'pg_trigger_oid_index', null, 'CREATE UNIQUE INDEX pg_trigger_oid_index ON pg_catalog.pg_trigger USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_event_trigger', 'pg_event_trigger_oid_index', null, 'CREATE UNIQUE INDEX pg_event_trigger_oid_index ON pg_catalog.pg_event_trigger USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_description', 'pg_description_o_c_o_index', null, 'CREATE UNIQUE INDEX pg_description_o_c_o_index ON pg_catalog.pg_description USING btree (objoid, classoid, objsubid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_cast', 'pg_cast_oid_index', null, 'CREATE UNIQUE INDEX pg_cast_oid_index ON pg_catalog.pg_cast USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_enum', 'pg_enum_oid_index', null, 'CREATE UNIQUE INDEX pg_enum_oid_index ON pg_catalog.pg_enum USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_namespace', 'pg_namespace_nspname_index', null, 'CREATE UNIQUE INDEX pg_namespace_nspname_index ON pg_catalog.pg_namespace USING btree (nspname)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_conversion', 'pg_conversion_default_index', null, 'CREATE UNIQUE INDEX pg_conversion_default_index ON pg_catalog.pg_conversion USING btree (connamespace, conforencoding, contoencoding, oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_conversion', 'pg_conversion_name_nsp_index', null, 'CREATE UNIQUE INDEX pg_conversion_name_nsp_index ON pg_catalog.pg_conversion USING btree (conname, connamespace)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_depend', 'pg_depend_depender_index', null, 'CREATE INDEX pg_depend_depender_index ON pg_catalog.pg_depend USING btree (classid, objid, objsubid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_depend', 'pg_depend_reference_index', null, 'CREATE INDEX pg_depend_reference_index ON pg_catalog.pg_depend USING btree (refclassid, refobjid, refobjsubid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_database', 'pg_database_datname_index', 'pg_global', 'CREATE UNIQUE INDEX pg_database_datname_index ON pg_catalog.pg_database USING btree (datname)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_tablespace', 'pg_tablespace_spcname_index', 'pg_global', 'CREATE UNIQUE INDEX pg_tablespace_spcname_index ON pg_catalog.pg_tablespace USING btree (spcname)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_authid', 'pg_authid_rolname_index', 'pg_global', 'CREATE UNIQUE INDEX pg_authid_rolname_index ON pg_catalog.pg_authid USING btree (rolname)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_auth_members', 'pg_auth_members_member_role_index', 'pg_global', 'CREATE UNIQUE INDEX pg_auth_members_member_role_index ON pg_catalog.pg_auth_members USING btree (member, roleid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_shdepend', 'pg_shdepend_depender_index', 'pg_global', 'CREATE INDEX pg_shdepend_depender_index ON pg_catalog.pg_shdepend USING btree (dbid, classid, objid, objsubid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_shdepend', 'pg_shdepend_reference_index', 'pg_global', 'CREATE INDEX pg_shdepend_reference_index ON pg_catalog.pg_shdepend USING btree (refclassid, refobjid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_ts_config', 'pg_ts_config_cfgname_index', null, 'CREATE UNIQUE INDEX pg_ts_config_cfgname_index ON pg_catalog.pg_ts_config USING btree (cfgname, cfgnamespace)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_ts_dict', 'pg_ts_dict_dictname_index', null, 'CREATE UNIQUE INDEX pg_ts_dict_dictname_index ON pg_catalog.pg_ts_dict USING btree (dictname, dictnamespace)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_ts_parser', 'pg_ts_parser_prsname_index', null, 'CREATE UNIQUE INDEX pg_ts_parser_prsname_index ON pg_catalog.pg_ts_parser USING btree (prsname, prsnamespace)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_ts_template', 'pg_ts_template_tmplname_index', null, 'CREATE UNIQUE INDEX pg_ts_template_tmplname_index ON pg_catalog.pg_ts_template USING btree (tmplname, tmplnamespace)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_extension', 'pg_extension_name_index', null, 'CREATE UNIQUE INDEX pg_extension_name_index ON pg_catalog.pg_extension USING btree (extname)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_foreign_data_wrapper', 'pg_foreign_data_wrapper_name_index', null, 'CREATE UNIQUE INDEX pg_foreign_data_wrapper_name_index ON pg_catalog.pg_foreign_data_wrapper USING btree (fdwname)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_foreign_server', 'pg_foreign_server_name_index', null, 'CREATE UNIQUE INDEX pg_foreign_server_name_index ON pg_catalog.pg_foreign_server USING btree (srvname)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_user_mapping', 'pg_user_mapping_user_server_index', null, 'CREATE UNIQUE INDEX pg_user_mapping_user_server_index ON pg_catalog.pg_user_mapping USING btree (umuser, umserver)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_policy', 'pg_policy_polrelid_polname_index', null, 'CREATE UNIQUE INDEX pg_policy_polrelid_polname_index ON pg_catalog.pg_policy USING btree (polrelid, polname)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_replication_origin', 'pg_replication_origin_roname_index', 'pg_global', 'CREATE UNIQUE INDEX pg_replication_origin_roname_index ON pg_catalog.pg_replication_origin USING btree (roname)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_default_acl', 'pg_default_acl_role_nsp_obj_index', null, 'CREATE UNIQUE INDEX pg_default_acl_role_nsp_obj_index ON pg_catalog.pg_default_acl USING btree (defaclrole, defaclnamespace, defaclobjtype)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_conversion', 'pg_conversion_oid_index', null, 'CREATE UNIQUE INDEX pg_conversion_oid_index ON pg_catalog.pg_conversion USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_database', 'pg_database_oid_index', 'pg_global', 'CREATE UNIQUE INDEX pg_database_oid_index ON pg_catalog.pg_database USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_db_role_setting', 'pg_db_role_setting_databaseid_rol_index', 'pg_global', 'CREATE UNIQUE INDEX pg_db_role_setting_databaseid_rol_index ON pg_catalog.pg_db_role_setting USING btree (setdatabase, setrole)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_tablespace', 'pg_tablespace_oid_index', 'pg_global', 'CREATE UNIQUE INDEX pg_tablespace_oid_index ON pg_catalog.pg_tablespace USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_auth_members', 'pg_auth_members_role_member_index', 'pg_global', 'CREATE UNIQUE INDEX pg_auth_members_role_member_index ON pg_catalog.pg_auth_members USING btree (roleid, member)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_shdescription', 'pg_shdescription_o_c_index', 'pg_global', 'CREATE UNIQUE INDEX pg_shdescription_o_c_index ON pg_catalog.pg_shdescription USING btree (objoid, classoid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_ts_config', 'pg_ts_config_oid_index', null, 'CREATE UNIQUE INDEX pg_ts_config_oid_index ON pg_catalog.pg_ts_config USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_ts_config_map', 'pg_ts_config_map_index', null, 'CREATE UNIQUE INDEX pg_ts_config_map_index ON pg_catalog.pg_ts_config_map USING btree (mapcfg, maptokentype, mapseqno)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_ts_dict', 'pg_ts_dict_oid_index', null, 'CREATE UNIQUE INDEX pg_ts_dict_oid_index ON pg_catalog.pg_ts_dict USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_ts_parser', 'pg_ts_parser_oid_index', null, 'CREATE UNIQUE INDEX pg_ts_parser_oid_index ON pg_catalog.pg_ts_parser USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_ts_template', 'pg_ts_template_oid_index', null, 'CREATE UNIQUE INDEX pg_ts_template_oid_index ON pg_catalog.pg_ts_template USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_extension', 'pg_extension_oid_index', null, 'CREATE UNIQUE INDEX pg_extension_oid_index ON pg_catalog.pg_extension USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_foreign_data_wrapper', 'pg_foreign_data_wrapper_oid_index', null, 'CREATE UNIQUE INDEX pg_foreign_data_wrapper_oid_index ON pg_catalog.pg_foreign_data_wrapper USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_foreign_server', 'pg_foreign_server_oid_index', null, 'CREATE UNIQUE INDEX pg_foreign_server_oid_index ON pg_catalog.pg_foreign_server USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_user_mapping', 'pg_user_mapping_oid_index', null, 'CREATE UNIQUE INDEX pg_user_mapping_oid_index ON pg_catalog.pg_user_mapping USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_foreign_table', 'pg_foreign_table_relid_index', null, 'CREATE UNIQUE INDEX pg_foreign_table_relid_index ON pg_catalog.pg_foreign_table USING btree (ftrelid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_policy', 'pg_policy_oid_index', null, 'CREATE UNIQUE INDEX pg_policy_oid_index ON pg_catalog.pg_policy USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_replication_origin', 'pg_replication_origin_roiident_index', 'pg_global', 'CREATE UNIQUE INDEX pg_replication_origin_roiident_index ON pg_catalog.pg_replication_origin USING btree (roident)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_default_acl', 'pg_default_acl_oid_index', null, 'CREATE UNIQUE INDEX pg_default_acl_oid_index ON pg_catalog.pg_default_acl USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_init_privs', 'pg_init_privs_o_c_o_index', null, 'CREATE UNIQUE INDEX pg_init_privs_o_c_o_index ON pg_catalog.pg_init_privs USING btree (objoid, classoid, objsubid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_seclabel', 'pg_seclabel_object_index', null, 'CREATE UNIQUE INDEX pg_seclabel_object_index ON pg_catalog.pg_seclabel USING btree (objoid, classoid, objsubid, provider)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_collation', 'pg_collation_name_enc_nsp_index', null, 'CREATE UNIQUE INDEX pg_collation_name_enc_nsp_index ON pg_catalog.pg_collation USING btree (collname, collencoding, collnamespace)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_range', 'pg_range_rngmultitypid_index', null, 'CREATE UNIQUE INDEX pg_range_rngmultitypid_index ON pg_catalog.pg_range USING btree (rngmultitypid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_transform', 'pg_transform_type_lang_index', null, 'CREATE UNIQUE INDEX pg_transform_type_lang_index ON pg_catalog.pg_transform USING btree (trftype, trflang)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_publication', 'pg_publication_pubname_index', null, 'CREATE UNIQUE INDEX pg_publication_pubname_index ON pg_catalog.pg_publication USING btree (pubname)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_publication_rel', 'pg_publication_rel_prrelid_prpubid_index', null, 'CREATE UNIQUE INDEX pg_publication_rel_prrelid_prpubid_index ON pg_catalog.pg_publication_rel USING btree (prrelid, prpubid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_subscription', 'pg_subscription_subname_index', 'pg_global', 'CREATE UNIQUE INDEX pg_subscription_subname_index ON pg_catalog.pg_subscription USING btree (subdbid, subname)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_proc', 'pg_proc_oid_index', null, 'CREATE UNIQUE INDEX pg_proc_oid_index ON pg_catalog.pg_proc USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_class', 'pg_class_oid_index', null, 'CREATE UNIQUE INDEX pg_class_oid_index ON pg_catalog.pg_class USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_constraint', 'pg_constraint_oid_index', null, 'CREATE UNIQUE INDEX pg_constraint_oid_index ON pg_catalog.pg_constraint USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_index', 'pg_index_indexrelid_index', null, 'CREATE UNIQUE INDEX pg_index_indexrelid_index ON pg_catalog.pg_index USING btree (indexrelid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_namespace', 'pg_namespace_oid_index', null, 'CREATE UNIQUE INDEX pg_namespace_oid_index ON pg_catalog.pg_namespace USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_authid', 'pg_authid_oid_index', 'pg_global', 'CREATE UNIQUE INDEX pg_authid_oid_index ON pg_catalog.pg_authid USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_shseclabel', 'pg_shseclabel_object_index', 'pg_global', 'CREATE UNIQUE INDEX pg_shseclabel_object_index ON pg_catalog.pg_shseclabel USING btree (objoid, classoid, provider)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_collation', 'pg_collation_oid_index', null, 'CREATE UNIQUE INDEX pg_collation_oid_index ON pg_catalog.pg_collation USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_partitioned_table', 'pg_partitioned_table_partrelid_index', null, 'CREATE UNIQUE INDEX pg_partitioned_table_partrelid_index ON pg_catalog.pg_partitioned_table USING btree (partrelid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_range', 'pg_range_rngtypid_index', null, 'CREATE UNIQUE INDEX pg_range_rngtypid_index ON pg_catalog.pg_range USING btree (rngtypid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_transform', 'pg_transform_oid_index', null, 'CREATE UNIQUE INDEX pg_transform_oid_index ON pg_catalog.pg_transform USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_sequence', 'pg_sequence_seqrelid_index', null, 'CREATE UNIQUE INDEX pg_sequence_seqrelid_index ON pg_catalog.pg_sequence USING btree (seqrelid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_publication', 'pg_publication_oid_index', null, 'CREATE UNIQUE INDEX pg_publication_oid_index ON pg_catalog.pg_publication USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_publication_rel', 'pg_publication_rel_oid_index', null, 'CREATE UNIQUE INDEX pg_publication_rel_oid_index ON pg_catalog.pg_publication_rel USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_subscription', 'pg_subscription_oid_index', 'pg_global', 'CREATE UNIQUE INDEX pg_subscription_oid_index ON pg_catalog.pg_subscription USING btree (oid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('pg_catalog', 'pg_subscription_rel', 'pg_subscription_rel_srrelid_srsubid_index', null, 'CREATE UNIQUE INDEX pg_subscription_rel_srrelid_srsubid_index ON pg_catalog.pg_subscription_rel USING btree (srrelid, srsubid)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('public', 'usuarios', 'usuarios_pkey', null, 'CREATE UNIQUE INDEX usuarios_pkey ON public.usuarios USING btree (id)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('public', 'quadros', 'quadros_pkey', null, 'CREATE UNIQUE INDEX quadros_pkey ON public.quadros USING btree (id)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('public', 'colunas', 'colunas_pkey', null, 'CREATE UNIQUE INDEX colunas_pkey ON public.colunas USING btree (id)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('public', 'cartoes', 'cartoes_pkey', null, 'CREATE UNIQUE INDEX cartoes_pkey ON public.cartoes USING btree (id)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('public', 'etiquetas', 'etiquetas_pkey', null, 'CREATE UNIQUE INDEX etiquetas_pkey ON public.etiquetas USING btree (id)');
INSERT INTO pg_catalog.pg_indexes (schemaname, tablename, indexname, tablespace, indexdef) VALUES ('public', 'cartao_etiquetas', 'cartao_etiquetas_pkey', null, 'CREATE UNIQUE INDEX cartao_etiquetas_pkey ON public.cartao_etiquetas USING btree (id)');