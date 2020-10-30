with Pkg_Add; use Pkg_Add;

package body Pkg_Divide with SPARK_Mode is

   procedure Divide
     (Dividend  : Integer;
      Divisor   : Integer;
      Quotient  : out Integer;
      Remainder : out Integer) is
   begin
      Quotient := 1;
      Remainder := Add(Dividend,Divisor*(-1));

      while Remainder >= Divisor loop
         Remainder := Add(Remainder, Divisor*(-1));
         Quotient := Add(Quotient,1);
      end loop;
      Last_Remainder := Remainder;
      Last_Quotient := Quotient;
   end Divide;

end Pkg_Divide;
