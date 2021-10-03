package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1391:String;
      
      private var var_859:String;
      
      private var var_1392:String;
      
      private var var_1393:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1393 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1391 = _loc5_[0];
         var_1392 = _loc5_[1];
         _name = param2;
         var_859 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1391;
      }
      
      public function get languageCode() : String
      {
         return var_1393;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_859;
      }
      
      public function get encoding() : String
      {
         return var_1392;
      }
      
      public function get id() : String
      {
         return var_1393 + "_" + var_1391 + "." + var_1392;
      }
   }
}
