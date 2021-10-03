package com.sulake.habbo.communication.messages.incoming.room.session
{
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.room.session.CloseConnectionMessageParser;
   
   public class CloseConnectionMessageEvent extends MessageEvent
   {
       
      
      public function CloseConnectionMessageEvent(param1:Function)
      {
         super(param1,CloseConnectionMessageParser);
      }
      
      public function getParser() : CloseConnectionMessageParser
      {
         return var_21 as CloseConnectionMessageParser;
      }
   }
}
