package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1247:int;
      
      private var var_998:String;
      
      private var var_624:Array;
      
      private var var_924:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_624.slice();
      }
      
      public function flush() : Boolean
      {
         var_998 = "";
         var_924 = [];
         var_624 = [];
         var_1247 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1247;
      }
      
      public function get question() : String
      {
         return var_998;
      }
      
      public function get choices() : Array
      {
         return var_924.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_998 = param1.readString();
         var_924 = [];
         var_624 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_924.push(param1.readString());
            var_624.push(param1.readInteger());
            _loc3_++;
         }
         var_1247 = param1.readInteger();
         return true;
      }
   }
}
