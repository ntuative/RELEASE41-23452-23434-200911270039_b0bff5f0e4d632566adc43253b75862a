package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1866:Date;
      
      private var var_1163:Boolean = false;
      
      private var _type:int;
      
      private var var_351:BitmapData;
      
      private var var_262:Boolean = false;
      
      private var var_1195:int;
      
      private var var_534:int = 1;
      
      private var var_955:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_351;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_534;
         if(var_534 < 0)
         {
            var_534 = 0;
         }
         var_955 = var_1195;
         var_262 = false;
         var_1163 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_955 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_262;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_351 = param1;
      }
      
      public function get duration() : int
      {
         return var_1195;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1163;
      }
      
      public function get effectsInInventory() : int
      {
         return var_534;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_351;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_262)
         {
            var_1866 = new Date();
         }
         var_262 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_534 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_262)
         {
            _loc1_ = var_955 - (new Date().valueOf() - var_1866.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_955;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1163 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1195 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
