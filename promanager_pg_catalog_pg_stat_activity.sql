INSERT INTO pg_catalog.pg_stat_activity (datid, datname, pid, leader_pid, usesysid, usename, application_name, client_addr, client_hostname, client_port, backend_start, xact_start, query_start, state_change, wait_event_type, wait_event, state, backend_xid, backend_xmin, query_id, query, backend_type) VALUES (null, null, 4252, null, null, null, '', null, null, null, '2022-08-11 09:09:36.189025', null, null, null, 'Activity', 'AutoVacuumMain', null, null, null, null, '', 'autovacuum launcher');
INSERT INTO pg_catalog.pg_stat_activity (datid, datname, pid, leader_pid, usesysid, usename, application_name, client_addr, client_hostname, client_port, backend_start, xact_start, query_start, state_change, wait_event_type, wait_event, state, backend_xid, backend_xmin, query_id, query, backend_type) VALUES (null, null, 7076, null, 10, 'postgres', '', null, null, null, '2022-08-11 09:09:38.049186', null, null, null, 'Activity', 'LogicalLauncherMain', null, null, null, null, '', 'logical replication launcher');
INSERT INTO pg_catalog.pg_stat_activity (datid, datname, pid, leader_pid, usesysid, usename, application_name, client_addr, client_hostname, client_port, backend_start, xact_start, query_start, state_change, wait_event_type, wait_event, state, backend_xid, backend_xmin, query_id, query, backend_type) VALUES (13754, 'postgres', 14528, null, 10, 'postgres', 'pgAdmin 4 - DB:postgres', '::1', null, 56727, '2022-08-12 16:57:08.408338', null, '2022-08-12 17:55:47.382183', '2022-08-12 17:55:47.382672', 'Client', 'ClientRead', 'idle', null, null, null, 'SELECT DISTINCT(datctype) AS cname
FROM pg_catalog.pg_database
UNION
SELECT DISTINCT(datcollate) AS cname
FROM pg_catalog.pg_database', 'client backend');
INSERT INTO pg_catalog.pg_stat_activity (datid, datname, pid, leader_pid, usesysid, usename, application_name, client_addr, client_hostname, client_port, backend_start, xact_start, query_start, state_change, wait_event_type, wait_event, state, backend_xid, backend_xmin, query_id, query, backend_type) VALUES (13754, 'postgres', 14232, null, 10, 'postgres', 'pgAdmin 4 - CONN:9367720', '::1', null, 54725, '2022-08-12 16:57:43.057349', null, '2022-08-12 16:58:27.485886', '2022-08-12 16:58:27.486608', 'Client', 'ClientRead', 'idle', null, null, null, 'SELECT q.descricao quadro_descricao, 
	q.titulo quadro_titulo, 
	cl.id id_coluna, 
	cl.titulo coluna_titulo, 
	ct.id id_cartao, 
	ct.titulo cartao_titulo, 
	ct.descricao cartao_descricao, 
	status, data_inicio, data_termino, data_atualizacao 
FROM quadros q 
LEFT JOIN colunas cl 
LEFT JOIN cartoes ct 
ON cl.id = ct.id_coluna 
ON q.id = cl.id_quadro 
WHERE q.id = 19 
ORDER BY cl.id,  ct.id;', 'client backend');
INSERT INTO pg_catalog.pg_stat_activity (datid, datname, pid, leader_pid, usesysid, usename, application_name, client_addr, client_hostname, client_port, backend_start, xact_start, query_start, state_change, wait_event_type, wait_event, state, backend_xid, backend_xmin, query_id, query, backend_type) VALUES (16446, 'promanager', 12476, null, 10, 'postgres', 'pgAdmin 4 - DB:promanager', '::1', null, 54965, '2022-08-12 16:58:47.203455', null, '2022-08-12 17:55:42.783883', '2022-08-12 17:55:42.831175', 'Client', 'ClientRead', 'idle', null, null, null, '/*pga4dash*/
SELECT ''session_stats'' AS chart_name, pg_catalog.row_to_json(t) AS chart_data
FROM (SELECT
   (SELECT count(*) FROM pg_catalog.pg_stat_activity WHERE datname = (SELECT datname FROM pg_catalog.pg_database WHERE oid = 16446)) AS "Total",
   (SELECT count(*) FROM pg_catalog.pg_stat_activity WHERE state = ''active'' AND datname = (SELECT datname FROM pg_catalog.pg_database WHERE oid = 16446))  AS "Active",
   (SELECT count(*) FROM pg_catalog.pg_stat_activity WHERE state = ''idle'' AND datname = (SELECT datname FROM pg_catalog.pg_database WHERE oid = 16446))  AS "Idle"
) t
UNION ALL
SELECT ''tps_stats'' AS chart_name, pg_catalog.row_to_json(t) AS chart_data
FROM (SELECT
   (SELECT sum(xact_commit) + sum(xact_rollback) FROM pg_catalog.pg_stat_database WHERE datname = (SELECT datname FROM pg_catalog.pg_database WHERE oid = 16446)) AS "Transactions",
   (SELECT sum(xact_commit) FROM pg_catalog.pg_stat_database WHERE datname = (SELECT datname FROM pg_catalog.pg_database WHERE oid = 16446)) AS "Commits",
   (SE', 'client backend');
INSERT INTO pg_catalog.pg_stat_activity (datid, datname, pid, leader_pid, usesysid, usename, application_name, client_addr, client_hostname, client_port, backend_start, xact_start, query_start, state_change, wait_event_type, wait_event, state, backend_xid, backend_xmin, query_id, query, backend_type) VALUES (16446, 'promanager', 11280, null, 10, 'postgres', 'pgAdmin 4 - CONN:107710', '::1', null, 64300, '2022-08-12 16:58:52.307084', null, '2022-08-12 16:58:56.510059', '2022-08-12 16:58:56.516395', 'Client', 'ClientRead', 'idle', null, null, null, 'SELECT oid, pg_catalog.format_type(oid, NULL) AS typname FROM pg_catalog.pg_type WHERE oid IN (25, 1043, 23, 1043, 23, 1043, 25, 16, 1082, 1082, 1082) ORDER BY oid;', 'client backend');
INSERT INTO pg_catalog.pg_stat_activity (datid, datname, pid, leader_pid, usesysid, usename, application_name, client_addr, client_hostname, client_port, backend_start, xact_start, query_start, state_change, wait_event_type, wait_event, state, backend_xid, backend_xmin, query_id, query, backend_type) VALUES (16446, 'promanager', 14624, null, 10, 'postgres', 'PostgreSQL JDBC Driver', '127.0.0.1', null, 57977, '2022-08-12 17:55:53.743649', '2022-08-12 17:55:53.943949', '2022-08-12 17:55:53.955402', '2022-08-12 17:55:53.955403', null, null, 'active', null, 921, null, 'SELECT t.* FROM pg_catalog.pg_stat_activity t', 'client backend');
INSERT INTO pg_catalog.pg_stat_activity (datid, datname, pid, leader_pid, usesysid, usename, application_name, client_addr, client_hostname, client_port, backend_start, xact_start, query_start, state_change, wait_event_type, wait_event, state, backend_xid, backend_xmin, query_id, query, backend_type) VALUES (16606, 'promanager2', 12472, null, 10, 'postgres', 'pgAdmin 4 - DB:promanager2', '::1', null, 58173, '2022-08-12 17:19:37.894165', null, '2022-08-12 17:55:53.841902', '2022-08-12 17:55:53.881591', 'Client', 'ClientRead', 'idle', null, null, null, '/*pga4dash*/
SELECT ''session_stats'' AS chart_name, pg_catalog.row_to_json(t) AS chart_data
FROM (SELECT
   (SELECT count(*) FROM pg_catalog.pg_stat_activity WHERE datname = (SELECT datname FROM pg_catalog.pg_database WHERE oid = 16606)) AS "Total",
   (SELECT count(*) FROM pg_catalog.pg_stat_activity WHERE state = ''active'' AND datname = (SELECT datname FROM pg_catalog.pg_database WHERE oid = 16606))  AS "Active",
   (SELECT count(*) FROM pg_catalog.pg_stat_activity WHERE state = ''idle'' AND datname = (SELECT datname FROM pg_catalog.pg_database WHERE oid = 16606))  AS "Idle"
) t
UNION ALL
SELECT ''tps_stats'' AS chart_name, pg_catalog.row_to_json(t) AS chart_data
FROM (SELECT
   (SELECT sum(xact_commit) + sum(xact_rollback) FROM pg_catalog.pg_stat_database WHERE datname = (SELECT datname FROM pg_catalog.pg_database WHERE oid = 16606)) AS "Transactions",
   (SELECT sum(xact_commit) FROM pg_catalog.pg_stat_database WHERE datname = (SELECT datname FROM pg_catalog.pg_database WHERE oid = 16606)) AS "Commits",
   (SE', 'client backend');
INSERT INTO pg_catalog.pg_stat_activity (datid, datname, pid, leader_pid, usesysid, usename, application_name, client_addr, client_hostname, client_port, backend_start, xact_start, query_start, state_change, wait_event_type, wait_event, state, backend_xid, backend_xmin, query_id, query, backend_type) VALUES (16606, 'promanager2', 1364, null, 10, 'postgres', 'pgAdmin 4 - CONN:8738464', '::1', null, 53077, '2022-08-12 17:20:09.216187', null, '2022-08-12 17:20:14.032280', '2022-08-12 17:20:16.085255', 'Client', 'ClientRead', 'idle', null, null, null, 'create table usuarios(
	id serial primary key,
	nome varchar(50) not null,
	email varchar(255) not null,
	senha varchar(50) not null,
	ativo boolean default true
);
create table quadros(
	id serial primary key,
	titulo varchar(50) not null,
	descricao text not null,
	publico boolean default false,
	id_usuario integer,
	foreign key (id_usuario) references usuarios(id) on delete cascade
);
create table colunas(
	id serial primary key,
	titulo varchar(50) not null,
	ordem integer,
	id_quadro integer,
	foreign key (id_quadro) references quadros(id) on delete cascade
);
create table cartoes(
	id serial primary key,
	titulo varchar(50) not null,
	status boolean default false,
	ordem integer,
	data_inicio date,
	data_termino date,
	data_atualizacao date not null default current_timestamp,
	id_coluna integer,
	descricao text,
	foreign key (id_coluna) references colunas(id) on delete cascade
);
create table etiquetas(
	id serial primary key,
	titulo varchar(50) not null,
	cor varchar(50) default ''deafult'',
	id_quadro', 'client backend');
INSERT INTO pg_catalog.pg_stat_activity (datid, datname, pid, leader_pid, usesysid, usename, application_name, client_addr, client_hostname, client_port, backend_start, xact_start, query_start, state_change, wait_event_type, wait_event, state, backend_xid, backend_xmin, query_id, query, backend_type) VALUES (null, null, 1704, null, null, null, '', null, null, null, '2022-08-11 09:09:33.333401', null, null, null, 'Activity', 'BgWriterHibernate', null, null, null, null, '', 'background writer');
INSERT INTO pg_catalog.pg_stat_activity (datid, datname, pid, leader_pid, usesysid, usename, application_name, client_addr, client_hostname, client_port, backend_start, xact_start, query_start, state_change, wait_event_type, wait_event, state, backend_xid, backend_xmin, query_id, query, backend_type) VALUES (null, null, 5284, null, null, null, '', null, null, null, '2022-08-11 09:09:32.878630', null, null, null, 'Activity', 'CheckpointerMain', null, null, null, null, '', 'checkpointer');
INSERT INTO pg_catalog.pg_stat_activity (datid, datname, pid, leader_pid, usesysid, usename, application_name, client_addr, client_hostname, client_port, backend_start, xact_start, query_start, state_change, wait_event_type, wait_event, state, backend_xid, backend_xmin, query_id, query, backend_type) VALUES (null, null, 5528, null, null, null, '', null, null, null, '2022-08-11 09:09:34.691188', null, null, null, 'Activity', 'WalWriterMain', null, null, null, null, '', 'walwriter');