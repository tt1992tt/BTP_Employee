@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for Parent view Banks'
define root view entity ZI_Banks as select from zbanks
composition[0..*] of ZI_BusinessPartnerIBAN as _IBAN
{
    key zbanks.banks as Banks,
    zbanks.lastchangedat as Lastchangedat,
    zbanks.lastchangedby as Lastchangedby,
    _IBAN 
}
