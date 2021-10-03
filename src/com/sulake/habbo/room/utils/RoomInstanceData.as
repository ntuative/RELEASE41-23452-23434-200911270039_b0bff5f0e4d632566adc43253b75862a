package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_754:LegacyWallGeometry = null;
      
      private var var_525:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_524:TileHeightMap = null;
      
      private var var_1748:String = null;
      
      private var _roomId:int = 0;
      
      private var var_753:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_754 = new LegacyWallGeometry();
         var_753 = new RoomCamera();
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_524 != null)
         {
            var_524.dispose();
         }
         var_524 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1748 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_754;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_753;
      }
      
      public function dispose() : void
      {
         if(var_524 != null)
         {
            var_524.dispose();
            var_524 = null;
         }
         if(var_754 != null)
         {
            var_754.dispose();
            var_754 = null;
         }
         if(var_753 != null)
         {
            var_753.dispose();
            var_753 = null;
         }
         if(var_525 != null)
         {
            var_525.dispose();
            var_525 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_524;
      }
      
      public function get worldType() : String
      {
         return var_1748;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_525 != null)
         {
            var_525.dispose();
         }
         var_525 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_525;
      }
   }
}
