package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_1742:Number = 0;
      
      private var var_1739:Number = 0;
      
      private var var_1741:Number = 0;
      
      private var var_1740:Number = 0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1739 = param1;
         var_1741 = param2;
         var_1742 = param3;
         var_1740 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1739;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1742;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1741;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1740;
      }
   }
}
