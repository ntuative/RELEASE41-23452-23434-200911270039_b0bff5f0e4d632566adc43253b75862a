package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1411:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1538:String = "ROE_MOUSE_ENTER";
      
      public static const const_466:String = "ROE_MOUSE_MOVE";
      
      public static const const_1509:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_193:String = "ROE_MOUSE_CLICK";
      
      public static const const_473:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1878:Boolean;
      
      private var var_1877:Boolean;
      
      private var var_1875:Boolean;
      
      private var var_1876:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1875 = param4;
         var_1876 = param5;
         var_1878 = param6;
         var_1877 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1877;
      }
      
      public function get altKey() : Boolean
      {
         return var_1875;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1876;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1878;
      }
   }
}
