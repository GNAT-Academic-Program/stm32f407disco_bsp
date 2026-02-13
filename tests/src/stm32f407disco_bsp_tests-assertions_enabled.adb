procedure Stm32f407disco_Bsp_Tests.Assertions_Enabled is
begin
   begin
      pragma Assert (False, "Should raise");
   exception
      when others =>
         return; -- properly raised
   end;
   raise Program_Error with "Assertion did not raise";
end Stm32f407disco_Bsp_Tests.Assertions_Enabled;
