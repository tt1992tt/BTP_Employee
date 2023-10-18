CLASS zcl_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_test IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    DATA:
      ls_entity_key    TYPE zrap_1234zacdoca_cds,
      lt_business_data TYPE TABLE OF zzcm_rap_a_addressemailaddress,
*      lo_http_client   TYPE REF TO if_web_http_client,
*      lo_resource      TYPE REF TO /iwbep/if_cp_resource_entity,
      lo_client_proxy  TYPE REF TO /iwbep/if_cp_client_proxy,
      lo_request       TYPE REF TO /iwbep/if_cp_request_read.
*      lo_response      TYPE REF TO /iwbep/if_cp_response_read.

    CONSTANTS: lc_rbukrs     TYPE string VALUE '8032',
               lc_gjahr      TYPE string VALUE '2019',
               c_destination TYPE string VALUE 'ODATA_RS8'.

    TRY.
        DATA(lo_http_client) = cl_web_http_client_manager=>create_by_http_destination(
                                   cl_http_destination_provider=>create_by_cloud_destination( i_name = c_destination
                                                                                              i_authn_mode = if_a4c_cp_service=>service_specific ) ).
      CATCH cx_http_dest_provider_error
            cx_web_http_client_error
            INTO DATA(lo_err).
        out->write( lo_err->get_longtext(  ) ).
    ENDTRY.

    ASSERT lo_http_client IS BOUND.


    TRY.
        lo_client_proxy = cl_web_odata_client_factory=>create_v2_remote_proxy(
          EXPORTING
            iv_service_definition_name = 'ZCM_BUSINESS_PARTNER'
            io_http_client             = lo_http_client
            iv_relative_service_root   = '/sap/opu/odata/sap/API_BUSINESS_PARTNER' ).
      CATCH /iwbep/cx_gateway cx_web_http_client_error INTO FINAL(lo_proxy_err).
        out->write( lo_proxy_err->get_longtext(  ) ).
    ENDTRY.

    ASSERT lo_client_proxy IS BOUND.
*    " Set entity key
*    ls_entity_key = VALUE #(
*              rbukrs  = lc_rbukrs
*              gjahr   = lc_gjahr ).

    " Navigate to the resource
    TRY.
        DATA(lo_resource) = lo_client_proxy->create_resource_for_entity_set( 'A_AddressEmailAddress' ).
      CATCH /iwbep/cx_gateway INTO FINAL(lo_resource_err).
        lo_resource_err->get_text(  ).
    ENDTRY.

    " Execute the request and retrieve the business data
    DATA(lo_response) = lo_resource->create_request_for_read( )->set_top( 100 )->execute( ).

    lo_response->get_business_data( IMPORTING et_business_data = lt_business_data ).

    out->write( lo_resource->create_request_for_read( )->get_response(  ) ).
    out->write( lt_business_data ).

    " Llamar a un servicio publico - Funciona OK
*    TRY.
*        DATA(lo_url_destination) = cl_http_destination_provider=>create_by_url(
*                                                        'http://services.odata.org/V2/Northwind/Northwind.svc/Regions(1)/RegionDescription').
*      CATCH cx_http_dest_provider_error INTO DATA(lo_err).
*        lo_err->get_text(  ).
*    ENDTRY.
*
*    ASSERT lo_url_destination IS BOUND.
*
*    DATA(result) = cl_web_http_client_manager=>create_by_http_destination( lo_url_destination ).
*
*    ASSERT result IS BOUND.
*
*    DATA(response) = result->execute( if_web_http_client=>get ).
*
*    ASSERT response->get_status(  )-code EQ '200'.
*
*      out->write( response->get_text(  ) ).
*
*    result->close(  ).

  ENDMETHOD.

ENDCLASS.
