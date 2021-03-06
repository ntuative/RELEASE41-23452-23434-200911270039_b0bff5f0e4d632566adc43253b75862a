package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_1291:String;
      
      protected var var_2147:Boolean;
      
      protected var var_1790:int;
      
      protected var _type:int;
      
      protected var var_1793:int;
      
      protected var var_2137:Boolean;
      
      protected var var_1681:int;
      
      protected var var_2149:Boolean;
      
      protected var _id:int;
      
      protected var var_2148:int;
      
      protected var var_1684:String;
      
      protected var var_1794:Boolean;
      
      protected var _category:int;
      
      protected var var_1789:int;
      
      protected var var_2156:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:int, param11:int, param12:int, param13:String, param14:int)
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
         var_2156 = param9;
         var_1790 = param10;
         var_1789 = param11;
         var_1793 = param12;
         var_1684 = param13;
         var_1681 = param14;
      }
      
      public function get locked() : Boolean
      {
         return var_2137;
      }
      
      public function get songId() : int
      {
         return var_1681;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2137 = param1;
      }
      
      public function get ref() : int
      {
         return var_2148;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get slotId() : String
      {
         return var_1684;
      }
      
      public function get expires() : int
      {
         return var_2156;
      }
      
      public function get creationYear() : int
      {
         return var_1793;
      }
      
      public function get creationDay() : int
      {
         return var_1790;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2149;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get groupable() : Boolean
      {
         return var_1794;
      }
      
      public function get creationMonth() : int
      {
         return var_1789;
      }
      
      public function get extras() : String
      {
         return var_1291;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2147;
      }
   }
}
