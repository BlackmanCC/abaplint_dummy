"! <p class="shorttext synchronized" lang="de">Allgemeine Richtlinien Version 6.0</p>
CLASS zcl_abaplint_dummy DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS read_nad_in
      IMPORTING
        !im_snad       TYPE any
      RETURNING
        VALUE(re_snad) TYPE zeide_nad
      RAISING
        zcx_isu_dex_all .

    METHODS read_nad_name_in
      IMPORTING
        !im_snad       TYPE any
      RETURNING
        VALUE(re_snad) TYPE zeide_name
      RAISING
        zcx_isu_dex_all .

  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_abaplint_dummy IMPLEMENTATION.


  METHOD read_nad_name_in.

  ENDMETHOD.

  METHOD read_nad_in.

    re_snad-name = read_nad_name_in( im_snad ).

  ENDMETHOD.

ENDCLASS.
