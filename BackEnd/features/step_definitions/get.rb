Dado("que faço GET no endpoint de informações de produtos e estabelecimentos VR") do
  #Request ignorando verificação SSL
  @get_infos = HTTParty.get('https://portal.vr.com.br/api-web/comum/enumerations/VRPAT' , verify: false)
end

Quando("verifico sucesso do GET") do
  #Imprimindo o body apenas para efeiteo de visualização
  puts @get_infos.body
  #Imprimindo a quantidade de registros retornados
  puts "Quantidade de registros do retorno: " +@get_infos.size.to_s
  #Checando o status code do retorno
    expect(@get_infos.code).to eq 200
end

Entao("confirmo que o retorno do GET tem o campo typeOfEstablishment") do
  #Assert da presença do campo solicitado na proca técnica
  expect(@get_infos.body).to include('typeOfEstablishment')
end
