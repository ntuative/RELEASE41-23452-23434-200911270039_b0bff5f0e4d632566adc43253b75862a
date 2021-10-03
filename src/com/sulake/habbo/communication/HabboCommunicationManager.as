package com.sulake.habbo.communication
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.ICoreCommunicationManager;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.connection.IConnectionStateListener;
   import com.sulake.core.communication.enum.ConnectionType;
   import com.sulake.core.communication.messages.IMessageConfiguration;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.protocol.IProtocol;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.CoreComponent;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.ErrorReportStorage;
   import com.sulake.habbo.communication.enum.HabboConnectionType;
   import com.sulake.habbo.communication.enum.HabboProtocolType;
   import com.sulake.habbo.communication.protocol.WedgieProtocol;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.configuration.enum.HabboConfigurationEvent;
   import com.sulake.habbo.tracking.HabboErrorVariableEnum;
   import com.sulake.iid.IIDCoreCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HabboCommunicationManager extends Component implements IHabboCommunicationManager, IConnectionStateListener
   {
       
      
      private var var_663:int = 0;
      
      private var var_46:String = "";
      
      private var var_363:int = -1;
      
      private var var_190:Array;
      
      private var var_1073:Timer;
      
      private var var_1622:Boolean = false;
      
      private var var_593:ICoreCommunicationManager;
      
      private var _habboConfiguration:IHabboConfigurationManager;
      
      private var var_900:IMessageConfiguration;
      
      private var _connection:IConnection;
      
      public function HabboCommunicationManager(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_900 = new HabboMessages();
         var_190 = [];
         var_1073 = new Timer(100,1);
         super(param1,param2,param3);
         this.queueInterface(new IIDCoreCommunicationManager(),onCoreCommunicationManagerInit);
         this.queueInterface(new IIDHabboConfigurationManager(),onHabboConfigurationInit);
      }
      
      public function get port() : int
      {
         if(var_363 < 0 || var_363 >= var_190.length)
         {
            return 0;
         }
         return var_190[var_363];
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] IO Error: " + param1.text);
         switch(param1.type)
         {
            case IOErrorEvent.IO_ERROR:
               break;
            case IOErrorEvent.DISK_ERROR:
               break;
            case IOErrorEvent.NETWORK_ERROR:
               break;
            case IOErrorEvent.VERIFY_ERROR:
         }
         ErrorReportStorage.addDebugData("Communication IO Error","IOError " + param1.type + " on connect: " + param1.text + ". Port was " + var_190[var_363]);
         tryNextPort();
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         Logger.log("[HabboCommunicationManager] Security Error: " + param1.text);
         ErrorReportStorage.addDebugData("Communication Security Error","SecurityError on connect: " + param1.text + ". Port was " + var_190[var_363]);
         tryNextPort();
      }
      
      private function onConfigurationReady(param1:Event = null) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         Logger.log("Habbo Communication Manager: init based on configuration: " + _habboConfiguration);
         if(_habboConfiguration != null)
         {
            ErrorReportStorage.addDebugData("CommunicationConfigReady","Configuration Exists");
            var_190 = [];
            var_46 = _habboConfiguration.getKey("connection.info.host","fused37-public-proxy-1.hotel.varoke.net");
            _loc2_ = _habboConfiguration.getKey("connection.info.port","25001");
            _loc3_ = _loc2_.split(",");
            for each(_loc4_ in _loc3_)
            {
               var_190.push(parseInt(_loc4_.replace(" ","")));
            }
            ErrorReportStorage.addDebugData("CommunicationConfigReady","Host: " + var_46);
            Logger.log("Connection Host: " + var_46);
            Logger.log("Connection Ports: " + var_190);
            Logger.log("Habbo Connection Info:" + _connection);
         }
         else
         {
            ErrorReportStorage.addDebugData("CommunicationConfigReady","Configuration Missing!");
         }
      }
      
      public function set mode(param1:int) : void
      {
         var_663 = param1;
      }
      
      private function onTryNextPort(param1:TimerEvent) : void
      {
         var_1073.stop();
         nextPort();
      }
      
      private function nextPort() : void
      {
         var _loc1_:* = null;
         ++var_363;
         if(var_363 >= var_190.length)
         {
            if(var_1622)
            {
               return;
            }
            var_1622 = true;
            _loc1_ = this.context as CoreComponent;
            if(_loc1_ != null)
            {
               _loc1_.error("Connection failed to host " + var_46 + " ports " + var_190,true,CoreComponent.const_1105);
               return;
            }
            throw new Error("Connection failed to host " + var_46 + " ports " + var_190);
         }
         if(var_363 < var_190.length)
         {
            _connection.init(var_46,var_190[var_363]);
         }
      }
      
      public function initConnection(param1:String) : void
      {
         ErrorReportStorage.addDebugData("CommunicationInitConnection","Called");
         switch(param1)
         {
            case HabboConnectionType.const_259:
               if(_habboConfiguration == null)
               {
                  Logger.log("Configuration not ready");
                  ErrorReportStorage.addDebugData("Configuration not ready","Configuration not ready");
                  return;
               }
               if(_connection == null)
               {
                  Logger.log("Connection not ready");
                  ErrorReportStorage.addDebugData("Connection not ready","Connection not ready");
                  return;
               }
               nextPort();
               break;
            default:
               Logger.log("Unknown Habbo Connection Type: " + param1);
         }
      }
      
      public function messageReceived(param1:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1168,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1233,param1);
      }
      
      public function get mode() : int
      {
         return var_663;
      }
      
      private function onCoreCommunicationManagerInit(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:* = null;
         Logger.log("Habbo Communication Manager: Core Communication Manager found:: " + [param1,param2]);
         if(param2 != null)
         {
            var_593 = param2 as ICoreCommunicationManager;
            var_593.connectionStateListener = this;
            var_593.registerProtocolType(HabboProtocolType.const_962,WedgieProtocol);
            _connection = var_593.createConnection(HabboConnectionType.const_259,ConnectionType.const_943);
            _loc3_ = var_593.getProtocolInstanceOfType(HabboProtocolType.const_962);
            _connection.registerMessageClasses(var_900);
            _connection.protocol = _loc3_;
            _connection.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
            _connection.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSecurityError);
         }
      }
      
      public function addHabboConnectionMessageEvent(param1:IMessageEvent) : void
      {
         return var_593.addConnectionMessageEvent(HabboConnectionType.const_259,param1);
      }
      
      private function onHabboConfigurationInit(param1:IID = null, param2:IUnknown = null) : void
      {
         if(param2 != null)
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config Received");
            _habboConfiguration = param2 as IHabboConfigurationManager;
            (_habboConfiguration as Component).events.addEventListener(HabboConfigurationEvent.INIT,onConfigurationReady);
         }
         else
         {
            ErrorReportStorage.addDebugData("CommunicationConfigInit","Config NOT received");
         }
      }
      
      public function habboWebLogin(param1:String, param2:String) : IHabboWebLogin
      {
         var _loc3_:String = "";
         _loc3_ = _habboConfiguration.getKey("url.prefix",_loc3_);
         _loc3_ = _loc3_.replace("http://","");
         _loc3_ = _loc3_.replace("https://","");
         return new HabboWebLogin(param1,param2,_loc3_);
      }
      
      private function tryNextPort() : void
      {
         var_1073.addEventListener(TimerEvent.TIMER,onTryNextPort);
         var_1073.start();
      }
      
      public function getHabboMainConnection(param1:Function) : IConnection
      {
         return var_593.queueConnection(HabboConnectionType.const_259,param1);
      }
      
      public function connectionInit(param1:String, param2:int) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1279,param1);
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1211,String(param2));
      }
      
      public function messageSent(param1:String) : void
      {
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1240,String(new Date().getTime()));
         ErrorReportStorage.setParameter(HabboErrorVariableEnum.const_1116,param1);
      }
   }
}
