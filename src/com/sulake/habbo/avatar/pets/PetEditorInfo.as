package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1612:Boolean;
      
      private var var_1613:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1612 = Boolean(parseInt(param1.@club));
         var_1613 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1612;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1613;
      }
   }
}
