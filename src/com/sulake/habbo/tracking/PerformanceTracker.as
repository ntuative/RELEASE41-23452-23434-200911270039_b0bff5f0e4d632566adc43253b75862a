package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1333:GarbageMonitor = null;
      
      private var var_1093:int = 0;
      
      private var var_1249:Boolean = false;
      
      private var var_1669:String = "";
      
      private var var_1334:String = "";
      
      private var var_319:Number = 0;
      
      private var var_1091:int = 10;
      
      private var var_2164:Array;
      
      private var var_582:int = 0;
      
      private var var_1092:int = 60;
      
      private var var_897:int = 0;
      
      private var var_898:int = 0;
      
      private var var_2067:String = "";
      
      private var var_1672:Number = 0;
      
      private var var_1089:int = 1000;
      
      private var var_1668:Boolean = true;
      
      private var var_1671:Number = 0.15;
      
      private var var_176:IHabboConfigurationManager = null;
      
      private var var_1670:String = "";
      
      private var var_1090:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2164 = [];
         super();
         var_1334 = Capabilities.version;
         var_1669 = Capabilities.os;
         var_1249 = Capabilities.isDebugger;
         var_1670 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1333 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1093 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1333.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1333.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_319;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1092 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1334;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_898;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1089)
         {
            ++var_897;
            _loc3_ = true;
         }
         else
         {
            ++var_582;
            if(var_582 <= 1)
            {
               var_319 = param1;
            }
            else
            {
               _loc4_ = Number(var_582);
               var_319 = var_319 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1093 > var_1092 * 1000 && var_1090 < var_1091)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_319);
            _loc5_ = true;
            if(var_1668 && var_1090 > 0)
            {
               _loc6_ = differenceInPercents(var_1672,var_319);
               if(_loc6_ < var_1671)
               {
                  _loc5_ = false;
               }
            }
            var_1093 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_1672 = var_319;
               if(sendReport())
               {
                  ++var_1090;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1091 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1089 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1670,var_1334,var_1669,var_2067,var_1249,_loc4_,_loc3_,var_898,var_319,var_897);
            _connection.send(_loc1_);
            var_898 = 0;
            var_319 = 0;
            var_582 = 0;
            var_897 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_176 = param1;
         var_1092 = int(var_176.getKey("performancetest.interval","60"));
         var_1089 = int(var_176.getKey("performancetest.slowupdatelimit","1000"));
         var_1091 = int(var_176.getKey("performancetest.reportlimit","10"));
         var_1671 = Number(var_176.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_1668 = Boolean(int(var_176.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
