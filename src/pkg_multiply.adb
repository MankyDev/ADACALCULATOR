with Pkg_Add;     use Pkg_Add;
package body Pkg_Multiply with SPARK_Mode is

   procedure Multiply
     (First_Operand  : Integer;
      Second_Operand : Integer;
      Result         : out Integer) is
   begin

      for I in 1 .. Second_Operand loop
         Result := First_Operand + Result;
      end loop;
   end Multiply;

end Pkg_Multiply;
