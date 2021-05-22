CLASS zcl_hska_ms_helloworld DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

    METHODS:
      multiply
        IMPORTING
                  input1        TYPE i
                  input2        TYPE i
        RETURNING VALUE(result) TYPE i.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_hska_ms_helloworld IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    out->write( 'Hello World!' ).

    DATA(output) = multiply( input1 = 2 input2 = 5 ).
    out->write( output ).


  ENDMETHOD.


  METHOD multiply.

    result = input1 * input2.

  ENDMETHOD.

ENDCLASS.
