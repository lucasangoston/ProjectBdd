Feature: Amount of a parcel

  Scenario: While buying a set of different books I should get a discount
    Given a Parcel
    When I buy two books One
    And two book Two
    Then the parcel amount should be equals to 30.4 €