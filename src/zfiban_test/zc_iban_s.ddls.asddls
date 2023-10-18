@EndUserText.label: 'Maintain IBAN Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@ObjectModel.semanticKey: [ 'SingletonID' ]
define root view entity ZC_IBAN_S
  provider contract transactional_query
  as projection on ZI_IBAN_S
{
  key SingletonID,
  LastChangedAtMax,
  TransportRequestID,
  HideTransport,
  _TIBAN : redirected to composition child ZC_IBAN
  
}
