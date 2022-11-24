describe('home-page validations', () => {

  beforeEach(() => {
    cy.visit('/');
  });

  it("checks that there is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });
  
  it("checks that there is 2 products on the page", () => {
    cy.get(".products article").should("have.length", 2);
  });  

});