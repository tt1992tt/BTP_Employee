@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumption view for activities'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_ACTIVITIES_TT as projection on ZI_ACTIVITIES_TT
{
    key EmpNumber,
    key ActivityId,
    Description,
//    LastChangedAt,
    /* Associations */
    _Employee: redirected to parent ZC_EMPLOYEE_TT
}
