*"* use this source file for your ABAP unit test classes
*CLASS lcl_guidel_test DEFINITION DEFERRED.
*CLASS zcl_isu_dex_gen_guidel_60 DEFINITION LOCAL FRIENDS lcl_guidel_test.

CLASS lt_guidel_test DEFINITION FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    DATA mo_cut TYPE REF TO zcl_isu_dex_gen_guidel_60.  "class under test

    CLASS-DATA g_directory TYPE zeidedirectory VALUE '06A'.
    CLASS-METHODS class_setup.
    CLASS-METHODS class_teardown.
    METHODS setup.
    METHODS teardown.
    METHODS fill_element_to_struc FOR TESTING.
    METHODS read_dtm_in FOR TESTING.
    METHODS read_moa_in FOR TESTING.
    METHODS read_nad_address_in FOR TESTING.
    METHODS read_nad_in FOR TESTING.
    METHODS read_nad_name_in FOR TESTING.
    METHODS read_number FOR TESTING.
    METHODS read_pri_in FOR TESTING.
    METHODS write_dtm_out FOR TESTING.
    METHODS write_moa_out FOR TESTING.
    METHODS write_nad_address_out FOR TESTING.
    METHODS write_nad_out FOR TESTING.
    METHODS write_number FOR TESTING
      RAISING zcx_isu_dex_all.
    METHODS write_pri_out FOR TESTING.
    METHODS write_value FOR TESTING.
ENDCLASS.       "lcl_Guidel_Test


CLASS lt_guidel_test IMPLEMENTATION.

  METHOD class_setup.

  ENDMETHOD.

  METHOD setup.
    mo_cut = NEW #( g_directory ).
  ENDMETHOD.


  METHOD teardown.
    CLEAR mo_cut.
  ENDMETHOD.

  METHOD class_teardown.

  ENDMETHOD.


  METHOD fill_element_to_struc.

*    DATA im_value TYPE any.
*    DATA im_fieldname1 TYPE fieldname.
*    DATA im_fieldname2 TYPE fieldname.
*    DATA im_fieldname3 TYPE fieldname.
*    DATA im_fieldname4 TYPE fieldname.
*    DATA im_fieldname5 TYPE fieldname.
*    DATA ch_segment TYPE any.
*
*    zcl_isu_dex_gen_guidel_60=>fill_element_to_struc(
*      EXPORTING
*        im_value = im_value
*        im_fieldname1 = im_fieldname1
**       IM_FIELDNAME2 = im_Fieldname2
**       IM_FIELDNAME3 = im_Fieldname3
**       IM_FIELDNAME4 = im_Fieldname4
**       IM_FIELDNAME5 = im_Fieldname5
*      CHANGING
*        ch_segment = ch_segment ).
*
*    cl_abap_unit_assert=>assert_equals(
*      act   = ch_segment
*      exp   = ch_segment          "<--- please adapt expected value
*    " msg   = 'Testing value ch_Segment'
**     level =
*    ).
  ENDMETHOD.


  METHOD read_dtm_in.

*    DATA im_sdtm TYPE any.
*    DATA re_sdtm TYPE zeide_dtm.
*
*    re_sdtm = mo_cut->read_dtm_in( im_sdtm ).
*
*    cl_abap_unit_assert=>assert_equals(
*      act   = re_sdtm
*      exp   = re_sdtm          "<--- please adapt expected value
*    " msg   = 'Testing value re_Sdtm'
**     level =
*    ).
  ENDMETHOD.


  METHOD read_moa_in.

*    DATA im_smoa TYPE any.
*    DATA re_smoa TYPE zeide_moa.
*
*    mo_cut->read_moa_in(
*      EXPORTING
*        im_smoa = im_smoa
**     IMPORTING
**       RE_SMOA = re_Smoa
*    ).
*
*    cl_abap_unit_assert=>assert_equals(
*      act   = re_smoa
*      exp   = re_smoa          "<--- please adapt expected value
*    " msg   = 'Testing value re_Smoa'
**     level =
*    ).
  ENDMETHOD.


  METHOD read_nad_address_in.

*    DATA im_snad TYPE any.
*    DATA re_snad TYPE zeide_address.
*
*    re_snad = mo_cut->read_nad_address_in( im_snad ).
*
*    cl_abap_unit_assert=>assert_equals(
*      act   = re_snad
*      exp   = re_snad          "<--- please adapt expected value
*    " msg   = 'Testing value re_Snad'
**     level =
*    ).
  ENDMETHOD.


  METHOD read_nad_in.

*    DATA im_snad TYPE any.
*    DATA re_snad TYPE zeide_nad.
*
*    re_snad = mo_cut->read_nad_in( im_snad ).
*
*    cl_abap_unit_assert=>assert_equals(
*      act   = re_snad
*      exp   = re_snad          "<--- please adapt expected value
*    " msg   = 'Testing value re_Snad'
**     level =
*    ).
  ENDMETHOD.


  METHOD read_nad_name_in.

