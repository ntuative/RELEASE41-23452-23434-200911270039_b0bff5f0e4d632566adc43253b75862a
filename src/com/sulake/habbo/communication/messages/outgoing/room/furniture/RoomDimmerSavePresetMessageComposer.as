package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1666:int;
      
      private var var_1665:int;
      
      private var var_1822:Boolean;
      
      private var var_1820:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1821:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1665 = param1;
         var_1666 = param2;
         var_1820 = param3;
         var_1821 = param4;
         var_1822 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1665,var_1666,var_1820,var_1821,int(var_1822)];
      }
      
      public function dispose() : void
      {
      }
   }
}
