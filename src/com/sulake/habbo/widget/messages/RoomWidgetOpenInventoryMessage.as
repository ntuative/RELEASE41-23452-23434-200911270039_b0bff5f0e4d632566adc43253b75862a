package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_829:String = "inventory_badges";
      
      public static const const_1287:String = "inventory_clothes";
      
      public static const const_1270:String = "inventory_furniture";
      
      public static const const_514:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_954:String = "inventory_effects";
       
      
      private var var_1618:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_514);
         var_1618 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1618;
      }
   }
}
