package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1042:int = 31;
      
      private static const const_1041:int = 32;
      
      private static const const_479:int = 30;
      
      private static const const_732:int = 20;
      
      private static const const_478:int = 10;
       
      
      private var var_507:Boolean = false;
      
      private var var_217:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_217 = new Array();
         super();
         super.setAnimation(const_479);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_507 = true;
            var_217 = new Array();
            var_217.push(const_1042);
            var_217.push(const_1041);
            return;
         }
         if(param1 > 0 && param1 <= const_478)
         {
            if(var_507)
            {
               var_507 = false;
               var_217 = new Array();
               if(_direction == 2)
               {
                  var_217.push(const_732 + 5 - param1);
                  var_217.push(const_478 + 5 - param1);
               }
               else
               {
                  var_217.push(const_732 + param1);
                  var_217.push(const_478 + param1);
               }
               var_217.push(const_479);
               return;
            }
            super.setAnimation(const_479);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
