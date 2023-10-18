@EndUserText.label: 'Maintain IBAN'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity ZC_IBAN
  as projection on ZI_IBAN
{
  key Banks,
  key Bankl,
  key Bankn,
  key Bkont,
  Iban,
  ValidFrom,
  @Consumption.hidden: true
  Lastchangedat,
  @Consumption.hidden: true
  Lastchangedby,
  @Consumption.hidden: true
  SingletonID,
  _IbanAll : redirected to parent ZC_IBAN_S
  
}
