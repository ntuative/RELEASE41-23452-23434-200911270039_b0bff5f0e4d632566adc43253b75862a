package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_988:Boolean;
      
      private var var_987:Boolean;
      
      private var var_989:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_988;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_987;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_989 = param1.readBoolean();
         var_987 = param1.readBoolean();
         var_988 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_989;
      }
      
      public function flush() : Boolean
      {
         var_989 = false;
         var_987 = false;
         var_988 = false;
         return true;
      }
   }
}
