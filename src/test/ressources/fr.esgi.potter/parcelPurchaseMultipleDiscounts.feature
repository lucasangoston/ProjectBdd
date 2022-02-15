Feature: Amount of a parcel

  Scenario: Validate the value of a parcel containing two different books
    Given Parcel containing two books
    When parcel discount is calculated
    Then parcel amount should be equals to 15.2 €

  Scenario: Validate the value of a parcel containing three different books
    Given Parcel containing three books
    When parcel discount is calculated
    Then parcel amount should be equals to 21.6 €

  Scenario: Validate the value of a parcel containing four different books
    Given Parcel containing four books
    When parcel discount is calculated
    Then parcel amount should be equals to 25.6 €

  Scenario: Validate the value of a parcel containing fifth different books
    Given Parcel containing fifth books
    When parcel discount is calculated
    Then parcel amount should be equals to 30 €