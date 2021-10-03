package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1523:int;
      
      private var var_1528:int;
      
      private var var_1525:int;
      
      private var var_1600:int;
      
      private var _nutrition:int;
      
      private var var_1046:int;
      
      private var var_1599:int;
      
      private var var_1601:int;
      
      private var _energy:int;
      
      private var var_1524:int;
      
      private var var_1603:int;
      
      private var _ownerName:String;
      
      private var var_1527:int;
      
      public function PetInfo()
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
      
      public function set respect(param1:int) : void
      {
         var_1528 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1523 = param1;
      }
      
      public function get petId() : int
      {
         return var_1046;
      }
      
      public function get experienceMax() : int
      {
         return var_1601;
      }
      
      public function get nutritionMax() : int
      {
         return var_1600;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1599 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1527;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1046 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1603;
      }
      
      public function get respect() : int
      {
         return var_1528;
      }
      
      public function get levelMax() : int
      {
         return var_1599;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1601 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1525 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1600 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1527 = param1;
      }
      
      public function get experience() : int
      {
         return var_1525;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1603 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1524 = param1;
      }
      
      public function get age() : int
      {
         return var_1524;
      }
   }
}
