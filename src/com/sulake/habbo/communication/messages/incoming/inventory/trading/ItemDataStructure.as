package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1790:int;
      
      private var var_1791:int;
      
      private var var_1022:String;
      
      private var var_1727:int;
      
      private var var_1786:String;
      
      private var var_1787:int;
      
      private var var_1793:int;
      
      private var _category:int;
      
      private var var_1792:int;
      
      private var var_1789:int;
      
      private var var_1788:int;
      
      private var var_1794:Boolean;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:Boolean, param12:int)
      {
         super();
         var_1727 = param1;
         var_1022 = param2;
         var_1791 = param3;
         var_1788 = param4;
         _category = param5;
         var_1786 = param6;
         var_1787 = param7;
         var_1790 = param8;
         var_1789 = param9;
         var_1793 = param10;
         var_1794 = param11;
         var_1792 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1788;
      }
      
      public function get groupable() : Boolean
      {
         return var_1794;
      }
      
      public function get creationMonth() : int
      {
         return var_1789;
      }
      
      public function get roomItemID() : int
      {
         return var_1791;
      }
      
      public function get itemType() : String
      {
         return var_1022;
      }
      
      public function get itemID() : int
      {
         return var_1727;
      }
      
      public function get itemSpecificData() : String
      {
         return var_1786;
      }
      
      public function get songID() : int
      {
         return var_1792;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1787;
      }
      
      public function get creationYear() : int
      {
         return var_1793;
      }
      
      public function get creationDay() : int
      {
         return var_1790;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
