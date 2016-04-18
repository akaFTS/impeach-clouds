# IMPEACH-CLOUDS
Ferramenta que filtra as atas da sessão do impeachment deixando apenas o conteúdo realmente "importante" - ou seja, o que cada deputado falou em seus momentos na tribuna. Estes dados podem ser então submetidos a várias análises por conta do utilizador.

## Instruções de Uso
- entrar no [site da câmara](http://www.camara.gov.br/internet/sitaqweb/DiscursoDireto.asp?nuSessao=091.2.55.O&listaOrdem=1&btnPesq=Pesquisar)
- pesquisar por ordem cronológica
- abrir todas as atas dentro de "Ordem do Dia", depois da ata "Carlos Andrade"
- colar o conteúdo de cada uma em arquivos dentro da pasta atas
- rodar o proc_atas.sh
- pegar o conteúdo dentro da pasta output

## A Fazer
- [X] Garimpar todas as atas
- Permitir novos modos de extração de dados:
- [ ] Apenas caracteres alfanuméricos
- [ ] Sem repetições de palavras
- [ ] Contar número de ocorrências por palavra
- [ ] Filtrar por estado/partido
- [ ] Descobrir quais deputados falaram uma dada palavra

## Créditos
- ~gustavohfts @IME-USP
- ~victorsenam @IME-USP
