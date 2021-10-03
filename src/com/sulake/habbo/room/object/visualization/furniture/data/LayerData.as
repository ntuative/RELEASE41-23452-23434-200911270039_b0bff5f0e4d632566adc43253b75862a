package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_367:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_522:int = 0;
      
      public static const const_947:int = 2;
      
      public static const const_789:int = 1;
      
      public static const const_671:Boolean = false;
      
      public static const const_637:String = "";
      
      public static const const_372:int = 0;
      
      public static const const_417:int = 0;
      
      public static const const_461:int = 0;
       
      
      private var var_2082:int = 0;
      
      private var var_1549:String = "";
      
      private var var_1431:int = 0;
      
      private var var_2080:int = 0;
      
      private var var_2081:Number = 0;
      
      private var var_1638:int = 255;
      
      private var var_2079:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_2082;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1431 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_2081;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_2080 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_2082 = param1;
      }
      
      public function get tag() : String
      {
         return var_1549;
      }
      
      public function get alpha() : int
      {
         return var_1638;
      }
      
      public function get ink() : int
      {
         return var_1431;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_2081 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_2080;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_2079 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_2079;
      }
      
      public function set tag(param1:String) : void
      {
         var_1549 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1638 = param1;
      }
   }
}
