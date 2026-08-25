insert into public.configuracoes (id,nome_empresa,mensagem_rodape)
values (1,'CAHK - Centro Acadêmico Hugo Kremer - Gestão Wilson Soares','Procurado vivo ou morto: Gato de Schrödinger')
on conflict (id) do update set
nome_empresa=excluded.nome_empresa,mensagem_rodape=excluded.mensagem_rodape,updated_at=now();

insert into public.vendedores (codigo,nome,telefone,ativo)
values ('1','Arthur Joanico','',true)
on conflict (codigo) do nothing;

insert into public.produtos (nome,preco_compra,preco_venda,categoria,estoque,estoque_minimo,ativo)
select 'coca lata',2.90,4.00,'',0,0,true
where not exists (select 1 from public.produtos where lower(nome)='coca lata');
