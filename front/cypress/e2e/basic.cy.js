describe('Basic Home page tests', () => {
  it('Should visit /', () => {
    cy.visit('/')
  })
})

describe('Basic Info page tests', () => {
  it('Should visit /seals/george', () => {
    cy.visit('/seals/george')
  })

  it('Should display George HP', () => {
    cy.visit('/seals/george')
    cy.contains('HP: 1000').should('be.visible')
  })

  it('Should display George Attack', () => {
    cy.visit('/seals/george')
    cy.contains('ATTACK: 30').should('be.visible')
  })

  it('Should display George Defense', () => {
    cy.visit('/seals/george')
    cy.contains('DEFENSE: 30').should('be.visible')
  })
})
