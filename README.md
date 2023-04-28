TRABALHO LISTA DE AMIGOS 
arquivo main: chama as rotas do arquivo routes dentro da pasta confs.
pasta lib:
  pasta confs: 
    arquivo routes: rotas pra pagina home e pra pagina de adicionar contato.

  pasta model:
    arquivo contato: um aquivo que define a classe contato, com os campos nome, latitude e longiude.

  pasta page: 
    arquivo contato: pagina com uma listagem de pessoas e coordenadas, se clicar encima da pessoa abre o mapa. botao adicionar contato leva pra paina cadastro.
    arquivo cadastro_contato: formulario pra cadastro de nome e coordenadas chamando o modelo CONTATO da pasta model
    arquivo mapa: um mapa que recebe o nome da pessoa, e as coordenadas setando-as como a posicao inicial e colocando um icone de marcador nela. 
  
