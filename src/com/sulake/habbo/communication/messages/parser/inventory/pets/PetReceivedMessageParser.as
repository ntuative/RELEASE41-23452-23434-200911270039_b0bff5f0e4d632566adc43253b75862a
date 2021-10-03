package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_975:PetData;
      
      private var var_1420:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1420 = param1.readBoolean();
         var_975 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1420 + ", " + var_975.id + ", " + var_975.name + ", " + pet.figure + ", " + var_975.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1420;
      }
      
      public function get pet() : PetData
      {
         return var_975;
      }
   }
}
