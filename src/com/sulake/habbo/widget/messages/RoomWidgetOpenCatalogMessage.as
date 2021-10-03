package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_550:String = "RWOCM_CLUB_MAIN";
      
      public static const const_642:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1795:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_642);
         var_1795 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1795;
      }
   }
}
