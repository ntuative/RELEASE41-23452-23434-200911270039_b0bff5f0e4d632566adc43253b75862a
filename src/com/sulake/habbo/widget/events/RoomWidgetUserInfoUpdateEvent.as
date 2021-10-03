package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_215:String = "RWUIUE_PEER";
      
      public static const const_194:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1307:String = "BOT";
      
      public static const const_793:int = 2;
      
      public static const const_1126:int = 0;
      
      public static const const_961:int = 3;
       
      
      private var var_1180:String = "";
      
      private var var_1583:Boolean = false;
      
      private var var_1581:int = 0;
      
      private var var_1579:int = 0;
      
      private var var_1571:Boolean = false;
      
      private var var_1182:String = "";
      
      private var var_1570:Boolean = false;
      
      private var _respectLeft:int = 0;
      
      private var var_1572:Boolean = true;
      
      private var var_976:int = 0;
      
      private var var_1578:Boolean = false;
      
      private var var_1228:Boolean = false;
      
      private var var_1576:Boolean = false;
      
      private var var_1580:int = 0;
      
      private var var_1574:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_248:Array;
      
      private var var_1226:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1573:int = 0;
      
      private var var_1575:Boolean = false;
      
      private var var_1582:int = 0;
      
      private var var_1577:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_248 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1579;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1579 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1583;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1572;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1572 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1570 = param1;
      }
      
      public function get motto() : String
      {
         return var_1180;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1578 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1228;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1180 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1575;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1577;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1228 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1574;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1580 = param1;
      }
      
      public function get badges() : Array
      {
         return var_248;
      }
      
      public function get amIController() : Boolean
      {
         return var_1571;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1571 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1575 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1582 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1577 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1182 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1570;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1578;
      }
      
      public function get carryItem() : int
      {
         return var_1580;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1226;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1226 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         _respectLeft = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1582;
      }
      
      public function get realName() : String
      {
         return var_1182;
      }
      
      public function set webID(param1:int) : void
      {
         var_1573 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_248 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1576 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1574 = param1;
      }
      
      public function get respectLeft() : int
      {
         return _respectLeft;
      }
      
      public function get webID() : int
      {
         return var_1573;
      }
      
      public function set groupId(param1:int) : void
      {
         var_976 = param1;
      }
      
      public function get xp() : int
      {
         return var_1581;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1583 = param1;
      }
      
      public function get groupId() : int
      {
         return var_976;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1576;
      }
      
      public function set xp(param1:int) : void
      {
         var_1581 = param1;
      }
   }
}
