@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Interface view for employees'

define root view entity ZI_EMPLOYEE_TT as select from zemployee_tt 
    composition[0..*] of ZI_ACTIVITIES_TT as _Activities 
{
    key emp_number as EmpNumber,
    emp_name as EmpName,
    emp_last_name as EmpLastName,
    role as Role,
    category as Category,
    status as Status,
    start_date as StartDate,
    end_date as EndDate,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    locallastchangedat as LocalLastChangedAt,
    @Semantics.systemDateTime.lastChangedAt: true
    lastchangedat as Lastchangedat,
    @Semantics.user.lastChangedBy: true
    lastchangedby as Lastchangedby,
    
//    Associations
    _Activities
}
