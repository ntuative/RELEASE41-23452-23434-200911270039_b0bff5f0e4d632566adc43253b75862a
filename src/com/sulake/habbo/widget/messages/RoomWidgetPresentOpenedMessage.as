package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPresentOpenedMessage extends RoomWidgetMessage
   {
      
      public static const const_1099:String = "RWPOMD_PRESENT_OPENED";
       
      
      private var var_1239:int;
      
      private var var_1022:String;
      
      public function RoomWidgetPresentOpenedMessage(param1:String, param2:String, param3:int)
      {
         super(param1);
         var_1022 = param2;
         var_1239 = param3;
      }
      
      public function get classId() : int
      {
         return var_1239;
      }
      
      public function get itemType() : String
      {
         return var_1022;
      }
   }
}
