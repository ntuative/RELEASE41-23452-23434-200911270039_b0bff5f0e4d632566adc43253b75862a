package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_655:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_1540:BitmapData;
      
      private var var_1541:String;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_655,param3,param4);
         var_1541 = param1;
         var_1540 = param2;
      }
      
      public function get badgeImage() : BitmapData
      {
         return var_1540;
      }
      
      public function get badgeID() : String
      {
         return var_1541;
      }
   }
}
