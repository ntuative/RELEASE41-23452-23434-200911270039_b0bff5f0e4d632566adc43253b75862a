package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1501:int = -1;
      
      private var var_1278:Boolean;
      
      private var var_1279:String;
      
      private var var_2131:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_2131 = String(param1["set-type"]);
         var_1279 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1278 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1501 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1279;
      }
      
      public function get staticId() : int
      {
         return var_1501;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1501 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1278;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1278 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1279 = param1;
      }
      
      public function get setType() : String
      {
         return var_2131;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
