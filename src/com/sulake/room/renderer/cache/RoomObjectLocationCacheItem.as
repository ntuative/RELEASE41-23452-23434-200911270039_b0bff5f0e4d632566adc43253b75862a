package com.sulake.room.renderer.cache
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectLocationCacheItem
   {
       
      
      private var var_2047:int = -1;
      
      private var var_1275:int = -1;
      
      private var var_678:Vector3d = null;
      
      public function RoomObjectLocationCacheItem()
      {
         super();
         var_678 = new Vector3d();
      }
      
      public function get objectUpdateId() : int
      {
         return var_2047;
      }
      
      public function set objectUpdateId(param1:int) : void
      {
         var_2047 = param1;
      }
      
      public function set screenLoc(param1:IVector3d) : void
      {
         var_678.assign(param1);
         var_678.x = Math.round(var_678.x);
         var_678.y = Math.round(var_678.y);
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         var_1275 = param1;
      }
      
      public function get screenLoc() : IVector3d
      {
         return var_678;
      }
      
      public function get geometryUpdateId() : int
      {
         return var_1275;
      }
   }
}
