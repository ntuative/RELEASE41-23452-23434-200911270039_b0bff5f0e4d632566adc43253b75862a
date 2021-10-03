package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var var_2182:Boolean;
      
      private var var_1404:int;
      
      private var var_2180:String = "";
      
      private var var_79:ITextFieldWindow;
      
      private var var_2181:uint;
      
      private var _orgTextBackgroundColor:uint;
      
      private var _navigator:HabboNavigator;
      
      private var var_1266:String = "";
      
      private var var_156:IWindowContainer;
      
      private var var_289:Boolean;
      
      private var var_1167:Function;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         _navigator = param1;
         var_79 = param2;
         var_1404 = param3;
         var_1167 = param4;
         if(param5 != null)
         {
            var_289 = true;
            var_1266 = param5;
            var_79.text = param5;
         }
         Util.setProcDirectly(var_79,onInputClick);
         var_79.addEventListener(WindowKeyboardEvent.const_131,checkEnterPress);
         var_79.addEventListener(WindowEvent.const_227,checkMaxLen);
         this.var_2182 = var_79.textBackground;
         this._orgTextBackgroundColor = var_79.textBackgroundColor;
         this.var_2181 = var_79.textColor;
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(var_1167 != null)
            {
               var_1167();
            }
         }
      }
      
      public function goBackToInitialState() : void
      {
         clearErrors();
         if(var_1266 != null)
         {
            var_79.text = var_1266;
            var_289 = true;
         }
         else
         {
            var_79.text = "";
            var_289 = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return var_79;
      }
      
      public function restoreBackground() : void
      {
         var_79.textBackground = this.var_2182;
         var_79.textBackgroundColor = this._orgTextBackgroundColor;
         var_79.textColor = this.var_2181;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_318)
         {
            return;
         }
         if(!var_289)
         {
            return;
         }
         var_79.text = var_2180;
         var_289 = false;
         this.restoreBackground();
      }
      
      public function clearErrors() : void
      {
         this.restoreBackground();
         if(this.var_156 != null)
         {
            var_156.visible = false;
         }
      }
      
      public function displayError(param1:String) : void
      {
         var_79.textBackground = true;
         var_79.textBackgroundColor = 4294021019;
         var_79.textColor = 4278190080;
         if(this.var_156 == null)
         {
            this.var_156 = IWindowContainer(_navigator.getXmlWindow("nav_error_popup"));
            _navigator.refreshButton(this.var_156,"popup_arrow_down",true,null,0);
            IWindowContainer(var_79.parent).addChild(this.var_156);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_156.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         var_156.findChildByName("border").width = _loc2_.width + 15;
         var_156.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         var_79.getLocalPosition(_loc3_);
         this.var_156.x = _loc3_.x;
         this.var_156.y = _loc3_.y - this.var_156.height + 3;
         var _loc4_:IWindow = var_156.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_156.width / 2 - _loc4_.width / 2;
         var_156.x += (0 - 0) / 2;
         this.var_156.visible = true;
      }
      
      public function getText() : String
      {
         if(var_289)
         {
            return var_2180;
         }
         return var_79.text;
      }
      
      private function isInputValid() : Boolean
      {
         return !var_289 && Util.trim(getText()).length > 2;
      }
      
      public function setText(param1:String) : void
      {
         var_289 = false;
         var_79.text = param1;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!isInputValid())
         {
            displayError(param1);
            return false;
         }
         restoreBackground();
         return true;
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = "null";
         if(_loc2_.length > var_1404)
         {
            var_79.text = _loc2_.substring(0,var_1404);
         }
      }
   }
}
