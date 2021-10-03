package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1877:Boolean = false;
      
      private var var_1875:Boolean = false;
      
      private var var_1975:String = "";
      
      private var _type:String = "";
      
      private var var_1878:Boolean = false;
      
      private var var_2009:Number = 0;
      
      private var var_2011:Number = 0;
      
      private var var_2008:Number = 0;
      
      private var var_2010:String = "";
      
      private var var_2012:Number = 0;
      
      private var var_1876:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_2010 = param2;
         var_1975 = param3;
         var_2011 = param4;
         var_2008 = param5;
         var_2009 = param6;
         var_2012 = param7;
         var_1876 = param8;
         var_1875 = param9;
         var_1878 = param10;
         var_1877 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1876;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1877;
      }
      
      public function get localX() : Number
      {
         return var_2009;
      }
      
      public function get localY() : Number
      {
         return var_2012;
      }
      
      public function get canvasId() : String
      {
         return var_2010;
      }
      
      public function get altKey() : Boolean
      {
         return var_1875;
      }
      
      public function get spriteTag() : String
      {
         return var_1975;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_2011;
      }
      
      public function get screenY() : Number
      {
         return var_2008;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1878;
      }
   }
}
