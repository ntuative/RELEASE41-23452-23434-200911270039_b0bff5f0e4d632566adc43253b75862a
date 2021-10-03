package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PublicSpaceCastLibsMessageParser implements IMessageParser
   {
       
      
      private var var_1774:int;
      
      private var var_1775:String;
      
      private var var_1197:int;
      
      public function PublicSpaceCastLibsMessageParser()
      {
         super();
      }
      
      public function get unitPort() : int
      {
         return var_1774;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get castLibs() : String
      {
         return var_1775;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1197 = param1.readInteger();
         this.var_1775 = param1.readString();
         this.var_1774 = param1.readInteger();
         return true;
      }
      
      public function get nodeId() : int
      {
         return var_1197;
      }
   }
}
