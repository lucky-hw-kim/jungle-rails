describe('Product Details Page', () => {

  beforeEach(() => {
    cy.visit('/');
  })

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("There is 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });
  
  it("navigate from the home page to the product detail page by clicking on a product", () => {

  cy.get("div > article:nth-child(1)").click();

  cy.get('.quantity').should("contain", "18 in stock")

  });

})