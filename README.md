# Rádio CAHK v5 — áudio diário em horário exato

Frontend estático para Cloudflare Workers/Static Assets.

## Principais recursos

- pesquisa de músicas e vídeos no YouTube dentro do site;
- pedidos por link;
- gravação de recados pelo microfone com moderação;
- locuções automáticas;
- áudios da galera em rodízio;
- áudio diário em horário exato.

## Áudio diário

No painel administrativo, escolha um arquivo e apenas o horário, por exemplo `16:20`.
O mesmo áudio ficará ativo todos os dias nesse horário.

Quando chegar o horário, o player pausa o conteúdo atual, toca o áudio diário e depois retoma a reprodução anterior. O backend calcula automaticamente a próxima execução para o dia seguinte usando o fuso `America/Sao_Paulo`.

O painel permite pausar, reativar e alterar o horário de cada áudio diário.

Para o horário exato funcionar, mantenha `player.html` aberto, o computador ligado e sem suspensão, e a internet disponível.

## Arquivos do site

- `public/index.html`: pedidos + gravador de recados;
- `public/player.html`: player central;
- `public/admin.html`: programação, locuções, moderação e áudios diários;
- `public/styles.css`: visual;
- `public/config.js`: configuração do Supabase.

## Publicação

Substitua os arquivos da pasta `public` do repositório pelo conteúdo desta versão e faça commit. Se o repositório estiver conectado ao Cloudflare Workers, o deploy será iniciado automaticamente.
