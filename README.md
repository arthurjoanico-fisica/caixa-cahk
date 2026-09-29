# DAEX Login

Módulo inicial para publicar em `cahk.app/daex/`.

## Acesso inicial

- Usuário visível: `caixadaex`
- Senha inicial: `12345678`
- Identidade técnica no Supabase Auth: `caixadaex@cahk.app`

A senha NÃO está no JavaScript. O frontend apenas converte o nome de usuário
`caixadaex` para o e-mail técnico usado pelo Supabase Auth.

## Única etapa manual no Supabase

No projeto `caixa-cahk`:

1. Authentication → Users.
2. Add user.
3. Email: `caixadaex@cahk.app`
4. Password: `12345678`
5. Marcar Auto Confirm User.
6. Criar usuário.

Depois envie a pasta `daex/` para o repositório que publica `cahk.app`.

## Sessão separada

O cliente usa `storageKey: "daex-auth"`, de forma que o módulo DAEX mantém
uma sessão própria no navegador.

## Próxima etapa

Substituir `dashboard.html` pelo sistema completo:
Eventos, Entidades, Aportes, Despesas, Produtos, Estoque, PDV, Vales,
Caixa e Relatórios.
