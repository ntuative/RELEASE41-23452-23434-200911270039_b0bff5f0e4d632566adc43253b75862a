package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_182:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2032:Boolean = false;
      
      private var var_2035:int = 0;
      
      private var var_2033:int = 0;
      
      private var var_2034:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_182,param5,param6);
         var_2034 = param1;
         var_2033 = param2;
         var_2035 = param3;
         var_2032 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_2035;
      }
      
      public function get periodsLeft() : int
      {
         return var_2033;
      }
      
      public function get daysLeft() : int
      {
         return var_2034;
      }
      
      public function get method_12() : Boolean
      {
         return var_2032;
      }
   }
}
