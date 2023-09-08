@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption view for Parent view Banks'
@Metadata.allowExtensions: true
define root view entity ZC_Banks 
provider contract transactional_query 
as projection on ZI_Banks
{
    @Consumption.valueHelpDefinition: [{ entity: {name: 'ZC_Banks', element: 'Banks'}}]
    key Banks,

    Lastchangedat,
    Lastchangedby,

    _IBAN: redirected to composition child ZC_BusinessPartnerIBAN
}
