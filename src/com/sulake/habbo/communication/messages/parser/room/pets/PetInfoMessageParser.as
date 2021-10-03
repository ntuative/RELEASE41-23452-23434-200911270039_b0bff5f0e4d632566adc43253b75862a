package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1524:int;
      
      private var var_500:String;
      
      private var var_1523:int;
      
      private var var_1528:int;
      
      private var var_1525:int;
      
      private var var_1529:int;
      
      private var _nutrition:int;
      
      private var var_1046:int;
      
      private var var_1531:int;
      
      private var var_1530:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1527:int;
      
      private var var_1526:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1523;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_1529;
      }
      
      public function flush() : Boolean
      {
         var_1046 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_1531;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_1530;
      }
      
      public function get maxNutrition() : int
      {
         return var_1526;
      }
      
      public function get figure() : String
      {
         return var_500;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1528;
      }
      
      public function get petId() : int
      {
         return var_1046;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1046 = param1.readInteger();
         _name = param1.readString();
         var_1523 = param1.readInteger();
         var_1531 = param1.readInteger();
         var_1525 = param1.readInteger();
         var_1530 = param1.readInteger();
         _energy = param1.readInteger();
         var_1529 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_1526 = param1.readInteger();
         var_500 = param1.readString();
         var_1528 = param1.readInteger();
         var_1527 = param1.readInteger();
         var_1524 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1525;
      }
      
      public function get ownerId() : int
      {
         return var_1527;
      }
      
      public function get age() : int
      {
         return var_1524;
      }
   }
}
