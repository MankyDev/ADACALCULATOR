package Pkg_Subtract with SPARK_Mode is

   procedure Subtract
     (First_Operand  : Integer;
      Second_Operand : Integer;
      Result         : out Integer)
   --  Using the function 'Add', compute the subtraction of First_Operand
   --  plus Second_Operand
   with
      Global  => null,
--      Depends => ...
        Pre     => True,
        Post    => Result = First_Operand - Second_Operand;

end Pkg_Subtract;
