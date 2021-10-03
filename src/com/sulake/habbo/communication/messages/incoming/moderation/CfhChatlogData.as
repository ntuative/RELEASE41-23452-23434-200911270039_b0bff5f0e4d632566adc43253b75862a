package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_935:int;
      
      private var var_2051:int;
      
      private var var_1479:int;
      
      private var var_117:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1479 = param1.readInteger();
         var_2051 = param1.readInteger();
         var_935 = param1.readInteger();
         var_117 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1479);
      }
      
      public function get reportedUserId() : int
      {
         return var_935;
      }
      
      public function get callerUserId() : int
      {
         return var_2051;
      }
      
      public function get callId() : int
      {
         return var_1479;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_117;
      }
   }
}
