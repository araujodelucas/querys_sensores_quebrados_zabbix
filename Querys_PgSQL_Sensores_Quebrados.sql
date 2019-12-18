--QUERY PARA EXTRAIR O ITEM, HOST E ERRO DE TODOS OS ITEMS
select items.name as "nome do item", hosts.host as "nome do host", items.error as "nome do erro" from hosts natural join interface, items where items.hostid=hosts.hostid and state=1 and items.status=0 order by hosts.host;

--QUERY PARA EXTRAIR O ITEM, HOST E ERRO SOMENTE DOS ITEMS DE DISCOVERY
select items.name as "nome do item", hosts.host as "nome do host", items.error as "nome do erro" from hosts natural join interface, items where items.hostid=hosts.hostid and state=1 and items.status=0 and items.flags=4 order by hosts.host;

--QUERY PARA EXTRAIR O ITEM, HOST E ERRO SOMENTE DOS ITEMS DEFAULT
select items.name as "nome do item", hosts.host as "nome do host", items.error as "nome do erro" from hosts natural join interface, items where items.hostid=hosts.hostid and state=1 and items.status=0 and items.flags=0 order by hosts.host;