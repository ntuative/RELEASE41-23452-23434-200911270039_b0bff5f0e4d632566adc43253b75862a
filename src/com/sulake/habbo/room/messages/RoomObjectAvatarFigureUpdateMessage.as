package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1597:String;
      
      private var var_500:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_500 = param1;
         var_1597 = param2;
      }
      
      public function get race() : String
      {
         return var_1597;
      }
      
      public function get figure() : String
      {
         return var_500;
      }
   }
}
