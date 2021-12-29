"! <p class="shorttext synchronized" lang="de">Allgemeine Richtlinien Version 6.0</p>
CLASS zcl_abaplint_dummy DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS read_nad_in
      IMPORTING
        !im_snad       TYPE any
      RETURNING
        VALUE(re_snad) TYPE zeide_abaplintdummy
      RAISING
        zcx_isu_dex_all .

    METHODS read_nad_name_in
      IMPORTING
        !im_snad       TYPE any
      RETURNING
        VALUE(re_snad) TYPE zeide_abaplintdum
      RAISING
        zcx_isu_dex_all .

  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_ABAPLINT_DUMMY IMPLEMENTATION.


  METHOD read_nad_in.

    re_snad-name = read_nad_name_in( im_snad ).

  ENDMETHOD.


  METHOD read_nad_name_in.

  ENDMETHOD.
ENDCLASS.
