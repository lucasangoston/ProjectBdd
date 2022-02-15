Feature: Amount of a parcel
  
  Scenario: Validate the value of empty parcel
    Given Parcel empty
    When parcel amount is calculated
    Then parcel amount should be equals to 0 €