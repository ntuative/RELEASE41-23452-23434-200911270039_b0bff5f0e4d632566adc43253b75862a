package com.sulake.habbo.inventory.items
{
   public class WallItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var var_1291:String;
      
      protected var var_2147:Boolean;
      
      protected var var_2148:int;
      
      protected var _type:int;
      
      protected var _category:int;
      
      protected var var_1794:Boolean;
      
      protected var var_2137:Boolean;
      
      protected var var_2149:Boolean;
      
      public function WallItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:String)
      {
         super();
         _id = param1;
         _type = param2;
         var_2148 = param3;
         _category = param4;
         var_1794 = param5;
         var_2149 = param6;
         var_2147 = param7;
         var_1291 = param8;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function set extras(param1:String) : void
      {
         var_1291 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get locked() : Boolean
      {
         return var_2137;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2149;
      }
      
      public function get ref() : int
      {
         return var_2148;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get extras() : String
      {
         return var_1291;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2147;
      }
      
      public function get groupable() : Boolean
      {
         return var_1794;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2137 = param1;
      }
   }
}
