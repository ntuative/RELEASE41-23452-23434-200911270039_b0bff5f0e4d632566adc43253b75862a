package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_290:String = "WE_CHILD_RESIZED";
      
      public static const const_1214:String = "WE_CLOSE";
      
      public static const const_1163:String = "WE_DESTROY";
      
      public static const const_227:String = "WE_CHANGE";
      
      public static const const_1236:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1441:String = "WE_PARENT_RESIZE";
      
      public static const const_87:String = "WE_UPDATE";
      
      public static const const_1153:String = "WE_MAXIMIZE";
      
      public static const const_457:String = "WE_DESTROYED";
      
      public static const const_909:String = "WE_UNSELECT";
      
      public static const const_1284:String = "WE_MAXIMIZED";
      
      public static const const_1377:String = "WE_UNLOCKED";
      
      public static const const_464:String = "WE_CHILD_REMOVED";
      
      public static const const_208:String = "WE_OK";
      
      public static const const_43:String = "WE_RESIZED";
      
      public static const const_1298:String = "WE_ACTIVATE";
      
      public static const const_236:String = "WE_ENABLED";
      
      public static const const_382:String = "WE_CHILD_RELOCATED";
      
      public static const const_1304:String = "WE_CREATE";
      
      public static const const_652:String = "WE_SELECT";
      
      public static const const_168:String = "";
      
      public static const const_1501:String = "WE_LOCKED";
      
      public static const const_1504:String = "WE_PARENT_RELOCATE";
      
      public static const const_1420:String = "WE_CHILD_REMOVE";
      
      public static const const_1520:String = "WE_CHILD_RELOCATE";
      
      public static const const_1428:String = "WE_LOCK";
      
      public static const const_318:String = "WE_FOCUSED";
      
      public static const const_643:String = "WE_UNSELECTED";
      
      public static const const_979:String = "WE_DEACTIVATED";
      
      public static const const_1157:String = "WE_MINIMIZED";
      
      public static const const_1525:String = "WE_ARRANGED";
      
      public static const const_1465:String = "WE_UNLOCK";
      
      public static const const_1442:String = "WE_ATTACH";
      
      public static const const_1147:String = "WE_OPEN";
      
      public static const const_1193:String = "WE_RESTORE";
      
      public static const const_1475:String = "WE_PARENT_RELOCATED";
      
      public static const const_1209:String = "WE_RELOCATE";
      
      public static const const_1378:String = "WE_CHILD_RESIZE";
      
      public static const const_1427:String = "WE_ARRANGE";
      
      public static const const_1199:String = "WE_OPENED";
      
      public static const const_1189:String = "WE_CLOSED";
      
      public static const const_1459:String = "WE_DETACHED";
      
      public static const const_1409:String = "WE_UPDATED";
      
      public static const const_1249:String = "WE_UNFOCUSED";
      
      public static const const_432:String = "WE_RELOCATED";
      
      public static const const_1225:String = "WE_DEACTIVATE";
      
      public static const const_218:String = "WE_DISABLED";
      
      public static const const_554:String = "WE_CANCEL";
      
      public static const const_657:String = "WE_ENABLE";
      
      public static const const_1257:String = "WE_ACTIVATED";
      
      public static const const_1306:String = "WE_FOCUS";
      
      public static const const_1412:String = "WE_DETACH";
      
      public static const const_1258:String = "WE_RESTORED";
      
      public static const const_1171:String = "WE_UNFOCUS";
      
      public static const const_54:String = "WE_SELECTED";
      
      public static const const_1218:String = "WE_PARENT_RESIZED";
      
      public static const const_1255:String = "WE_CREATED";
      
      public static const const_1467:String = "WE_ATTACHED";
      
      public static const const_1317:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1509:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1285:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1509 = param3;
         var_1285 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1285;
      }
      
      public function get related() : IWindow
      {
         return var_1509;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1285 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
