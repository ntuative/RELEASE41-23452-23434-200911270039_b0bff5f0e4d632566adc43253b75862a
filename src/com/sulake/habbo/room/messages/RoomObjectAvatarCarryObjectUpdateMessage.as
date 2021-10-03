package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1022:int;
      
      private var var_1274:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_1022 = param1;
         var_1274 = param2;
      }
      
      public function get itemType() : int
      {
         return var_1022;
      }
      
      public function get itemName() : String
      {
         return var_1274;
      }
   }
}
