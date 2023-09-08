@EndUserText.label: 'Consumption view for IBAN'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_BusinessPartnerIBAN 
  as projection on ZI_BusinessPartnerIBAN 
{
      @EndUserText.label: 'Country/Region Key of Bank'
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_BusinessPartnerIBAN', element: 'Banks' }}]
  key Banks,
      @EndUserText.label: 'Bank Keys'
  key Bankl,
      @EndUserText.label: 'Bank account number'
  key Bankn,
      @EndUserText.label: 'Bank Control Key'
  key Bkont,
      @EndUserText.label: 'IBAN (International Bank Account Number)'
      Iban,
      @EndUserText.label: 'Validity Start of IBAN'
      ValidFrom,
//      LastChangedAt,
//      LocalLastChangedAt,
      _Banks: redirected to parent ZC_Banks
}
