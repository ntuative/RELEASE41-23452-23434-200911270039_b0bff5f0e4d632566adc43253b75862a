package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_444:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_437:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_74:String = "RWPDUE_CONTENTS";
      
      public static const const_391:String = "RWPDUE_CONTENTS_WALLPAPER";
      
      public static const const_470:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_59:String = "RWPDUE_PACKAGEINFO";
       
      
      private var var_194:String;
      
      private var var_2053:BitmapData;
      
      private var var_154:int = -1;
      
      private var _controller:Boolean;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_154 = param2;
         var_194 = param3;
         _controller = param4;
         var_2053 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_2053;
      }
      
      public function get text() : String
      {
         return var_194;
      }
      
      public function get objectId() : int
      {
         return var_154;
      }
      
      public function get controller() : Boolean
      {
         return _controller;
      }
   }
}
