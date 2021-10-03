package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_375:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_326:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_770:int;
      
      private var var_262:Boolean;
      
      private var var_1532:Boolean;
      
      private var var_1386:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_770 = param2;
         var_1532 = param3;
         var_262 = param4;
         var_1386 = param5;
      }
      
      public function get position() : int
      {
         return var_770;
      }
      
      public function get isActive() : Boolean
      {
         return var_262;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1386;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_1532;
      }
   }
}
