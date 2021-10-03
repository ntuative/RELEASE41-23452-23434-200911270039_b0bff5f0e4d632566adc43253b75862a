package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_590:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_590 = new ByteArray();
         var_590.writeShort(param1);
         var_590.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_590.position = 0;
         if(false)
         {
            _loc1_ = var_590.readShort();
            var_590.position = 0;
         }
         return _loc1_;
      }
   }
}
