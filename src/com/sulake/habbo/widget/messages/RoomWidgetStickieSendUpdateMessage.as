package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_374:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_579:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_632:String;
      
      private var var_154:int;
      
      private var var_194:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_154 = param2;
         var_194 = param3;
         var_632 = param4;
      }
      
      public function get objectId() : int
      {
         return var_154;
      }
      
      public function get text() : String
      {
         return var_194;
      }
      
      public function get colorHex() : String
      {
         return var_632;
      }
   }
}
