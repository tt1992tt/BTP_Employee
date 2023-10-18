@EndUserText.label: 'IBAN Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZI_IBAN_S
  as select from I_Language
    left outer join I_CstmBizConfignLastChgd on I_CstmBizConfignLastChgd.ViewEntityName = 'ZI_IBAN'
  composition [0..*] of ZI_IBAN as _TIBAN
{
  key 1 as SingletonID,
  _TIBAN,
  I_CstmBizConfignLastChgd.LastChangedDateTime as LastChangedAtMax,
  cast( '' as SXCO_TRANSPORT) as TransportRequestID,
  cast( 'X' as ABAP_BOOLEAN preserving type) as HideTransport
  
}
where I_Language.Language = $session.system_language
