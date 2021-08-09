Prova Técnica VR – 08082021

Registro de passo-a-passo para solução do desafio técnico proposto para vaga de Automação de Testes na VR Benefícios.
Para tanto, pede-se solução de automação de testes com Cypress para o FrontEnd e Ruby (Cucumber + HttpParty) para o Backend.

1)	Desafio proposto FrontEnd: 
a.	Criar uma automação que entre no site www.vr.com.br; 
b.	Navegar até́a seção “Pra Você̂” (/onde-aceita.htm); 
c.	Clicar no botão “Onde usar meu cartão VR”; 
d.	Validar que o mapa do Google abriu em tela.

2)	Solução de Automação de Testes para o FrontEnd
Passos:
i.	Criação de pasta para criação do novo repositório.
ii.	Npm Init
iii.	Npm install -g cypress
iv.	Criado arquivo cypress.json para config do projeto, colocando a baseUrl
v.	npx cypress run

3)	Desafio proposto Backend: 
a.	Temos um endpoint de consulta exposto no nosso portal (https://portal.vr.com.br/api-web/ comum/enumerations/VRPAT) que nos retorna uma série de informações sobre nossos produtos e estabelecimentos. 
b.	Crie um cenário, utilizando Cucumber + Ruby + HTTParty, que valide que o JSON retornado pelo serviço possui a chave “typeOfEstablishment” e print, aleatoriamente, um desses tipos de estabelecimentos.

4)	Solução de Automação de Testes para o BackEnd
Execução de Teste BackEnd (gerando report.html com resultado)
1 - uso das Gems:
gem "cucumber"
gem "faker"
gem "httparty"
gem "rspec"
2 - bundle install
3 - Cucumber -t @executa_get -f pretty -f html -o report.html
*Obs instalei e deixei a gem "json_matchers" pois a ideia é que seja usada em validação de schema / teste de contratos.
