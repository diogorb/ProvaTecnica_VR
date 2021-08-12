#language: pt

Funcionalidade: Backend deve retornar campo typeOfEstablishment

Eu, como serviço interessado no retorno do endpoint de informações de produtos e estabelecimentos VR
Desejo obter a confirmação de que o endpoint retorna a informação 'typeOfEstablishment'
Para ter segurança de que o retorno está ocorrendo como esperado.

@executa_get
Cenario: Automatizando GET

  Dado que faço GET no endpoint de informações de produtos e estabelecimentos VR
  Quando verifico sucesso do GET
  Entao confirmo que o retorno do GET tem o campo typeOfEstablishment
