# Sons do Space Invaders

Todos os sons são **originais**, sintetizados por código (estilo 8-bit), sem nenhum arquivo baixado da internet. Formato: WAV 44,1 kHz, 16 bits (músicas em estéreo, efeitos em mono), que o Pygame/PPlay toca sem conversão.

Padrão de nomes: `music_*` toca em loop, `jingle_*` toca uma vez, `sfx_*` é efeito sonoro. A divisão `game/` e `ui/` segue a mesma da pasta `sprites/`.

## `music/`

| Arquivo | Tipo | Quando tocar |
|---|---|---|
| `music_menu.wav` | loop (19 s) | Menu principal e telas do menu (Novo jogador, Opções, Ranking) |
| `music_partida.wav` | loop (29 s) | Durante a partida |
| `music_partida_rapida.wav` | loop (23 s) | Mesma música mais acelerada: trocar quando restarem poucos aliens |
| `jingle_inicio_onda.wav` | 1 vez (2,5 s) | Antes de cada onda de aliens começar |
| `jingle_onda_concluida.wav` | 1 vez (3,2 s) | Todos os aliens da onda destruídos |
| `jingle_game_over.wav` | 1 vez (6,5 s) | Tela de game over (`text_game_over`) |
| `jingle_novo_recorde.wav` | 1 vez (4,4 s) | Tela de novo recorde (`text_novo_recorde`) |

Ao tocar um jingle, pare (ou abaixe) a música que estiver em loop.

## `sfx/game/` — partida

| Arquivo | Quando tocar | Sprite relacionado |
|---|---|---|
| `sfx_tiro_jogador.wav` | A nave atira | `bullets/bullet_player` |
| `sfx_tiro_alien.wav` | Um alien atira | `bullets/bullet_enemy_*` |
| `sfx_explosao_alien.wav` | Um alien é destruído | `effects/explosion_*` |
| `sfx_jogador_atingido.wav` | A nave leva dano mas ainda tem vida (perde meio coração) | `hud/heart_half` |
| `sfx_explosao_jogador.wav` | A nave perde uma vida inteira / é destruída | `hud/heart_empty` |
| `sfx_vida_extra.wav` | A nave ganha vida | `hud/heart_full` |
| `sfx_escudo_atingido.wav` | Um tiro acerta o escudo | `shields/shield_damaged_*` |
| `sfx_escudo_destruido.wav` | O escudo é destruído | `shields/shield_damaged_2` |
| `sfx_ufo_voando_loop.wav` | Em loop enquanto a nave bônus cruza a tela | `bonus/ufo_bonus` |
| `sfx_ufo_destruido.wav` | Nave bônus destruída | `bonus/ufo_bonus` |
| `sfx_passo_alien_1` a `_4.wav` | A cada passo da tropa, tocar um por vez em rodízio (1, 2, 3, 4, 1...) | `aliens/*_1`, `*_2` |

### `sfx/ui/` — interface (igual nos dois jogos)

| Arquivo | Quando tocar | Sprite relacionado |
|---|---|---|
| `sfx_navegar.wav` | Cursor muda de botão no menu | `cursor/arrow_up`, `arrow_down` |
| `sfx_confirmar.wav` | Botão confirmado (Jogar, Confirmar, Opções...) | `buttons/btn_*_selected` |
| `sfx_voltar.wav` | Botão Voltar / sair de uma tela | `buttons/btn_voltar` |
| `sfx_digitar.wav` | Letra digitada no campo de nome | `input/input_field_focus`, `caret` |
| `sfx_apagar.wav` | Letra apagada (Backspace) no campo de nome | `input/caret` |
| `sfx_erro.wav` | Ação inválida (ex.: confirmar nome vazio) | `input/input_field` |
| `sfx_trocar_avatar.wav` | Setas esquerda/direita na escolha de avatar | `cursor/cursor_left`, `cursor_right`, `avatars/*` |
| `sfx_ligar.wav` | Opção ligada (checkbox, som ligado) | `icons/checkbox_on`, `speaker_on` |
| `sfx_desligar.wav` | Opção desligada | `icons/checkbox_off`, `speaker_off` |
| `sfx_pausar.wav` | Jogo pausado | `headings/text_pausado` |
| `sfx_retomar.wav` | Jogo retomado após a pausa | `headings/text_pausado` |
