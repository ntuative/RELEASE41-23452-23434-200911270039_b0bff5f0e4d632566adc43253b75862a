package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_936:Boolean;
      
      private var var_1125:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_936 = param1.readInteger() > 0;
         var_1125 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_936;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1125;
      }
      
      public function flush() : Boolean
      {
         var_936 = false;
         var_1125 = false;
         return true;
      }
   }
}
