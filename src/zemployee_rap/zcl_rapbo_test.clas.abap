CLASS zcl_rapbo_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: i_reported TYPE RESPONSE FOR REPORTED zi_employee_tt,
          i_failed   TYPE RESPONSE FOR FAILED zi_employee_tt,
          i_mapped   TYPE RESPONSE FOR MAPPED zi_employee_tt.

ENDCLASS.



CLASS ZCL_RAPBO_TEST IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    MODIFY ENTITIES OF zi_employee_tt
    ENTITY Empleados_entity
    CREATE FIELDS ( EmpName EmpLastName Role Status StartDate EndDate )
*    AUTO FILL CID
    WITH VALUE #(
                  (
                    %cid = 'CreateEmployee'
*                    %is_draft = if_abap_behv=>mk-off
                    EmpName = 'INSERT TEST'
                    EmpLastName = 'INSERT TEST'
                    Role = 'Accounting'
                    Status = 'I'
                    StartDate = cl_abap_context_info=>get_system_date(  ) + 1
                    EndDate = cl_abap_context_info=>get_system_date( ) + 5 ) )
    CREATE BY \_Activities
    FIELDS ( activityid description )
    AUTO FILL CID
    WITH VALUE #(
                  (
                    %cid_ref = 'CreateEmployee'
                    %target = VALUE #( (
*                           %cid = 'CreateActivity'
                           activityid = '905'
                           description = 'Sector C'
*                           %is_draft = if_abap_behv=>mk-off
                           ) ) ) )
      REPORTED i_reported
      FAILED i_failed
      MAPPED i_mapped.

      COMMIT ENTITIES.

      IF sy-subrc NE 0.
        out->write( `Save sequence failed` )->write( i_failed ).
      ELSE.
        out->write( 'Succesful' )->write( i_mapped ).
      ENDIF.

* EXECUTE ACTION
* out->write_html

  ENDMETHOD.
ENDCLASS.
