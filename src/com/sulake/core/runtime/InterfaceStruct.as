package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct
   {
       
      
      private var var_899:IID;
      
      private var var_370:uint;
      
      private var var_1096:IUnknown;
      
      private var var_1097:String;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_899 = param1;
         var_1097 = getQualifiedClassName(var_899);
         var_1096 = param2;
         var_370 = 0;
      }
      
      public function get iid() : IID
      {
         return var_899;
      }
      
      public function get references() : uint
      {
         return var_370;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_370) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1096;
      }
      
      public function get iis() : String
      {
         return var_1097;
      }
      
      public function reserve() : uint
      {
         return ++var_370;
      }
      
      public function dispose() : void
      {
         var_899 = null;
         var_1097 = null;
         var_1096 = null;
         var_370 = 0;
      }
   }
}
