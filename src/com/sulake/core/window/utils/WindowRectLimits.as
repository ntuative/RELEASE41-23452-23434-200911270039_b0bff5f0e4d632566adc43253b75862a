package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_364:int = -2147483648;
      
      private var var_365:int = 2147483647;
      
      private var var_366:int = 2147483647;
      
      private var _target:IWindow;
      
      private var var_367:int = -2147483648;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         _target = param1;
      }
      
      public function get maxWidth() : int
      {
         return var_365;
      }
      
      public function get isEmpty() : Boolean
      {
         return var_367 == int.MIN_VALUE && var_365 == int.MAX_VALUE && var_364 == int.MIN_VALUE && var_366 == int.MAX_VALUE;
      }
      
      public function set maxWidth(param1:int) : void
      {
         var_365 = param1;
         if(var_365 < int.MAX_VALUE && true && _target.width > var_365)
         {
            _target.width = var_365;
         }
      }
      
      public function setEmpty() : void
      {
         var_367 = int.MIN_VALUE;
         var_365 = int.MAX_VALUE;
         var_364 = int.MIN_VALUE;
         var_366 = int.MAX_VALUE;
      }
      
      public function set maxHeight(param1:int) : void
      {
         var_366 = param1;
         if(var_366 < int.MAX_VALUE && true && _target.height > var_366)
         {
            _target.height = var_366;
         }
      }
      
      public function get minHeight() : int
      {
         return var_364;
      }
      
      public function get minWidth() : int
      {
         return var_367;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_367 = var_367;
         _loc2_.var_365 = var_365;
         _loc2_.var_364 = var_364;
         _loc2_.var_366 = var_366;
         return _loc2_;
      }
      
      public function set minWidth(param1:int) : void
      {
         var_367 = param1;
         if(var_367 > int.MIN_VALUE && true && _target.width < var_367)
         {
            _target.width = var_367;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         var_364 = param1;
         if(var_364 > int.MIN_VALUE && true && _target.height < var_364)
         {
            _target.height = var_364;
         }
      }
      
      public function get maxHeight() : int
      {
         return var_366;
      }
   }
}
