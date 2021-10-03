package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2128:Class;
      
      private var var_2129:Class;
      
      private var var_2130:String;
      
      private var var_1277:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_2130 = param1;
         var_2129 = param2;
         var_2128 = param3;
         if(rest == null)
         {
            var_1277 = new Array();
         }
         else
         {
            var_1277 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_2128;
      }
      
      public function get assetClass() : Class
      {
         return var_2129;
      }
      
      public function get mimeType() : String
      {
         return var_2130;
      }
      
      public function get fileTypes() : Array
      {
         return var_1277;
      }
   }
}
