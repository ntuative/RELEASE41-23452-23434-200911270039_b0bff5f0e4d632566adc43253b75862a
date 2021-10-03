package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_282:String = "e";
      
      public static const const_141:String = "i";
      
      public static const const_162:String = "s";
       
      
      private var var_949:String;
      
      private var var_1157:String;
      
      private var var_1154:int;
      
      private var var_1646:int;
      
      private var var_950:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1157 = param1.readString();
         var_1646 = param1.readInteger();
         var_949 = param1.readString();
         var_950 = param1.readInteger();
         var_1154 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_950;
      }
      
      public function get productType() : String
      {
         return var_1157;
      }
      
      public function get expiration() : int
      {
         return var_1154;
      }
      
      public function get furniClassId() : int
      {
         return var_1646;
      }
      
      public function get extraParam() : String
      {
         return var_949;
      }
   }
}
