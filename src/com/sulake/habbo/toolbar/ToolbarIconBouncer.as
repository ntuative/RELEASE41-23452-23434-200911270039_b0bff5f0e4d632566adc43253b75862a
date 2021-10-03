package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2124:Number;
      
      private var var_573:Number = 0;
      
      private var var_2123:Number;
      
      private var var_572:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_2124 = param1;
         var_2123 = param2;
      }
      
      public function update() : void
      {
         var_572 += var_2123;
         var_573 += var_572;
         if(var_573 > 0)
         {
            var_573 = 0;
            var_572 = var_2124 * -1 * var_572;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_572 = param1;
         var_573 = 0;
      }
      
      public function get location() : Number
      {
         return var_573;
      }
   }
}
