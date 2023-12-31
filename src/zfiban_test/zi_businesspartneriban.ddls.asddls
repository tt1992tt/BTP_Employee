@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface view for IBAN'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_BusinessPartnerIBAN
  as select from ztiban
  association to parent ZI_Banks as _Banks
  on $projection.Banks = _Banks.Banks
{
  key banks              as Banks,
  key bankl              as Bankl,
  key bankn              as Bankn,
  key bkont              as Bkont,
      iban               as Iban,
      valid_from         as ValidFrom,
      ernam              as Ernam,
      erdat              as Erdat,
      tabname            as Tabname,
      tabkey             as Tabkey,
//      @Semantics.systemDateTime.lastChangedAt: true
//      lastchangedat      as LastChangedAt,
//      @Semantics.systemDateTime.localInstanceLastChangedAt: true
//      locallastchangedat as LocalLastChangedAt,
      _Banks
}
