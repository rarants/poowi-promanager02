INSERT INTO pg_catalog.pg_hba_file_rules (line_number, type, database, user_name, address, netmask, auth_method, options, error) VALUES (85, 'local', '{all}', '{all}', null, null, 'scram-sha-256', null, null);
INSERT INTO pg_catalog.pg_hba_file_rules (line_number, type, database, user_name, address, netmask, auth_method, options, error) VALUES (87, 'host', '{all}', '{all}', '127.0.0.1', '255.255.255.255', 'scram-sha-256', null, null);
INSERT INTO pg_catalog.pg_hba_file_rules (line_number, type, database, user_name, address, netmask, auth_method, options, error) VALUES (89, 'host', '{all}', '{all}', '::1', 'ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff', 'scram-sha-256', null, null);
INSERT INTO pg_catalog.pg_hba_file_rules (line_number, type, database, user_name, address, netmask, auth_method, options, error) VALUES (92, 'local', '{replication}', '{all}', null, null, 'scram-sha-256', null, null);
INSERT INTO pg_catalog.pg_hba_file_rules (line_number, type, database, user_name, address, netmask, auth_method, options, error) VALUES (93, 'host', '{replication}', '{all}', '127.0.0.1', '255.255.255.255', 'scram-sha-256', null, null);
INSERT INTO pg_catalog.pg_hba_file_rules (line_number, type, database, user_name, address, netmask, auth_method, options, error) VALUES (94, 'host', '{replication}', '{all}', '::1', 'ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff', 'scram-sha-256', null, null);