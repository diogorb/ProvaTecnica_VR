#language: pt

Funcionalidade: Aprendendo o verbo GET

Eu, como interessado em automação
Desejo aprender como automatizar o verbo GET
Para ser um QA melhor.

@executa_get
Cenario: Automatizando GET

  Dado que faço GET no endpoint de informações de produtos e estabelecimentos VR
  Quando verifico sucesso do GET
  Entao confirmo que o retorno do GET tem o campo typeOfEstablishment
