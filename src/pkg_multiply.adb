with Pkg_Add;     use Pkg_Add;
package body Pkg_Multiply with SPARK_Mode is

   procedure Multiply
     (First_Operand  : Integer;
      Second_Operand : Integer;
      Result         : out Integer) is
   begin
      Result := 0;
      if (First_Operand > 0) and (Second_Operand > 0) then
         for I in 1 .. Second_Operand loop
            Result := Add(First_Operand, Result);
         end loop;
      elsif ((First_Operand > 0) and (Second_Operand < 0)) then

         for I in 1 .. (Second_Operand*(-1)) loop
            Result := Add(First_Operand, Result);
         end loop;
         Result := Result*(-1);
      elsif ((First_Operand < 0) and (Second_Operand > 0)) then

         for I in 1 .. Second_Operand loop
            Result := Add(First_Operand, Result);
         end loop;
      elsif ((First_Operand < 0) and (Second_Operand < 0)) then

         for I in 1 .. (Second_Operand*(-1)) loop
            Result := Add((First_Operand*(-1)), Result);
         end loop;
      end if;
   end Multiply;

end Pkg_Multiply;
