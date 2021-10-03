package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_221:uint = 1;
      
      public static const const_363:uint = 0;
      
      public static const const_938:uint = 8;
      
      public static const const_249:uint = 4;
      
      public static const const_438:uint = 2;
       
      
      private var var_402:uint;
      
      private var var_2083:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_2084:uint;
      
      private var var_103:Rectangle;
      
      private var var_576:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_103 = param3;
         _color = param4;
         var_402 = param5;
         var_2083 = param6;
         var_2084 = param7;
         var_576 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_2083;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_402;
      }
      
      public function get scaleV() : uint
      {
         return var_2084;
      }
      
      public function get tags() : Array
      {
         return var_576;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_103 = null;
         var_576 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_103;
      }
   }
}
