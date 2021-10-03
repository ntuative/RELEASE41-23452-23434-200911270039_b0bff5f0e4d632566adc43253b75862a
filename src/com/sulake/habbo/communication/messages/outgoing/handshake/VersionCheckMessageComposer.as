package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1846:String;
      
      private var var_1130:String;
      
      private var var_1847:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1847 = param1;
         var_1130 = param2;
         var_1846 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1847,var_1130,var_1846];
      }
      
      public function dispose() : void
      {
      }
   }
}
