Feature: Amount of a parcel

  Scenario: Validate the value of empty parcel
    Given Parcel empty
    Then parcel amount should be equals to 0 €

  Scenario: Validate the value of a parcel containing one book
    Given Parcel containing one book
    When parcel discount is calculated
    Then parcel amount should be equals to 8 €

  Scenario: Validate the value of a parcel containing two same books
    Given Parcel containing two books
    When parcel discount is calculated
    Then parcel amount should be equals to 16 €

  Scenario: Validate the value of a parcel containing three same books
    Given Parcel containing three books
    When parcel discount is calculated
    Then parcel amount should be equals to 24 €

  Scenario: Validate the value of a parcel containing four same books
    Given Parcel containing four books
    When parcel discount is calculated
    Then parcel amount should be equals to 32 €

  Scenario: Validate the value of a parcel containing fifth same books
    Given Parcel containing fifth books
    When parcel discount is calculated
    Then parcel amount should be equals to 40 €

  Scenario: Validate the value of a parcel containing fifth same books
    Given Parcel containing fifth books
    When parcel discount is calculated
    Then parcel amount should be equals to 40 €