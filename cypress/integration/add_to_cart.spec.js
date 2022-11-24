describe('validations for adding to the cart', () => {

  beforeEach(() => {
    cy.visit('/');
  });

  it("checks that the product view page is navigatable", () => {
    cy.contains("My Cart (0)");
    cy.get(".btn i").scrollIntoView().click({ scrollBehavior: false });
    cy.contains("My Cart (1)");
  });

});
