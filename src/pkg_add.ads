package Pkg_Add with SPARK_Mode is

   function Add
     (First_Operand  : Integer;
      Second_Operand : Integer) return Integer
   --  Compute the addition of First_Operand plus Second_Operand
   with
--      Global  => ...
--      Depends => ...
        Pre     => True,
        Post    => Add'Result = First_Operand + Second_Operand;

end Pkg_Add;
