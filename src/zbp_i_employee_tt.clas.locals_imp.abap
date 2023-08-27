CLASS lhc_Empleados_entity DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR Empleados_entity RESULT result.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Empleados_entity RESULT result.

    METHODS Admit FOR MODIFY
      IMPORTING keys FOR ACTION Empleados_entity~Admit RESULT result.

    METHODS validateStartDate FOR VALIDATE ON SAVE
      IMPORTING keys FOR Empleados_entity~validateStartDate.

    METHODS setCategory FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Empleados_entity~setCategory.

ENDCLASS.

CLASS lhc_Empleados_entity IMPLEMENTATION.

  METHOD get_instance_features.

    READ ENTITIES OF zi_employee_tt
    IN LOCAL MODE
    ENTITY Empleados_entity
    FIELDS ( Status icon )
    WITH CORRESPONDING #( keys )
    RESULT DATA(i_status)
    FAILED failed.

    result = VALUE #( FOR stat IN i_status

                      LET fc_admit = COND #( WHEN stat-Status EQ 'A'
                      THEN if_abap_behv=>fc-o-disabled
                      ELSE if_abap_behv=>fc-o-enabled )

                      IN ( %tky = stat-%tky
                           %action-Admit = fc_admit ) ).


  ENDMETHOD.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD Admit.
    MODIFY ENTITIES OF zi_employee_tt
      IN LOCAL MODE
      ENTITY Empleados_entity
      UPDATE FIELDS ( Status )
      WITH VALUE #( FOR key IN keys ( %tky = key-%tky
                                      Status = 'A' ) )
                                      FAILED failed
                                      REPORTED reported.

    "mostrar el resultado
    READ ENTITIES OF zi_employee_tt
    IN LOCAL MODE
    ENTITY Empleados_entity
    ALL FIELDS WITH CORRESPONDING #( keys )
    RESULT DATA(i_employees).

    result = VALUE #( FOR employee IN i_employees ( %tky = employee-%tky
                                                    %param = employee ) ).
  ENDMETHOD.

  METHOD validateStartDate.

    READ ENTITIES OF zi_employee_tt
    IN LOCAL MODE
    ENTITY Empleados_entity
    FIELDS ( StartDate )
    WITH CORRESPONDING #( keys )
    RESULT DATA(i_startDates).

    LOOP AT i_startDates INTO DATA(lw_startDates).

      IF lw_startDates-StartDate EQ cl_abap_context_info=>get_system_date(  ).
        APPEND VALUE #( %tky = lw_startDates-%tky ) TO failed-empleados_entity.
        APPEND VALUE #( %tky = lw_startDates-%tky
                        %msg = new_message_with_text( text = 'Start date cant be the actual date'
                                                      severity = if_abap_behv_message=>severity-error ) )
                                                      TO reported-empleados_entity.
      ENDIF.

      CLEAR lw_startDates.
    ENDLOOP.

  ENDMETHOD.

  METHOD setCategory.

    READ ENTITIES OF zi_employee_tt
    IN LOCAL MODE
    ENTITY Empleados_entity
    FIELDS ( Role )
    WITH CORRESPONDING #( keys )
    RESULT DATA(i_roles).

    LOOP AT i_roles INTO DATA(lw_roles).

      CASE lw_roles-Role.
        WHEN 'Software Engineer'.
          MODIFY ENTITIES OF zi_employee_tt
          IN LOCAL MODE ENTITY Empleados_entity
          UPDATE FIELDS ( Category )
          WITH VALUE #( ( %tky = lw_roles-%tky
                         Category = 'IT/Communications' ) ).

        WHEN 'Accounting'.
          MODIFY ENTITIES OF zi_employee_tt
              IN LOCAL MODE ENTITY Empleados_entity
              UPDATE FIELDS ( Category )
              WITH VALUE #( ( %tky = lw_roles-%tky
                             Category = 'Finance/Accounting' ) ).

        WHEN 'Lawyer'.
          MODIFY ENTITIES OF zi_employee_tt
            IN LOCAL MODE ENTITY Empleados_entity
            UPDATE FIELDS ( Category )
            WITH VALUE #( ( %tky = lw_roles-%tky
                         Category = 'Legal' ) ).

        WHEN 'Administrative'.
          MODIFY ENTITIES OF zi_employee_tt
            IN LOCAL MODE ENTITY Empleados_entity
            UPDATE FIELDS ( Category )
            WITH VALUE #( ( %tky = lw_roles-%tky
                          Category = 'Management/Administration' ) ).

        WHEN OTHERS.
          MODIFY ENTITIES OF zi_employee_tt
                IN LOCAL MODE ENTITY Empleados_entity
                UPDATE FIELDS ( Category )
                WITH VALUE #( ( %tky = lw_roles-%tky
                              Category = 'Others' ) ).

      ENDCASE.
      CLEAR lw_roles.
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
