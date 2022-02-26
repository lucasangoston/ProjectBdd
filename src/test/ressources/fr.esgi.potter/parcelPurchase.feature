Feature: Amount of a parcel

  Scenario: Validate the value of an empty parcel
    Given an empty parcel
    Then the parcel amount should be equals to 0 €

  Scenario: Validate the value of a parcel containing one book
    Given a parcel containing one book
    When parcel discount is calculated
    Then the parcel amount should be equals to 8 €

  Scenario: Validate the value of a parcel containing two same books
    Given a parcel containing two books
    When parcel discount is calculated
    Then the parcel amount should be equals to 16 €

  Scenario: Validate the value of a parcel containing three same books
    Given a parcel containing three books
    When parcel discount is calculated
    Then the parcel amount should be equals to 24 €

  Scenario: Validate the value of a parcel containing four same books
    Given a parcel containing four books
    When parcel discount is calculated
    Then the parcel amount should be equals to 32 €

  Scenario: Validate the value of a parcel containing fifth same books
    Given a parcel containing fifth books
    When parcel discount is calculated
    Then the parcel amount should be equals to 40 €

  Scenario: Validate the value of a parcel containing fifth same books
    Given a parcel containing fifth books
    When parcel discount is calculated
    Then the parcel amount should be equals to 40 €