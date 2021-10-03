package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_648:String;
      
      private var var_1828:int;
      
      private var var_1305:Boolean;
      
      private var _roomId:int;
      
      private var var_1829:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1305 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_648 = param1.readString();
         var_1829 = param1.readInteger();
         var_1828 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1305;
      }
      
      public function get roomName() : String
      {
         return var_648;
      }
      
      public function get enterMinute() : int
      {
         return var_1828;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1829;
      }
   }
}
