@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumption view for employees'
@Metadata.allowExtensions: true
define root view entity ZC_EMPLOYEE_TT provider contract transactional_query 
as projection on ZI_EMPLOYEE_TT

{
    key EmpNumber,
    EmpName,
    EmpLastName,
    @Consumption.valueHelpDefinition: [{ entity: {name: 'ZI_ROLE_DROPDOWN', element: 'Role'}}]
    Role,
    Category,
    Status,
    StartDate,
    EndDate,
    LocalLastChangedAt,
    Lastchangedat,
    Lastchangedby,
    _Activities: redirected to composition child ZC_ACTIVITIES_TT
}
