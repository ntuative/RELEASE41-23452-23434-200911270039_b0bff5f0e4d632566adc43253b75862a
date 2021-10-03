package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1943:XML;
      
      private var var_1426:ITextWindow;
      
      private var var_1427:ITextWindow;
      
      private var var_1944:XML;
      
      private var var_805:IWindowContainer;
      
      private var var_2187:ITextWindow;
      
      private var var_1940:String = "";
      
      private var var_2247:IButtonWindow;
      
      private var var_1941:XML;
      
      private var var_1425:ITextWindow;
      
      private var var_1942:XML;
      
      private var var_806:IButtonWindow;
      
      private var var_180:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_306:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1944) as IWindowContainer;
               break;
            case Offer.const_357:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1942) as IWindowContainer;
               break;
            case Offer.const_472:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1943) as IWindowContainer;
               break;
            case Offer.const_615:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1941) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_805 != null)
            {
               _window.removeChild(var_805);
               var_805.dispose();
            }
            var_805 = _loc2_;
            _window.addChild(_loc2_);
            var_805.x = 0;
            var_805.y = 0;
         }
         var_1425 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1427 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1426 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2187 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_806 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_806 != null)
         {
            var_806.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_806.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_180 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_180,page,var_1940);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_1944 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_1942 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_1943 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_1941 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_865,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_1940 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_180 = param1.offer;
         attachStub(var_180.priceType);
         if(var_1425 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_180.priceInCredits));
            var_1425.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1427 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_180.priceInPixels));
            var_1427.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1426 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_180.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_180.priceInPixels));
            var_1426.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_806 != null)
         {
            var_806.enable();
         }
      }
   }
}
