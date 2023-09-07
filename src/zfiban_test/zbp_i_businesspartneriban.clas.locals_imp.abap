CLASS lhc_ZI_BusinessPartnerIBAN DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zfiban RESULT result.
    METHODS validatekeys FOR VALIDATE ON SAVE
      IMPORTING keys FOR zfiban~validatekeys.

ENDCLASS.

CLASS lhc_ZI_BusinessPartnerIBAN IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD validateKeys.

*    READ ENTITIES OF ZI_BusinessPartnerIBAN
*    IN LOCAL MODE
*    ENTITY zfiban
*    FIELDS ( Bankl
*             Bankn
*             Banks
*             Bkont )
*    WITH CORRESPONDING #( keys )
*    RESULT DATA(i_validationKeys).
*
*    LOOP AT i_validationKeys INTO DATA(lw_validationKeys).
*
*      IF lw_validationKeys-Bankl IS INITIAL OR
*         lw_validationkeys-Bankn IS INITIAL OR
*         lw_validationkeys-Banks IS INITIAL.
*
*        APPEND VALUE #( %tky = lw_validationkeys-%tky ) TO failed-zfiban.
*        APPEND VALUE #( %tky = lw_validationkeys-%tky
*                        %msg = new_message_with_text(
*                          severity = if_abap_behv_message=>severity-error
*                              text = 'Key fields must not be empty' ) ) TO reported-zfiban.
*        CLEAR lw_validationkeys.
*
*      ENDIF.
*
*    ENDLOOP.


  ENDMETHOD.

ENDCLASS.
