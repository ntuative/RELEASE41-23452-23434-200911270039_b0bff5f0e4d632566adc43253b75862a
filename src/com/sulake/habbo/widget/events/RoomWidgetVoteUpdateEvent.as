package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_106:String = "RWPUE_VOTE_RESULT";
      
      public static const const_124:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1247:int;
      
      private var var_998:String;
      
      private var var_624:Array;
      
      private var var_924:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_998 = param2;
         var_924 = param3;
         var_624 = param4;
         if(var_624 == null)
         {
            var_624 = [];
         }
         var_1247 = param5;
      }
      
      public function get votes() : Array
      {
         return var_624.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1247;
      }
      
      public function get question() : String
      {
         return var_998;
      }
      
      public function get choices() : Array
      {
         return var_924.slice();
      }
   }
}
