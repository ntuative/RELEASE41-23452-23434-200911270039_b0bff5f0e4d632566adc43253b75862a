package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1823:String;
      
      private var var_743:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1823 = param1;
         var_743 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1823;
      }
      
      public function get parameter() : String
      {
         return var_743;
      }
   }
}
