package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1054:int;
      
      private var var_1053:int;
      
      private var var_1055:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1054;
      }
      
      public function flush() : Boolean
      {
         var_1053 = 0;
         var_1054 = 0;
         var_1055 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1053;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1054 = param1.readInteger();
         var_1053 = param1.readInteger();
         var_1055 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1055;
      }
   }
}
