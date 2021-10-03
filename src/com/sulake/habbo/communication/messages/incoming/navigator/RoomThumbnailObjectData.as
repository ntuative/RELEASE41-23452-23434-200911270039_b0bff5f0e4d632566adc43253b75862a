package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1492:int;
      
      private var var_1493:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1492;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1492 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1492 = this.var_1492;
         _loc1_.var_1493 = this.var_1493;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1493 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1493;
      }
   }
}
