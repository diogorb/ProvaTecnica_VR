describe('My First Test', () => {
  it('clicking "type" navigates to a new url', () => {
    cy.visit('/')

    // Clicar no botão de "Pra Você"
    cy.get(':nth-child(3) > .vr-quick-navigation__link').click()

    // Garantir que depois do click anterior a URL tenha o endereço adequado
    cy.url().should('include', '/onde-aceita.htm')

    //Clicar para botão "Onde Usar meu VR Refeição"
  
    // Pelo localizador encontrado no Cypress
    // cy.get('.slick-current > .vr-panel__wrapper > .vr-panel__text > .vr-panel__actions > .vr-panel__actions__wrapper > .vr-button').click()
  
    // Pelo localizador montado por mim considerando o elemento pelo conteúdo do hred, tinhamos 6 elementos com este href e por isto peguei o first, não sendo a melhor estratégia
    // cy.get('div[class="vr-hero__actions"]').get('a[href="#rede-credenciada"]:first').click()
    
    // Pegando o elemento pelo Href e pelo texto
    cy.get('a').contains('Onde usar meu cartão VR?').click()
    
    // Pegar o elemento de Mapa pela Classe, único elemento com esta classe
    cy.get('.vr-container__mapa').should('be.visible')
    
    // Mas cabe demonstrar outra forma de mapear o elemanto com maior precisão
    cy.get('div[class="vr-container__mapa"]').should('be.visible')
  })
})