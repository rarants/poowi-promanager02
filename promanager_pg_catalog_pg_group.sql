INSERT INTO pg_catalog.pg_group (groname, grosysid, grolist) VALUES ('pg_database_owner', 6171, '');
INSERT INTO pg_catalog.pg_group (groname, grosysid, grolist) VALUES ('pg_read_all_data', 6181, '');
INSERT INTO pg_catalog.pg_group (groname, grosysid, grolist) VALUES ('pg_write_all_data', 6182, '');
INSERT INTO pg_catalog.pg_group (groname, grosysid, grolist) VALUES ('pg_monitor', 3373, '');
INSERT INTO pg_catalog.pg_group (groname, grosysid, grolist) VALUES ('pg_read_all_settings', 3374, '{3373}');
INSERT INTO pg_catalog.pg_group (groname, grosysid, grolist) VALUES ('pg_read_all_stats', 3375, '{3373}');
INSERT INTO pg_catalog.pg_group (groname, grosysid, grolist) VALUES ('pg_stat_scan_tables', 3377, '{3373}');
INSERT INTO pg_catalog.pg_group (groname, grosysid, grolist) VALUES ('pg_read_server_files', 4569, '');
INSERT INTO pg_catalog.pg_group (groname, grosysid, grolist) VALUES ('pg_write_server_files', 4570, '');
INSERT INTO pg_catalog.pg_group (groname, grosysid, grolist) VALUES ('pg_execute_server_program', 4571, '');
INSERT INTO pg_catalog.pg_group (groname, grosysid, grolist) VALUES ('pg_signal_backend', 4200, '');