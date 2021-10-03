package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_460:int = 0;
      
      public static const const_107:int = 2;
      
      public static const const_169:int = 1;
      
      public static const const_649:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_1811:int;
      
      private var var_1810:int;
      
      private var var_1808:Array;
      
      private var var_1807:Boolean;
      
      private var var_1812:Boolean;
      
      private var var_1191:String;
      
      private var var_1806:Boolean;
      
      private var var_1813:int;
      
      private var var_1805:int;
      
      private var var_1181:int;
      
      private var var_1809:Boolean;
      
      private var _roomId:int;
      
      private var var_1814:Boolean;
      
      private var var_576:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_1813;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1813 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_576;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1812;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1814;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_1811 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1808 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_576 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1807;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_1810;
      }
      
      public function get categoryId() : int
      {
         return var_1181;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1812 = param1;
      }
      
      public function set allowTrading(param1:Boolean) : void
      {
         var_1814 = param1;
      }
      
      public function set showOwnerName(param1:Boolean) : void
      {
         var_1809 = param1;
      }
      
      public function set allowFurniMoving(param1:Boolean) : void
      {
         var_1806 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_1811;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1808;
      }
      
      public function get showOwnerName() : Boolean
      {
         return var_1809;
      }
      
      public function get allowFurniMoving() : Boolean
      {
         return var_1806;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1805 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1807 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_1810 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1805;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1181 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1191 = param1;
      }
      
      public function get description() : String
      {
         return var_1191;
      }
   }
}
