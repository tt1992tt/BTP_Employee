@EndUserText.label: 'IBAN'
@AccessControl.authorizationCheck: #CHECK
define view entity ZI_IBAN
  as select from ZTIBAN
  association to parent ZI_IBAN_S as _IbanAll on $projection.SingletonID = _IbanAll.SingletonID
{
  key BANKS as Banks,
  key BANKL as Bankl,
  key BANKN as Bankn,
  key BKONT as Bkont,
  IBAN as Iban,
  VALID_FROM as ValidFrom,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LASTCHANGEDAT as Lastchangedat,
  @Semantics.user.localInstanceLastChangedBy: true
  LASTCHANGEDBY as Lastchangedby,
  1 as SingletonID,
  _IbanAll
  
}
