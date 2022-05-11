describe('User page', () => {

  beforeEach(() => {
    cy.visit('/');
  })

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("There is 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });

  it("login button in clicked take the user to sign up page", () => {
    cy.contains("Signup").click({ force: true })
    cy.contains("Please sign up").should("exist")
  })

  it("takes to home page with successful signup", () => {
    const firstName = "John"
    const lastName = "Smith"
    const email = "fake@example.com"
    const password = "1234"
    const passwordConfirmation = "1234"

    cy.contains("Signup").click({ force: true })
    cy.contains("Please sign up").should("exist")

    cy.get('#user_first_name').type(firstName)
    cy.get('#user_last_name').type(lastName)
    cy.get('#user_email').type(email)
    cy.get('#user_password').type(password)
    cy.get('#user_password_confirmation').type(passwordConfirmation)
    cy.get('form > .btn').click({force: true})
    cy.contains(".hello-user", `Hello, ${firstName}!`).should('exist')
    cy.contains("Logout").click({ force: true })

  })

  it("takes to home page with successful signin", () => {
    const firstName = "John"
    const email = "fake@example.com"
    const password = "1234"
    cy.contains("Login").click({ force: true })
    cy.contains("Please sign in").should("exist")
    cy.get('#email').type(email)
    cy.get('#password').type(password)
    cy.get('form > .btn').click({force: true})
    cy.contains(".hello-user", `Hello, ${firstName}!`).should('exist')
  })
  
})