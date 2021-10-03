package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1451:String;
      
      private var var_1431:String;
      
      private var var_968:String;
      
      private var var_402:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1451 = String(param1.@align);
         var_968 = String(param1.@base);
         var_1431 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_402 = Number(_loc2_);
            if(var_402 > 1)
            {
               var_402 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1451;
      }
      
      public function get ink() : String
      {
         return var_1431;
      }
      
      public function get base() : String
      {
         return var_968;
      }
      
      public function get isBlended() : Boolean
      {
         return var_402 != 1;
      }
      
      public function get blend() : Number
      {
         return var_402;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
