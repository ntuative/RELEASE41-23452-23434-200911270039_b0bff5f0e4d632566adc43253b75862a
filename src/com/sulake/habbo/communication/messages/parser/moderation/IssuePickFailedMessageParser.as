package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class IssuePickFailedMessageParser implements IMessageParser
   {
       
      
      private var var_1897:String;
      
      private var var_1899:int;
      
      private var var_1898:int;
      
      public function IssuePickFailedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1898 = param1.readInteger();
         var_1899 = param1.readInteger();
         var_1897 = param1.readString();
         return true;
      }
      
      public function get issueId() : int
      {
         return var_1898;
      }
      
      public function get pickerUserId() : int
      {
         return var_1899;
      }
      
      public function get pickerUserName() : String
      {
         return var_1897;
      }
   }
}
