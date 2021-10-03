package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_228:String = "RWFAM_MOVE";
      
      public static const const_506:String = "RWFUAM_ROTATE";
      
      public static const const_586:String = "RWFAM_PICKUP";
       
      
      private var var_1778:int = 0;
      
      private var var_1777:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1778 = param2;
         var_1777 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1778;
      }
      
      public function get furniCategory() : int
      {
         return var_1777;
      }
   }
}
