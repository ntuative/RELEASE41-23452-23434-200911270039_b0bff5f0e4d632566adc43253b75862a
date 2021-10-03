package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1523:int;
      
      private var var_1525:int;
      
      private var var_1600:int;
      
      private var _type:int;
      
      private var var_1046:int = -1;
      
      private var var_1599:int;
      
      private var _nutrition:int;
      
      private var var_1601:int;
      
      private var _energy:int;
      
      private var var_1597:int;
      
      private var var_1603:int;
      
      private var var_1602:int;
      
      private var var_1524:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1598:Boolean;
      
      private var _name:String = "";
      
      private var var_1527:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1598;
      }
      
      public function get level() : int
      {
         return var_1523;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1601;
      }
      
      public function get id() : int
      {
         return var_1046;
      }
      
      public function get nutritionMax() : int
      {
         return var_1600;
      }
      
      public function get ownerId() : int
      {
         return var_1527;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1046 = param1.id;
         _type = param1.petType;
         var_1597 = param1.petRace;
         _image = param1.image;
         var_1598 = param1.isOwnPet;
         var_1527 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1523 = param1.level;
         var_1599 = param1.levelMax;
         var_1525 = param1.experience;
         var_1601 = param1.experienceMax;
         _energy = param1.energy;
         var_1603 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_1600 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_1602 = param1.roomIndex;
         var_1524 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_1602;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_1603;
      }
      
      public function get levelMax() : int
      {
         return var_1599;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_1597;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1525;
      }
      
      public function get age() : int
      {
         return var_1524;
      }
   }
}
