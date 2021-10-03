package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1681:int;
      
      private var var_1964:int = 0;
      
      private var var_1961:String;
      
      private var var_1962:int;
      
      private var var_1963:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1681 = param1;
         var_1962 = param2;
         var_1963 = param3;
         var_1961 = param4;
      }
      
      public function get length() : int
      {
         return var_1962;
      }
      
      public function get name() : String
      {
         return var_1963;
      }
      
      public function get creator() : String
      {
         return var_1961;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1964;
      }
      
      public function get id() : int
      {
         return var_1681;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1964 = param1;
      }
   }
}
