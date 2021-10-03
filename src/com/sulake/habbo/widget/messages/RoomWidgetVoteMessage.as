package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_109:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1110:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_109);
         var_1110 = param1;
      }
      
      public function get vote() : int
      {
         return var_1110;
      }
   }
}
