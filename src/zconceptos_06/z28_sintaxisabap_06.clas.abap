CLASS z28_sintaxisabap_06 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z28_sintaxisabap_06 IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.
"------------------------------------------------------------
" Examples of ABAP statements
"------------------------------------------------------------
*Comentarios
        "Comentarios


DATA name TYPE c LENGTH 10.    "Declaración de variable
DATA text TYPE string.

CONCATENATE 'Hello'
            name
       INTO text.


"------------------------------------------------------------
" Examples of expressions
"------------------------------------------------------------

text = 'Hello'.

text = name.

text = replace(
         val = 'Hello World'
         sub = 'World'
         with = name
       ).

text = COND #(
         WHEN text = ''
         THEN 'Hello' && name
         ELSE text
       ).



  ENDMETHOD.
ENDCLASS.