*    DATA im_snad TYPE any.
*    DATA re_snad TYPE zeide_name.
*
*    re_snad = mo_cut->read_nad_name_in( im_snad ).
*
*    cl_abap_unit_assert=>assert_equals(
*      act   = re_snad
*      exp   = re_snad          "<--- please adapt expected value
*    " msg   = 'Testing value re_Snad'
**     level =
*    ).
  ENDMETHOD.


  METHOD read_number.

*    DATA im_num TYPE clike.
*    DATA im_max_decimal_places TYPE i.
*    DATA re_num TYPE string.
*
*    re_num = mo_cut->read_number(
*        im_num = im_num
**       IM_MAX_DECIMAL_PLACES = im_Max_Decimal_Places
*    ).
*
*    cl_abap_unit_assert=>assert_equals(
*      act   = re_num
*      exp   = re_num          "<--- please adapt expected value
*    " msg   = 'Testing value re_Num'
**     level =
*    ).
  ENDMETHOD.


  METHOD read_pri_in.

*    DATA im_spri TYPE any.
*    DATA re_spri TYPE zeide_pri.
*
*    re_spri = mo_cut->read_pri_in( im_spri ).
*
*    cl_abap_unit_assert=>assert_equals(
*      act   = re_spri
*      exp   = re_spri          "<--- please adapt expected value
*    " msg   = 'Testing value re_Spri'
**     level =
*    ).
  ENDMETHOD.


  METHOD write_dtm_out.

    TYPES:
      BEGIN OF ty_test_case,
        date_local TYPE datum,
        time_local TYPE time_,
        format     TYPE string,
        exp        TYPE string,
      END OF ty_test_case,
      ty_t_test_cases TYPE HASHED TABLE OF ty_test_case WITH UNIQUE KEY date_local time_local format.

    DATA ls_sdtm TYPE zeide_dtm.
    DATA ls_dtm TYPE ze3vdewdtm.

    DATA(lt_test) = VALUE ty_t_test_cases(
     ( date_local = '20211222' time_local = '000000' format = '303' exp = '202112212300+00' )
     ( date_local = '20210701' time_local = '000000' format = '303' exp = '202106302200+00' )
     ( date_local = '20211222' time_local = '060000' format = '303' exp = '202112220500+00' )
     ( date_local = '20210701' time_local = '060000' format = '303' exp = '202107010400+00' ) ).

    LOOP AT lt_test REFERENCE INTO DATA(test).
      ls_sdtm-date_local = test->date_local.
      ls_sdtm-time_local = test->time_local.
      TRY.
          mo_cut->write_dtm_out(
                     EXPORTING im_sdtm = ls_sdtm
                               im_format = CONV #( test->format )
                     IMPORTING ex_sdtm = ls_dtm ).

          cl_abap_unit_assert=>assert_equals(
            act   = ls_dtm-datum
            exp   = test->exp
            msg   = |Failed at { test->date_local }#{ test->time_local }#{ test->format }. | &
                    |Expected { test->exp }, Received { ls_dtm-datum }|
            quit  = if_aunit_constants=>quit-no ).
        CATCH zcx_isu_dex_all.
          IF test->exp <> 'EXCEPTION'.
            cl_abap_unit_assert=>fail(
              msg = 'zcx_isu_dex_all raised'
              level = if_aunit_constants=>critical ).
          ENDIF.
      ENDTRY.

    ENDLOOP.

  ENDMETHOD.


  METHOD write_moa_out.

*    DATA is_moastruc TYPE zeide_moa.
*    DATA es_moa TYPE any.
*
*    mo_cut->write_moa_out(
*      EXPORTING
*        is_moastruc = is_moastruc
**     IMPORTING
**       ES_MOA = es_Moa
*    ).
*
*    cl_abap_unit_assert=>assert_equals(
*      act   = es_moa
*      exp   = es_moa          "<--- please adapt expected value
*    " msg   = 'Testing value es_Moa'
**     level =
*    ).
  ENDMETHOD.


  METHOD write_nad_address_out.

*    DATA im_zeide_address TYPE zeide_address.
*    DATA rs_nadstruc TYPE any.
*
*    mo_cut->write_nad_address_out(
*      EXPORTING
*        im_zeide_address = im_zeide_address
**     IMPORTING
**       RS_NADSTRUC = rs_Nadstruc
*    ).
*
*    cl_abap_unit_assert=>assert_equals(
*      act   = rs_nadstruc
*      exp   = rs_nadstruc          "<--- please adapt expected value
*    " msg   = 'Testing value rs_Nadstruc'
**     level =
*    ).
  ENDMETHOD.


  METHOD write_nad_out.

