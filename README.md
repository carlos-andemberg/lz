# Tela de "volto já" do Luciano Zyzz

Tela animada pro OBS (fonte **Navegador**) no visual do canal: fundo escuro com gelo ciano e fogo vermelho, letra branca grossa e a logo do canal. Feita em HTML/CSS/JS puro — sem build, sem dependências.

| Arquivo | O que é | Tamanho no OBS |
|---|---|---|
| `volto-ja.html` | Tela de "volto já": contador estilo spike de 20 min, mascote dormindo, mensagens que se digitam, relógio e redes | **2560 × 1440** |
| `index.html` | Página inicial com o link da tela | — |
| `assets/logo.png` | Logo do canal (dá pra trocar pela original, com o mesmo nome, pra ficar mais nítida) | — |

## Usar no OBS

1. **Fontes → + → Navegador**
2. Em **URL**, cole `https://lz.carlosandemberg.com.br/volto-ja.html`.
   Ou marque **Arquivo local** e escolha o `volto-ja.html` (a pasta `assets` precisa estar junto).
3. Largura **2560**, altura **1440**.
4. Marque **Atualizar o navegador quando a cena ficar ativa** — assim o contador recomeça do zero toda vez que você entra na cena.

## Contador e jogo

O contador começa em **20 minutos**; no 00:00 a spike é "defusada" e aparece "JÁ!". Pra mudar sem editar o arquivo, use o link:

- `volto-ja.html?min=10` → 10 minutos (`?min=0` tira o contador)
- `volto-ja.html?jogo=WARZONE` → muda o "jogando VALORANT"
- dá pra juntar: `volto-ja.html?min=10&jogo=LOL`

## Personalizar

No começo do `<script>` do `volto-ja.html` tem o bloco `CONFIG`: tempo padrão, jogo, as mensagens que se digitam e os textos da faixa de baixo. É só editar, fazer commit e mandar fazer o deploy de novo no Coolify. No OBS: botão direito na fonte → **Atualizar**.

## Publicação (Coolify)

Publicado em `https://lz.carlosandemberg.com.br` (projeto **Luciano Zyzz** no Coolify).

- **Build Pack**: `Dockerfile` (nginx, porta **80**)
- **Healthcheck**: `GET /` na porta 80 — ligado no Coolify e também no `HEALTHCHECK` do Dockerfile.
