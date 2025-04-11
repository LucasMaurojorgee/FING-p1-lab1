Procedure siguienteDigito(Var num: Natural; Var digito: integer);
Begin
  digito := num Mod 10;
  num := num Div 10;
End;

Function esHistogramaDe(c0, c1, c2, c3, c4, c5, c6, c7, c8, c9: integer; num:
                        Natural): boolean;

Const CENTINELA = 0;

Var 
  esHistograma: Boolean;
  digito: integer;
  numero: Natural;

Begin
  esHistograma := True;
  numero := num;

  While numero <> CENTINELA Do
    Begin
      siguienteDigito(numero, digito);

      Case digito Of 
        0: c0 := c0 - 1;
        1: c1 := c1 - 1;
        2: c2 := c2 - 1;
        3: c3 := c3 - 1;
        4: c4 := c4 - 1;
        5: c5 := c5 - 1;
        6: c6 := c6 - 1;
        7: c7 := c7 - 1;
        8: c8 := c8 - 1;
        9: c9 := c9 - 1;
      End;
    End;

  esHistograma := (c0 = 0) And (c1 = 0) And (c2 = 0) And (c3 =
                  0) And (c4
                  = 0)
                  And (c5 = 0) And (c6 = 0) And (c7 = 0) And (
                  c8 = 0) And (c9 =
                  0);

  esHistogramaDe := esHistograma;
End;

Function sonAnagramas(num1, num2: Natural): boolean;

Const CENTINELA = 0;

Var 
  c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, digito: integer;
  numero: Natural;

Begin
  numero := num1;
  c0 := 0;
  c1 := 0;
  c2 := 0;
  c3 := 0;
  c4 := 0;
  c5 := 0;
  c6 := 0;
  c7 := 0;
  c8 := 0;
  c9 := 0;

  While numero <> CENTINELA Do
    Begin
      siguienteDigito(numero, digito);

      Case digito Of 
        0: c0 := c0 + 1;
        1: c1 := c1 + 1;
        2: c2 := c2 + 1;
        3: c3 := c3 + 1;
        4: c4 := c4 + 1;
        5: c5 := c5 + 1;
        6: c6 := c6 + 1;
        7: c7 := c7 + 1;
        8: c8 := c8 + 1;
        9: c9 := c9 + 1;
      End;
    End;

  sonAnagramas := esHistogramaDe(c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, num2);
End;
