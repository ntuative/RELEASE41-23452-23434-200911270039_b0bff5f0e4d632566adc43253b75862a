package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_688:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1666:int;
      
      private var var_1665:int;
      
      private var var_1667:Boolean;
      
      private var var_916:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_688);
         var_1665 = param1;
         var_1666 = param2;
         _color = param3;
         var_916 = param4;
         var_1667 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1666;
      }
      
      public function get presetNumber() : int
      {
         return var_1665;
      }
      
      public function get brightness() : int
      {
         return var_916;
      }
      
      public function get apply() : Boolean
      {
         return var_1667;
      }
   }
}
