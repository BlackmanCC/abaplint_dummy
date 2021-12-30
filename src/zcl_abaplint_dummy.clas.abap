CLASS zcl_abaplint_dummy DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS read_structure
      RETURNING
        VALUE(rs_structure) TYPE zabaplint_structure.

    METHODS read_substructure
      RETURNING
        VALUE(rs_substructure) TYPE zabaplint_substructure.
  PROTECTED SECTION.

  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_abaplint_dummy IMPLEMENTATION.


  METHOD read_structure.

    rs_structure-substruc = read_substructure( ).

  ENDMETHOD.


  METHOD read_substructure.

  ENDMETHOD.
ENDCLASS.
