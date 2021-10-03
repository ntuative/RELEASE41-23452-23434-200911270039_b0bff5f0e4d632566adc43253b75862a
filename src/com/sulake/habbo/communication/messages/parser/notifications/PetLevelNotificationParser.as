package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_500:String;
      
      private var var_1523:int;
      
      private var var_1643:String;
      
      private var var_872:int;
      
      private var var_1046:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1046;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1046 = param1.readInteger();
         var_1643 = param1.readString();
         var_1523 = param1.readInteger();
         var_500 = param1.readString();
         var_872 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1643;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_500;
      }
      
      public function get petType() : int
      {
         return var_872;
      }
      
      public function get level() : int
      {
         return var_1523;
      }
   }
}
