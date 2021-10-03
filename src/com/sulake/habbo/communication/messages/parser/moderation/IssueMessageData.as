package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_145:int = 1;
      
      public static const const_1294:int = 3;
      
      public static const const_413:int = 2;
       
      
      private var var_1981:int;
      
      private var var_1774:int;
      
      private var var_1987:int;
      
      private var var_1771:int;
      
      private var _state:int;
      
      private var var_375:int;
      
      private var var_1066:int;
      
      private var var_1898:int;
      
      private var var_935:int;
      
      private var _roomResources:String;
      
      private var var_1982:int;
      
      private var var_1979:int;
      
      private var var_1986:String;
      
      private var var_1897:String;
      
      private var var_1980:int = 0;
      
      private var var_1137:String;
      
      private var _message:String;
      
      private var var_1984:int;
      
      private var var_1985:String;
      
      private var var_1181:int;
      
      private var var_648:String;
      
      private var var_1983:String;
      
      private var var_1434:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_935 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_1980 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_1979;
      }
      
      public function set roomName(param1:String) : void
      {
         var_648 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1982 = param1;
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_648;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1771 = param1;
      }
      
      public function set state(param1:int) : void
      {
         _state = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1774;
      }
      
      public function get priority() : int
      {
         return var_1981 + var_1980;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1898 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1897;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1434) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1181;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_1979 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1066;
      }
      
      public function set flatType(param1:String) : void
      {
         var_1986 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1982;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1771;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_1983 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1137 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1898;
      }
      
      public function set priority(param1:int) : void
      {
         var_1981 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1774 = param1;
      }
      
      public function get flatType() : String
      {
         return var_1986;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_1987 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1897 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1984 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1137;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1066 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_1987;
      }
      
      public function set flatId(param1:int) : void
      {
         var_375 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1181 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1434 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1984;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_1985 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1434;
      }
      
      public function get reportedUserId() : int
      {
         return var_935;
      }
      
      public function get flatId() : int
      {
         return var_375;
      }
      
      public function get flatOwnerName() : String
      {
         return var_1983;
      }
      
      public function get reporterUserName() : String
      {
         return var_1985;
      }
   }
}
