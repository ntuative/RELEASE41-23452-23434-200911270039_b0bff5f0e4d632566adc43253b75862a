package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_897:int = 0;
      
      private var var_1249:int = 0;
      
      private var var_1669:String = "";
      
      private var var_898:int = 0;
      
      private var var_2067:String = "";
      
      private var var_2069:int = 0;
      
      private var var_1334:String = "";
      
      private var var_2070:int = 0;
      
      private var var_2068:int = 0;
      
      private var var_1670:String = "";
      
      private var var_2071:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_2070 = param1;
         var_1670 = param2;
         var_1334 = param3;
         var_1669 = param4;
         var_2067 = param5;
         if(param6)
         {
            var_1249 = 1;
         }
         else
         {
            var_1249 = 0;
         }
         var_2069 = param7;
         var_2068 = param8;
         var_898 = param9;
         var_2071 = param10;
         var_897 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2070,var_1670,var_1334,var_1669,var_2067,var_1249,var_2069,var_2068,var_898,var_2071,var_897];
      }
      
      public function dispose() : void
      {
      }
   }
}
