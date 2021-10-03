package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1332:String;
      
      private var var_1636:int;
      
      private var var_1637:int;
      
      private var var_1635:int;
      
      private var var_1634:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1636 = param1.readInteger();
         var_1635 = param1.readInteger();
         var_1637 = param1.readInteger();
         var_1634 = param1.readString();
         var_1332 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1332;
      }
      
      public function get hour() : int
      {
         return var_1636;
      }
      
      public function get minute() : int
      {
         return var_1635;
      }
      
      public function get chatterName() : String
      {
         return var_1634;
      }
      
      public function get chatterId() : int
      {
         return var_1637;
      }
   }
}
