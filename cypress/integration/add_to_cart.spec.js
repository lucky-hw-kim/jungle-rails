describe('add-cart', () => {

  beforeEach(() => {
    cy.visit('/');
  })

  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });

  it("There is 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });

  it("when Add button is clicked, cart count changes", () => {
    cy.contains("li.nav-item.end-0 > a", "My Cart (0)")
    cy.get(':nth-child(1) > div > .button_to > .btn').click({ force: true });
    cy.contains("li.nav-item.end-0 > a", "My Cart (1)")
  })

})