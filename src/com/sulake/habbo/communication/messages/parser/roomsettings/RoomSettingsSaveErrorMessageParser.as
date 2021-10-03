package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1379:int = 9;
      
      public static const const_1464:int = 4;
      
      public static const const_1534:int = 1;
      
      public static const const_1319:int = 10;
      
      public static const const_1458:int = 2;
      
      public static const const_1217:int = 7;
      
      public static const const_1179:int = 11;
      
      public static const const_1417:int = 3;
      
      public static const const_1130:int = 8;
      
      public static const const_1247:int = 5;
      
      public static const const_1527:int = 6;
      
      public static const const_1106:int = 12;
       
      
      private var var_2003:String;
      
      private var _roomId:int;
      
      private var var_1053:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_2003;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1053 = param1.readInteger();
         var_2003 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1053;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
