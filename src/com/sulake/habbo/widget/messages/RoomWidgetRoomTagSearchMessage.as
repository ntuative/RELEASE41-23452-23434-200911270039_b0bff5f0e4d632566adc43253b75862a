package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_666:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1549:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_666);
         var_1549 = param1;
      }
      
      public function get tag() : String
      {
         return var_1549;
      }
   }
}