*    DATA im_zeide_nad TYPE zeide_nad.
*    DATA rs_nadstruc TYPE any.
*
*    mo_cut->write_nad_out(
*      EXPORTING
*        im_zeide_nad = im_zeide_nad
**     IMPORTING
**       RS_NADSTRUC = rs_Nadstruc
*    ).
*
*    cl_abap_unit_assert=>assert_equals(
*      act   = rs_nadstruc
*      exp   = rs_nadstruc          "<--- please adapt expected value
*    " msg   = 'Testing value rs_Nadstruc'
**     level =
*    ).
  ENDMETHOD.


  METHOD write_number.

    TYPES:
      BEGIN OF ty_test_case,
        input    TYPE string,
        decimals TYPE i,
        exp      TYPE ze3vdewmoa_50-monetary_amount_value,
      END OF ty_test_case,
      ty_t_test_cases TYPE HASHED TABLE OF ty_test_case WITH UNIQUE KEY input decimals.

    DATA lv_value TYPE ze3vdewmoa_50-monetary_amount_value.

    DATA(lt_test) = VALUE ty_t_test_cases(
     ( input = 'T128'            decimals = 2 exp = 'EXCEPTION' ) "Text in Zahl -> Ausnahme
     ( input = '128.'            decimals = 2 exp = '128' )
     ( input = '00001.128,32125' decimals = 2 exp = '1128.32' )
     ( input = '1.128,32125'     decimals = 2 exp = '1128.32' )
     ( input = '1.128'           decimals = 2 exp = '1.13' )
     ( input = '128,32125'       decimals = 2 exp = '128.32' )
     ( input = '128.32125'       decimals = 2 exp = '128.32' )
     ( input = '128.3'           decimals = 2 exp = '128.3' )
     ( input = '128.300'         decimals = 2 exp = '128.3' )
     ( input = '00001.128,32125' decimals = 1 exp = '1128.3' )
     ( input = '1.128,32125'     decimals = 1 exp = '1128.3' )
     ( input = '1.128'           decimals = 1 exp = '1.1' )
     ( input = '128,32125'       decimals = 1 exp = '128.3' )
     ( input = '128.32125'       decimals = 1 exp = '128.3' )
     ( input = '128.3'           decimals = 1 exp = '128.3' )
     ( input = '128.300'         decimals = 1 exp = '128.3' )
     ( input = '00001.128,32125' decimals = 0 exp = '1128' )
     ( input = '1.128,32125'     decimals = 0 exp = '1128' )
     ( input = '1.5'             decimals = 0 exp = '2' )
     ( input = '1.128'           decimals = 0 exp = '1' )
     ( input = '128,32125'       decimals = 0 exp = '128' )
     ( input = '128.32125'       decimals = 0 exp = '128' )
     ( input = '128.3'           decimals = 0 exp = '128' )
     ( input = '128.300'         decimals = 0 exp = '128' ) ).

    LOOP AT lt_test REFERENCE INTO DATA(test).

      lv_value = CONV #( test->input ).
      TRY.
          lv_value = mo_cut->write_number(
                       id_num            = lv_value
                       id_decimal_places = test->decimals ).
          cl_abap_unit_assert=>assert_equals(
            act   = lv_value
            exp   = test->exp
            msg   = |Failed at { test->input }#{ test->decimals }. Expected { test->exp }, Received { lv_value }|
            quit  = if_aunit_constants=>quit-no ).
        CATCH zcx_isu_dex_all.
          IF test->exp <> 'EXCEPTION'.
            cl_abap_unit_assert=>fail(
              msg = 'zcx_isu_dex_all raised'
              level = if_aunit_constants=>critical ).
          ENDIF.
      ENDTRY.

    ENDLOOP.

  ENDMETHOD.


  METHOD write_pri_out.

*    DATA is_pristruc TYPE zeide_pri.
*    DATA es_pri TYPE any.
*
*    mo_cut->write_pri_out(
*      EXPORTING
*        is_pristruc = is_pristruc
**     IMPORTING
**       ES_PRI = es_Pri
*    ).
*
*    cl_abap_unit_assert=>assert_equals(
*      act   = es_pri
*      exp   = es_pri          "<--- please adapt expected value
*    " msg   = 'Testing value es_Pri'
**     level =
*    ).
  ENDMETHOD.


  METHOD write_value.

*    DATA id_val TYPE clike.
*    DATA rd_val TYPE string.
*
*    rd_val = mo_cut->write_value( id_val ).
*
*    cl_abap_unit_assert=>assert_equals(
*      act   = rd_val
*      exp   = rd_val          "<--- please adapt expected value
*    " msg   = 'Testing value rd_Val'
**     level =
*    ).
  ENDMETHOD.

ENDCLASS.
