package com.sulake.habbo.widget.events
{
   public class RoomWidgetAvatarEditorUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_861:String = "RWAEUE_HIDE_CLUB_PROMO";
      
      public static const const_710:String = "RWUE_AVATAR_EDITOR_CLOSED";
      
      public static const const_1186:String = "RWAEUE_MODE_TRIAL";
      
      public static const const_960:String = "RWAEUE_MODE_FULL";
      
      public static const const_341:String = "RWAEUE_SHOW_CLUB_PROMO";
       
      
      private var var_1660:String;
      
      private var var_1659:String;
      
      public function RoomWidgetAvatarEditorUpdateEvent(param1:String, param2:String = "", param3:String = "RWAEUE_MODE_FULL", param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         var_1660 = param2;
         var_1659 = param3;
      }
      
      public function get promoMode() : String
      {
         return var_1659;
      }
      
      public function get promoImageUrl() : String
      {
         return var_1660;
      }
   }
}
