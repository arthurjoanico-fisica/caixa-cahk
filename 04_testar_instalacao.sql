select 'profiles' as tabela,count(*) from public.profiles
union all select 'vendedores',count(*) from public.vendedores
union all select 'produtos',count(*) from public.produtos
union all select 'clientes',count(*) from public.clientes
union all select 'caixas',count(*) from public.caixas
union all select 'vendas',count(*) from public.vendas;

select * from public.configuracoes;
