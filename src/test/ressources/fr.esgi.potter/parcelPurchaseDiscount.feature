Feature: Amount of a parcel

  Scenario: Validate the value of a parcel containing two different books
    Given Parcel containing two different books
    When parcel discount is calculated
    Then parcel amount should be equals to 15.2 €

  Scenario: Validate the value of a parcel containing three different books
    Given Parcel containing three different books
    When parcel discount is calculated
    Then parcel amount should be equals to 21.6 €

  Scenario: Validate the value of a parcel containing four different books
    Given Parcel containing four different books
    When parcel discount is calculated
    Then parcel amount should be equals to 25.6 €

  Scenario: Validate the value of a parcel containing fifth different books
    Given Parcel containing fifth different books
    When parcel discount is calculated
    Then parcel amount should be equals to 30 €

  Scenario: While buying a set of different books I should get a discount
    Given a Parcel
    When I buy two books One
    And One book Two
    Then parcel amount should be equals to 18.2 €