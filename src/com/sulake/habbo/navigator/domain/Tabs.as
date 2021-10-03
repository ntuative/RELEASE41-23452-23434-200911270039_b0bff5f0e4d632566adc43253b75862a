package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_667:int = 6;
      
      public static const const_206:int = 5;
      
      public static const const_509:int = 2;
      
      public static const const_299:int = 9;
      
      public static const const_226:int = 4;
      
      public static const const_254:int = 2;
      
      public static const const_602:int = 4;
      
      public static const const_198:int = 8;
      
      public static const const_633:int = 7;
      
      public static const const_247:int = 3;
      
      public static const const_320:int = 1;
      
      public static const const_190:int = 5;
      
      public static const const_414:int = 12;
      
      public static const const_281:int = 1;
      
      public static const const_362:int = 11;
      
      public static const const_573:int = 3;
      
      public static const const_1471:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_374:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_374 = new Array();
         var_374.push(new Tab(_navigator,const_320,const_414,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_390));
         var_374.push(new Tab(_navigator,const_254,const_281,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_390));
         var_374.push(new Tab(_navigator,const_226,const_362,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_662));
         var_374.push(new Tab(_navigator,const_247,const_206,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_390));
         var_374.push(new Tab(_navigator,const_190,const_198,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_630));
         setSelectedTab(const_320);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_374)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_374)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_374)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_226;
      }
      
      public function get tabs() : Array
      {
         return var_374;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
