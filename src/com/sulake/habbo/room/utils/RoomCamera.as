package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_338:Number = 0.5;
      
      private static const const_752:int = 3;
      
      private static const const_1073:Number = 1;
       
      
      private var var_1907:Boolean = false;
      
      private var var_1902:int = -2;
      
      private var _limitedLocX:Boolean = false;
      
      private var var_1905:Boolean = false;
      
      private var var_1901:Boolean = false;
      
      private var var_1906:int = -1;
      
      private var var_966:int = 0;
      
      private var var_257:Vector3d = null;
      
      private var var_389:Vector3d = null;
      
      private var var_1903:int = 0;
      
      private var var_1904:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function dispose() : void
      {
         var_389 = null;
         var_257 = null;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1907 = param1;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return _limitedLocX;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1905;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_389 != null && var_257 != null)
         {
            ++var_966;
            _loc2_ = Vector3d.dif(var_389,var_257);
            if(_loc2_.length <= const_338)
            {
               var_257 = var_389;
               var_389 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_338 * (const_752 + 1))
               {
                  _loc2_.mul(const_338);
               }
               else if(var_966 <= const_752)
               {
                  _loc2_.mul(const_338);
               }
               else
               {
                  _loc2_.mul(const_1073);
               }
               var_257 = Vector3d.sum(var_257,_loc2_);
            }
         }
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         _limitedLocX = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1903;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1901 = param1;
      }
      
      public function get targetId() : int
      {
         return var_1906;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1902 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_389 == null)
         {
            var_389 = new Vector3d();
         }
         var_389.assign(param1);
         var_966 = 0;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1905 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_257 != null)
         {
            return;
         }
         var_257 = new Vector3d();
         var_257.assign(param1);
      }
      
      public function get screenHt() : int
      {
         return var_1904;
      }
      
      public function get targetCategory() : int
      {
         return var_1902;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1903 = param1;
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1907;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1901;
      }
      
      public function get location() : IVector3d
      {
         return var_257;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1906 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1904 = param1;
      }
   }
}
