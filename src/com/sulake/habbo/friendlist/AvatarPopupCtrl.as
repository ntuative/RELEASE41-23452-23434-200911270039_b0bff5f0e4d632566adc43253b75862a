package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   
   public class AvatarPopupCtrl extends PopupCtrl
   {
       
      
      private var var_1183:String;
      
      private var var_1340:String;
      
      private var var_1182:String;
      
      private var var_1690:String;
      
      private var var_604:Boolean;
      
      private var var_1689:String;
      
      public function AvatarPopupCtrl(param1:HabboFriendList)
      {
         super(param1,5,-5,"avatar_popup");
      }
      
      public function setData(param1:Boolean, param2:String, param3:String, param4:String, param5:String, param6:String = "") : void
      {
         var_604 = param1;
         var_1340 = param2;
         var_1690 = param3;
         var_1689 = param4;
         var_1183 = param5;
         var_1182 = param6;
      }
      
      override public function refreshContent(param1:IWindowContainer) : void
      {
         Util.hideChildren(param1);
         if(var_1182 != "")
         {
            friendList.refreshText(param1,"name_text_online",var_604,var_1182);
         }
         else
         {
            friendList.refreshText(param1,"name_text_online",var_604,var_1340);
         }
         friendList.refreshText(param1,"name_text_offline",!var_604,var_1340);
         friendList.refreshText(param1,"motto_text",var_604,var_1690);
         friendList.refreshButton(param1,"offline",!var_604,null,0);
         if(var_604)
         {
            refreshFigure(param1,var_1689);
            param1.findChildByName("online_text").visible = true;
         }
         else
         {
            param1.findChildByName("last_access_text").visible = true;
            friendList.registerParameter("friendlist.avatarpopup.lastaccess","last_access",var_1183 == null ? "" : var_1183);
         }
         param1.height = Util.getLowestPoint(param1) + 10;
      }
      
      private function refreshFigure(param1:IWindowContainer, param2:String) : void
      {
         var _loc3_:IBitmapWrapperWindow = param1.getChildByName(HabboFriendList.const_160) as IBitmapWrapperWindow;
         if(param2 == null || param2 == "")
         {
            _loc3_.visible = false;
         }
         else
         {
            _loc3_.bitmap = friendList.getAvatarFaceBitmap(param2);
            _loc3_.width = _loc3_.bitmap.width;
            _loc3_.height = _loc3_.bitmap.height;
            _loc3_.visible = true;
         }
      }
   }
}
