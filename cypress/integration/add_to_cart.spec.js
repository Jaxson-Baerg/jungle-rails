describe('validations for adding to the cart', () => {

  beforeEach(() => {
    cy.visit('/');
  });

  it("checks that the cart number changes when adding an item to the cart", () => {
    cy.contains("My Cart (0)");
    cy.get(".btn i").scrollIntoView().click({ scrollBehavior: false });
    cy.contains("My Cart (1)");
  });

});
