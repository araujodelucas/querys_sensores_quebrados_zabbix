--QUERY PARA EXTRAIR O ITEM, HOST E ERRO DE TODOS OS ITEMS
select hosts.host as "nome do host",items.name as "nome do item", item_rtdata.error as "nome do erro" from hosts natural join interface, items natural join item_rtdata where items.hostid=hosts.hostid and item_rtdata.state=1 and items.status=0 order by hosts.host;

--QUERY PARA EXTRAIR O ITEM, HOST E ERRO SOMENTE DOS ITEMS DE DISCOVERY
select hosts.host as "nome do host", items.name as "nome do item", item_rtdata.error as "nome do erro" from hosts natural join interface, items natural join item_rtdata where items.hostid=hosts.hostid and item_rtdata.state=1 and items.status=0 and items.flags=4 order by hosts.host;

--QUERY PARA EXTRAIR O ITEM, HOST E ERRO SOMENTE DOS ITEMS SIMPLES
select hosts.host as "nome do host", items.name as "nome do item", item_rtdata.error as "nome do erro" from hosts natural join interface, items natural join item_rtdata where items.hostid=hosts.hostid and item_rtdata.state=1 and items.status=0 and items.flags=0 order by hosts.host;
