package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_122:DisplayObject;
      
      private var var_2158:uint;
      
      private var var_705:IWindowToolTipAgentService;
      
      private var var_702:IWindowMouseScalingService;
      
      private var var_406:IWindowContext;
      
      private var var_703:IWindowFocusManagerService;
      
      private var var_704:IWindowMouseListenerService;
      
      private var var_706:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2158 = 0;
         var_122 = param2;
         var_406 = param1;
         var_706 = new WindowMouseDragger(param2);
         var_702 = new WindowMouseScaler(param2);
         var_704 = new WindowMouseListener(param2);
         var_703 = new FocusManager(param2);
         var_705 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_702;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_703;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_705;
      }
      
      public function dispose() : void
      {
         if(var_706 != null)
         {
            var_706.dispose();
            var_706 = null;
         }
         if(var_702 != null)
         {
            var_702.dispose();
            var_702 = null;
         }
         if(var_704 != null)
         {
            var_704.dispose();
            var_704 = null;
         }
         if(var_703 != null)
         {
            var_703.dispose();
            var_703 = null;
         }
         if(var_705 != null)
         {
            var_705.dispose();
            var_705 = null;
         }
         var_406 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_704;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_706;
      }
   }
}
