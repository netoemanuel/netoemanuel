--Usuários <> 'Manutencao'
SELECT es.host_name [Nome Máquina], ec.client_net_address [IP], ec.local_tcp_port [Porta], es.[program_name], es.login_name, COUNT(es.[session_id]) [Sessões]
FROM sys.dm_exec_sessions AS es 
INNER JOIN sys.dm_exec_connections AS ec ON es.session_id = ec.session_id
WHERE es.login_name like 'LONTANO\%' AND es.login_name <> 'LONTANO\SQLDBA'
GROUP BY es.host_name, ec.client_net_address, ec.local_tcp_port, es.[program_name], es.login_name
ORDER BY es.host_name, ec.client_net_address, ec.local_tcp_port, es.[program_name];

--Usuários por Login
SELECT  es.login_name, COUNT(es.host_process_id) AS Qtd
FROM sys.dm_exec_sessions AS es 
GROUP BY es.login_name
ORDER BY [Qtd] DESC