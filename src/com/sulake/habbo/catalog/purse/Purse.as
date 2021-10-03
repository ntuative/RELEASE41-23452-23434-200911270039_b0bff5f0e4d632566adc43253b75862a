package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1534:int = 0;
      
      private var var_2037:int = 0;
      
      private var var_2038:int = 0;
      
      private var var_1538:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_2037;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2037 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1534 = param1;
      }
      
      public function get credits() : int
      {
         return var_2038;
      }
      
      public function get clubDays() : int
      {
         return var_1534;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1538 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_2038 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1538;
      }
   }
}
