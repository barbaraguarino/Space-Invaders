# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Regras de trabalho (obrigatórias)

### Links de sessão
- **Nunca**, em nenhuma circunstância, inclua links de sessões ou de chats (conversas com o Claude) em commits, PRs, issues ou comentários.

### Onde a sessão roda define o que é permitido
- **Sessão local (computador do usuário, ex.: app desktop):** não faça commit nem abra PR sem ordem direta do usuário. Editar arquivos é permitido; gravar no Git, não.
- **Sessão na nuvem (cloud, via GitHub):** só faça commits e abra PRs depois de receber o comando **"PODE GRAVAR"**. Sem esse comando, não grave.
- A permissão vale para o pedido atual; não a estenda a trabalhos seguintes.

### Commits
- Faça commits pequenos e frequentes, cada um com uma única adição, correção ou funcionalidade que se entenda sozinha.
- Nunca junte edições de assuntos diferentes em um único commit. Se várias coisas mudaram, separe-as em commits distintos.
- A mensagem deve dizer claramente o que foi adicionado ou alterado.

### Branches e Git Flow
- Siga o modelo **Git Flow**: `main` (produção), `develop` (integração), `feature/*`, `release/*`, `hotfix/*`.
- Cada nova funcionalidade ganha sua **própria branch** a partir de `develop`, com nome legível que cite a funcionalidade (ex.: `feature/movimento-da-nave`, `feature/tiros-dos-aliens`, `feature/escudos-destrutiveis`).
- Não desenvolva diretamente em `main` nem em `develop`.

### Issues
- Use **Issues do GitHub** para tarefas, funcionalidades, bugs e qualquer outro trabalho. Cada branch de funcionalidade deve estar ligada a uma issue.

## Aprendizado primeiro (obrigatório)

O usuário está usando este projeto para aprender. Por isso:

- **Nenhum código é escrito antes de ser explicado** e de o usuário confirmar que entendeu.
- Antes de codar, explique o que será feito e por quê, e faça perguntas para checar se o usuário entendeu. Espere as respostas.
- Escreva **poucas linhas por vez**. Divida cada tarefa em passos pequenos, para o usuário acompanhar e aprender.
- Depois de cada passo, pare, explique o que foi feito e só siga adiante com o aval do usuário.

## Licença

O projeto é **proprietário e privado**: ninguém pode baixar, copiar, modificar ou usar sem autorização por escrito. Não troque a licença nem adicione dependências ou trechos de código com licença incompatível sem avisar o usuário. O repositório no GitHub deve permanecer **privado**.

## Estado do projeto

Implementação do clássico Space Invaders em Python, usando a biblioteca **PPlay** (abstração simplificada sobre o Pygame). O README e os comentários do projeto estão em português.

No momento o repositório contém apenas os sprites (`sprites/`); ainda não há código-fonte Python, arquivo de dependências, build, lint nem testes. Não invente comandos: quando esses itens forem adicionados, atualize esta seção.

## Sprites

Os assets PNG ficam em `sprites/`, divididos em dois grupos:

- `sprites/game/`: elementos da partida.
  - `aliens`: três tipos (`beetle`, `cyclops`, `wasp`), cada um com dois quadros de animação (`_1`, `_2`).
  - `player`: a nave do jogador.
  - `bullets`: `bullet_player` e `bullet_enemy_1`/`bullet_enemy_2`.
  - `shields`: escudos destrutíveis em três estados (`shield_full`, `shield_damaged_1`, `shield_damaged_2`).
  - `bonus`: a nave bônus (`ufo_bonus`).
  - `effects`: quadros da explosão (`explosion_1` a `explosion_3`).
  - `background`: fundo (`background`) e camada de estrelas (`stars_layer`).
- `sprites/ui/`: interface (`avatars`, `buttons` com versão `_selected`, `cursor`, `headings`, `hud` com os corações de vida cheio/meio/vazio, `icons`, `input`, `labels`, `panel`).

Os textos dos sprites de UI estão em português (ex.: `text_pausado`, `text_game_over`, `text_novo_recorde`, `label_pontos`, `label_vidas`, `label_ranking`). Isso indica as telas previstas: menu (jogar, novo jogador, opções, ranking, sair), escolha de nome e avatar, HUD com pontos e vidas, pausa, game over, novo recorde e ranking.

Os sprites foram movidos de `sprites/*.png` (raiz) para `sprites/game/` e `sprites/ui/`. Ao carregar imagens, use os caminhos novos.
