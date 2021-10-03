package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_996:int = 1;
      
      private static const const_1041:int = 3;
      
      private static const const_998:int = 2;
      
      private static const const_997:int = 15;
       
      
      private var var_710:int;
      
      private var var_217:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_217 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_998)
         {
            var_217 = new Array();
            var_217.push(const_996);
            var_710 = const_997;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_710 > 0)
         {
            --var_710;
         }
         if(var_710 == 0)
         {
            if(false)
            {
               super.setAnimation(var_217.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
