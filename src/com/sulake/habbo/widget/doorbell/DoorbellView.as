package com.sulake.habbo.widget.doorbell
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.ICoreWindowManager;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.IIconWindow;
   import com.sulake.core.window.components.IScrollableListWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class DoorbellView
   {
       
      
      private var var_58:IFrameWindow;
      
      private var var_334:DoorbellWidget;
      
      private var _list:IScrollableListWindow;
      
      private var _windowManager:IHabboWindowManager;
      
      public function DoorbellView(param1:DoorbellWidget)
      {
         super();
         var_334 = param1;
         createMainWindow();
      }
      
      private function hide() : void
      {
         if(var_58 == null)
         {
            return;
         }
         var_58.visible = false;
      }
      
      public function createMainWindow() : void
      {
         if(var_58 != null)
         {
            return;
         }
         var _loc1_:XmlAsset = var_334.assets.getAssetByName("doorbell") as XmlAsset;
         var_58 = (var_334.windowManager as ICoreWindowManager).buildFromXML(_loc1_.content as XML) as IFrameWindow;
         if(var_58 == null)
         {
            throw new Error("Failed to construct window from XML!");
         }
         _list = var_58.findChildByName("user_list") as IScrollableListWindow;
         var_58.visible = false;
         var _loc2_:IWindow = var_58.findChildByTag("close");
         if(_loc2_ != null)
         {
            _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onClose);
         }
      }
      
      public function update() : void
      {
         var _loc1_:int = 0;
         if(var_334.users.length == 0)
         {
            return hide();
         }
         if(var_58 != null)
         {
            var_58.visible = true;
         }
         if(_list != null)
         {
            _list.destroyListItems();
            _loc1_ = 0;
            while(_loc1_ < var_334.users.length)
            {
               _list.addListItem(createListItem(var_334.users[_loc1_] as String,_loc1_));
               _loc1_++;
            }
         }
      }
      
      private function createListItem(param1:String, param2:int) : IWindow
      {
         var _loc6_:* = null;
         var _loc3_:XmlAsset = var_334.assets.getAssetByName("doorbell_list_entry") as XmlAsset;
         var _loc4_:IWindowContainer = (var_334.windowManager as ICoreWindowManager).buildFromXML(_loc3_.content as XML) as IWindowContainer;
         if(_loc4_ == null)
         {
            throw new Error("Failed to construct window from XML!");
         }
         var _loc5_:ITextWindow = _loc4_.findChildByName("user_name") as ITextWindow;
         if(_loc5_ != null)
         {
            _loc5_.caption = param1;
         }
         _loc4_.name = param1;
         if(param2 % 2 == 0)
         {
            _loc4_.color = 4294967295;
         }
         _loc6_ = _loc4_.findChildByName("accept") as IIconWindow;
         if(_loc6_ != null)
         {
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onButtonClicked);
         }
         _loc6_ = _loc4_.findChildByName("deny") as IIconWindow;
         if(_loc6_ != null)
         {
            _loc6_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onButtonClicked);
         }
         return _loc4_;
      }
      
      private function onButtonClicked(param1:WindowMouseEvent) : void
      {
         var _loc2_:String = param1.window.parent.name;
         switch(param1.window.name)
         {
            case "accept":
               var_334.accept(_loc2_);
               break;
            case "deny":
               var_334.deny(_loc2_);
         }
      }
      
      public function get mainWindow() : IWindow
      {
         return var_58;
      }
      
      private function onClose(param1:WindowMouseEvent) : void
      {
         var_334.denyAll();
      }
   }
}
