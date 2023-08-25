CLASS zcl_roles_insert DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.
    METHODS add_roles_data.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_ROLES_INSERT IMPLEMENTATION.


  METHOD add_roles_data.

    DATA i_roles TYPE STANDARD TABLE OF zroles_dropdown.

    i_roles = VALUE #( ( role = 'Software Engineer' )
                        (  role = 'Accounting' )
                        ( role = 'Lawyer' )
                        ( role = 'Administrative' ) ).

    INSERT zroles_dropdown FROM TABLE @i_roles.

    IF sy-subrc EQ 0.
      COMMIT WORK.
    ENDIF.

  ENDMETHOD.


  METHOD if_oo_adt_classrun~main.
    add_roles_data(  ).
    out->write( 'Data Inserted Succesfully' ).
  ENDMETHOD.
ENDCLASS.
