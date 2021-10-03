package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1528:int;
      
      private var var_1138:PetData;
      
      private var var_1885:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1528;
      }
      
      public function get petData() : PetData
      {
         return var_1138;
      }
      
      public function flush() : Boolean
      {
         var_1138 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_1885;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1528 = param1.readInteger();
         var_1885 = param1.readInteger();
         var_1138 = new PetData(param1);
         return true;
      }
   }
}
