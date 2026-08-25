-- Crie antes o usuário em Authentication > Users > Add user.
-- Troque o e-mail abaixo e execute.
update public.profiles
set role='admin', ativo=true
where id=(select id from auth.users where email='SEU_EMAIL_AQUI' limit 1);

select u.email,p.nome,p.role,p.ativo
from public.profiles p join auth.users u on u.id=p.id
order by u.email;
