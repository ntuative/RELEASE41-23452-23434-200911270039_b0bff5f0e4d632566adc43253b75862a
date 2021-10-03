package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_2103:int;
      
      private var var_2102:String;
      
      private var var_1415:IActionDefinition;
      
      private var var_2105:Boolean;
      
      private var _color:IPartColor;
      
      private var var_2104:String;
      
      private var var_2106:String;
      
      private var var_1585:Boolean;
      
      private var var_2101:ColorTransform;
      
      private var var_1841:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_2102 = param1;
         var_2104 = param2;
         var_2103 = param3;
         _color = param4;
         _frames = param5;
         var_1415 = param6;
         var_1585 = param7;
         var_1841 = param8;
         var_2106 = param9;
         var_2105 = param10;
         var_2101 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1585;
      }
      
      public function get partType() : String
      {
         return var_2104;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1841;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_2105;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_2103;
      }
      
      public function get flippedPartType() : String
      {
         return var_2106;
      }
      
      public function get bodyPartId() : String
      {
         return var_2102;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1415;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_2101;
      }
   }
}
