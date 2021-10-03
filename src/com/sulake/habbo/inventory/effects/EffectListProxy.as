package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDataProvider;
   
   public class EffectListProxy implements IThumbListDataProvider
   {
       
      
      private var var_462:int;
      
      private var var_90:EffectsModel;
      
      public function EffectListProxy(param1:EffectsModel, param2:int)
      {
         super();
         var_90 = param1;
         var_462 = param2;
      }
      
      public function getDrawableList() : Array
      {
         return var_90.getEffects(var_462);
      }
      
      public function dispose() : void
      {
         var_90 = null;
      }
   }
}
