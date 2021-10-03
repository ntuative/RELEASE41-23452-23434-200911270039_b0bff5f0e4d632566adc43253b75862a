package com.sulake.habbo.room.events
{
   public class RoomEngineDimmerStateEvent extends RoomEngineEvent
   {
      
      public static const const_61:String = "REDSE_ROOM_COLOR";
       
      
      private var var_917:int;
      
      private var _color:uint;
      
      private var var_916:int;
      
      private var var_1633:int;
      
      private var _state:int;
      
      public function RoomEngineDimmerStateEvent(param1:int, param2:int, param3:int, param4:int, param5:int, param6:uint, param7:uint, param8:Boolean = false, param9:Boolean = false)
      {
         super(const_61,param1,param2,param8,param9);
         _state = param3;
         var_1633 = param4;
         var_917 = param5;
         _color = param6;
         var_916 = param7;
      }
      
      public function get brightness() : uint
      {
         return var_916;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectId() : int
      {
         return var_917;
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function get presetId() : int
      {
         return var_1633;
      }
   }
}
