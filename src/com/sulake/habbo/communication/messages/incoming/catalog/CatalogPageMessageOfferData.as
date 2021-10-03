package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_791:Array;
      
      private var var_820:int;
      
      private var var_1223:String;
      
      private var var_1222:int;
      
      private var var_819:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         var_1222 = param1.readInteger();
         var_1223 = param1.readString();
         var_820 = param1.readInteger();
         var_819 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_791 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_791.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_791;
      }
      
      public function get priceInCredits() : int
      {
         return var_820;
      }
      
      public function get localizationId() : String
      {
         return var_1223;
      }
      
      public function get offerId() : int
      {
         return var_1222;
      }
      
      public function get priceInPixels() : int
      {
         return var_819;
      }
   }
}
