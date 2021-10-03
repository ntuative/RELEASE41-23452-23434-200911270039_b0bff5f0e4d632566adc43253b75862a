package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1259:String = "WN_CREATED";
      
      public static const const_807:String = "WN_DISABLE";
      
      public static const const_827:String = "WN_DEACTIVATED";
      
      public static const const_928:String = "WN_OPENED";
      
      public static const const_915:String = "WN_CLOSED";
      
      public static const const_904:String = "WN_DESTROY";
      
      public static const const_1510:String = "WN_ARRANGED";
      
      public static const const_426:String = "WN_PARENT_RESIZED";
      
      public static const const_968:String = "WN_ENABLE";
      
      public static const const_847:String = "WN_RELOCATE";
      
      public static const const_884:String = "WN_FOCUS";
      
      public static const const_898:String = "WN_PARENT_RELOCATED";
      
      public static const const_439:String = "WN_PARAM_UPDATED";
      
      public static const const_669:String = "WN_PARENT_ACTIVATED";
      
      public static const const_223:String = "WN_RESIZED";
      
      public static const const_917:String = "WN_CLOSE";
      
      public static const const_809:String = "WN_PARENT_REMOVED";
      
      public static const const_256:String = "WN_CHILD_RELOCATED";
      
      public static const const_571:String = "WN_ENABLED";
      
      public static const const_265:String = "WN_CHILD_RESIZED";
      
      public static const const_794:String = "WN_MINIMIZED";
      
      public static const const_499:String = "WN_DISABLED";
      
      public static const const_211:String = "WN_CHILD_ACTIVATED";
      
      public static const const_462:String = "WN_STATE_UPDATED";
      
      public static const const_621:String = "WN_UNSELECTED";
      
      public static const const_404:String = "WN_STYLE_UPDATED";
      
      public static const const_1541:String = "WN_UPDATE";
      
      public static const const_436:String = "WN_PARENT_ADDED";
      
      public static const const_690:String = "WN_RESIZE";
      
      public static const const_678:String = "WN_CHILD_REMOVED";
      
      public static const const_1395:String = "";
      
      public static const const_944:String = "WN_RESTORED";
      
      public static const const_293:String = "WN_SELECTED";
      
      public static const const_849:String = "WN_MINIMIZE";
      
      public static const const_768:String = "WN_FOCUSED";
      
      public static const const_1180:String = "WN_LOCK";
      
      public static const const_319:String = "WN_CHILD_ADDED";
      
      public static const const_824:String = "WN_UNFOCUSED";
      
      public static const const_416:String = "WN_RELOCATED";
      
      public static const const_804:String = "WN_DEACTIVATE";
      
      public static const const_1238:String = "WN_CRETAE";
      
      public static const const_972:String = "WN_RESTORE";
      
      public static const const_324:String = "WN_ACTVATED";
      
      public static const const_1128:String = "WN_LOCKED";
      
      public static const const_401:String = "WN_SELECT";
      
      public static const const_846:String = "WN_MAXIMIZE";
      
      public static const const_782:String = "WN_OPEN";
      
      public static const const_698:String = "WN_UNSELECT";
      
      public static const const_1418:String = "WN_ARRANGE";
      
      public static const const_1234:String = "WN_UNLOCKED";
      
      public static const const_1408:String = "WN_UPDATED";
      
      public static const const_788:String = "WN_ACTIVATE";
      
      public static const const_1204:String = "WN_UNLOCK";
      
      public static const const_839:String = "WN_MAXIMIZED";
      
      public static const const_886:String = "WN_DESTROYED";
      
      public static const const_841:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1509,cancelable);
      }
   }
}
