package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_978:String = "select_outfit";
       
      
      private var var_2075:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_978);
         var_2075 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2075;
      }
   }
}
