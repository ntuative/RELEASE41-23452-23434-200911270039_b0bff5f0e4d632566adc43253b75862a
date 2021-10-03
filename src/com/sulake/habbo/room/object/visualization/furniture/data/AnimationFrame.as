package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_622:int = -1;
      
      public static const const_819:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_1952:int = -1;
      
      private var var_89:int = 0;
      
      private var var_1199:int = 1;
      
      private var var_807:int = 1;
      
      private var var_1951:Boolean = false;
      
      private var var_1953:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_89 = param2;
         _y = param3;
         var_1951 = param5;
         if(param4 < 0)
         {
            param4 = const_622;
         }
         var_807 = param4;
         var_1199 = param4;
         if(param6 >= 0)
         {
            var_1952 = param6;
            var_1953 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_807 > 0 && param1 > var_807)
         {
            param1 = var_807;
         }
         var_1199 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_807;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_1953;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_807 < 0)
         {
            return const_622;
         }
         return var_1199;
      }
      
      public function get activeSequence() : int
      {
         return var_1952;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_1951;
      }
      
      public function get x() : int
      {
         return var_89;
      }
   }
}
