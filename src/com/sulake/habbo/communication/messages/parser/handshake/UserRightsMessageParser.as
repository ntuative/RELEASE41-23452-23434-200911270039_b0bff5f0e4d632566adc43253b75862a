package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserRightsMessageParser implements IMessageParser
   {
       
      
      protected var var_641:Array = null;
      
      public function UserRightsMessageParser()
      {
         super();
         var_641 = [];
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_641 = [];
         var _loc2_:String = param1.readString();
         while(_loc2_ != "" && _loc2_ != null)
         {
            var_641.push(_loc2_);
            _loc2_ = param1.readString();
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get rights() : Array
      {
         return var_641.slice();
      }
   }
}