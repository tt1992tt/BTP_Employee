@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Interface view for employee activities'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_ACTIVITIES_TT as select from zactivities_tt
    association to parent ZI_EMPLOYEE_TT as _Employee 
               on $projection.EmpNumber = _Employee.EmpNumber
{
    key emp_number as EmpNumber,
    key activity_id as ActivityId,
    description as Description,
//    @Semantics.systemDateTime.lastChangedAt: true
//    lastchangedat as LastChangedAt,
    _Employee
}
