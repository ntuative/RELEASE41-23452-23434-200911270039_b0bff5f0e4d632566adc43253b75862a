package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDanceMessage extends RoomWidgetMessage
   {
      
      public static const const_574:String = "RWCM_MESSAGE_DANCE";
      
      public static const const_926:int = 0;
      
      public static const const_1252:Array = [2,3,4];
       
      
      private var var_87:int = 0;
      
      public function RoomWidgetDanceMessage(param1:int)
      {
         super(const_574);
         var_87 = param1;
      }
      
      public function get style() : int
      {
         return var_87;
      }
   }
}
