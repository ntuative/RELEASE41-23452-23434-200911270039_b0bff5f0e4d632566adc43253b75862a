package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2093:int;
      
      private var var_1263:String;
      
      private var var_2095:int;
      
      private var var_2096:int;
      
      private var var_2092:int;
      
      private var var_2094:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1263;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2094;
      }
      
      public function get responseType() : int
      {
         return var_2096;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2095;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1263 = param1.readString();
         var_2095 = param1.readInteger();
         var_2093 = param1.readInteger();
         var_2092 = param1.readInteger();
         var_2096 = param1.readInteger();
         var_2094 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_2093;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2092;
      }
   }
}
