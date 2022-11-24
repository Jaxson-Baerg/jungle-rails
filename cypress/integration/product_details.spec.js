describe('product-details page validations', () => {

  beforeEach(() => {
    cy.visit('/');
  });

  it("checks that the product view page is navigatable", () => {
    cy.get(".products article").should("be.visible");
    cy.get("[alt='Giant Tea']").click();
    cy.contains("The Giant Tea is an uncommon");
  });

});
