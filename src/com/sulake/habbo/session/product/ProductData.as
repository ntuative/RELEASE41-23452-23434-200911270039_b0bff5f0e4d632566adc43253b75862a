package com.sulake.habbo.session.product
{
   public class ProductData implements IProductData
   {
       
      
      private var var_1738:String;
      
      private var _name:String;
      
      private var _type:String;
      
      private var var_1191:String;
      
      public function ProductData(param1:String, param2:String, param3:String, param4:String = "")
      {
         super();
         _type = param1;
         _name = param2;
         var_1191 = param3;
         var_1738 = param4;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get specialData() : String
      {
         return var_1738;
      }
      
      public function get description() : String
      {
         return var_1191;
      }
   }
}
