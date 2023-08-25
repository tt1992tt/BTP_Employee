@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Interface view for role values'
@ObjectModel.resultSet.sizeCategory: #XS
define view entity ZI_ROLE_DROPDOWN as select from zroles_dropdown
{
    key role as Role
}
