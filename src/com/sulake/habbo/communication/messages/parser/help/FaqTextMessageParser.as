package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FaqTextMessageParser implements IMessageParser
   {
       
      
      private var var_1060:int;
      
      private var var_1061:String;
      
      public function FaqTextMessageParser()
      {
         super();
      }
      
      public function get questionId() : int
      {
         return var_1060;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1060 = param1.readInteger();
         var_1061 = param1.readString();
         return true;
      }
      
      public function get answerText() : String
      {
         return var_1061;
      }
      
      public function flush() : Boolean
      {
         var_1060 = -1;
         var_1061 = null;
         return true;
      }
   }
}
