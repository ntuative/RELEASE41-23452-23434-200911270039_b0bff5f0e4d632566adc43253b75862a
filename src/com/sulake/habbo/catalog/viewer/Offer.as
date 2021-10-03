package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_780:String = "price_type_none";
      
      public static const const_411:String = "pricing_model_multi";
      
      public static const const_306:String = "price_type_credits";
      
      public static const const_472:String = "price_type_credits_and_pixels";
      
      public static const const_378:String = "pricing_model_bundle";
      
      public static const const_366:String = "pricing_model_single";
      
      public static const const_615:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1216:String = "pricing_model_unknown";
      
      public static const const_357:String = "price_type_pixels";
       
      
      private var var_820:int;
      
      private var var_1222:int;
      
      private var var_819:int;
      
      private var var_401:String;
      
      private var var_553:String;
      
      private var var_1992:int;
      
      private var var_642:ICatalogPage;
      
      private var var_1223:String;
      
      private var var_400:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         var_1222 = param1.offerId;
         var_1223 = param1.localizationId;
         var_820 = param1.priceInCredits;
         var_819 = param1.priceInPixels;
         var_642 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(_loc4_.productType);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_401;
      }
      
      public function get page() : ICatalogPage
      {
         return var_642;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1992 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_400;
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
      
      public function dispose() : void
      {
         var_1222 = 0;
         var_1223 = "";
         var_820 = 0;
         var_819 = 0;
         var_642 = null;
         if(var_400 != null)
         {
            var_400.dispose();
            var_400 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_553;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1992;
      }
      
      public function get priceInCredits() : int
      {
         return var_820;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_401 = const_366;
            }
            else
            {
               var_401 = const_411;
            }
         }
         else if(param1.length > 1)
         {
            var_401 = const_378;
         }
         else
         {
            var_401 = const_1216;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_401)
         {
            case const_366:
               var_400 = new SingleProductContainer(this,param1);
               break;
            case const_411:
               var_400 = new MultiProductContainer(this,param1);
               break;
            case const_378:
               var_400 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_401);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_820 > 0 && var_819 > 0)
         {
            var_553 = const_472;
         }
         else if(var_820 > 0)
         {
            var_553 = const_306;
         }
         else if(var_819 > 0)
         {
            var_553 = const_357;
         }
         else
         {
            var_553 = const_780;
         }
      }
   }
}
