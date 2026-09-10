CLASS z02_variables_06 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z02_variables_06 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*  "Ejercicio 1 — Tu primera variable: tipo entero
    "declarar  una variable y asignarle un valor
    DATA lv_edad TYPE i VALUE 25.
    "asignar valor
    "lv_edad = 25.
    "ver en consola
*    out->write( lv_edad ).
*"Ejercicio 2 — Comprobar que el valor cambia
* "cambio valor
    lv_edad = 30.
    out->write( lv_edad ).
*
*"Ejercicio 3 — Variable de texto
    DATA lv_nombre TYPE string.
    lv_nombre = 'Anabel'.


*"Ejercicio 4 — Varias variables en el mismo programa
    DATA lv_texto TYPE string.
    DATA lv_entero TYPE i.
    lv_texto = 'Anabel'.
    lv_entero = 23.
    out->write( |Hola me llamo { lv_texto } y tengo { lv_entero } años.| ).
    out->write( |{ lv_texto } { lv_entero }| ).


*"Ejercicio 5 — Verlo dentro de una frase (plantilla de string)
    DATA lv_edad2 TYPE i.
    lv_edad2 = 21.
    out->write( |Mi edad es { lv_edad2 } años.| ).


*"Ejercicio 6 — Variable de tipo fecha
    DATA lv_fecha TYPE d.
    lv_fecha = '20250101'.
    out->write( lv_fecha ).




    "Ejercicio 7 — Reto final (combinarlo todo: fecha, texto e importe)

    DATA lv_producto TYPE string.
    DATA lv_precio   TYPE p LENGTH 8 DECIMALS 2.
    DATA lv_fechaalta    TYPE d.

    lv_producto = 'Teclado'.
    lv_precio   = '19.99'.
    lv_fechaalta    = '20250315'.


    out->write( lv_fechaalta ).

    out->write(
      |Producto: { lv_producto }, precio: { lv_precio }, alta: { lv_fechaalta DATE = USER }|
    ).

    "Formatos Fecha
*    DATE = USER          → formato del usuario
*    DATE = ISO           → 2025-03-15
*    DATE = RAW           → 20250315
*    DATE = ENVIRONMENT   → formato determinado por el entorno

    out->write( |USER        -> { lv_fechaalta DATE = USER }| ).
    out->write( |ISO         -> { lv_fechaalta DATE = ISO }| ).
    out->write( |RAW         -> { lv_fechaalta DATE = RAW }| ).
    out->write( |ENVIRONMENT -> { lv_fechaalta DATE = ENVIRONMENT }| ).





  ENDMETHOD.
ENDCLASS.
