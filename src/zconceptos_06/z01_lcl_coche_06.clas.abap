CLASS z01_lcl_coche_06 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA color TYPE string.
    "un método es una acción que puede hacer una clase
    METHODS arrancar
        RETURNING VALUE(rv_mensaje) TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z01_lcl_coche_06 IMPLEMENTATION.
  METHOD arrancar.
  "rv=return value
*comentario de prueba,tiene que ir pegado a la barra lateral
    rv_mensaje  = 'El coche arranca'.
  ENDMETHOD.

ENDCLASS.
