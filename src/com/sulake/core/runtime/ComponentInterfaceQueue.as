package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1064:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_718:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1064 = param1;
         var_718 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_718;
      }
      
      public function get identifier() : IID
      {
         return var_1064;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1064 = null;
            while(false)
            {
               var_718.pop();
            }
            var_718 = null;
         }
      }
   }
}
