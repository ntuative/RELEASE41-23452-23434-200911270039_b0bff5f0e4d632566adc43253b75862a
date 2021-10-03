package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_668;
         param1["bitmap"] = const_626;
         param1["border"] = const_539;
         param1["border_notify"] = const_1158;
         param1["button"] = const_451;
         param1["button_thick"] = const_694;
         param1["button_icon"] = const_1132;
         param1["button_group_left"] = const_623;
         param1["button_group_center"] = const_565;
         param1["button_group_right"] = const_498;
         param1["canvas"] = const_582;
         param1["checkbox"] = const_604;
         param1["closebutton"] = const_802;
         param1["container"] = const_313;
         param1["container_button"] = const_599;
         param1["display_object_wrapper"] = const_618;
         param1["dropmenu"] = const_423;
         param1["dropmenu_item"] = const_429;
         param1["frame"] = const_316;
         param1["frame_notify"] = const_1169;
         param1["header"] = const_692;
         param1["icon"] = const_766;
         param1["itemgrid"] = const_899;
         param1["itemgrid_horizontal"] = const_360;
         param1["itemgrid_vertical"] = const_547;
         param1["itemlist"] = const_821;
         param1["itemlist_horizontal"] = const_291;
         param1["itemlist_vertical"] = const_297;
         param1["maximizebox"] = const_1159;
         param1["menu"] = const_1097;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_966;
         param1["minimizebox"] = const_1122;
         param1["notify"] = const_1329;
         param1["FurnitureCreditLogic"] = const_377;
         param1["password"] = const_639;
         param1["radiobutton"] = const_544;
         param1["region"] = const_408;
         param1["restorebox"] = const_1282;
         param1["scaler"] = const_850;
         param1["scaler_horizontal"] = const_1245;
         param1["scaler_vertical"] = const_1198;
         param1["scrollbar_horizontal"] = const_356;
         param1["scrollbar_vertical"] = const_605;
         param1["scrollbar_slider_button_up"] = const_871;
         param1["scrollbar_slider_button_down"] = const_785;
         param1["scrollbar_slider_button_left"] = const_906;
         param1["scrollbar_slider_button_right"] = const_896;
         param1["scrollbar_slider_bar_horizontal"] = const_856;
         param1["scrollbar_slider_bar_vertical"] = const_969;
         param1["scrollbar_slider_track_horizontal"] = const_843;
         param1["scrollbar_slider_track_vertical"] = const_798;
         param1["scrollable_itemlist"] = const_1265;
         param1["scrollable_itemlist_vertical"] = const_379;
         param1["scrollable_itemlist_horizontal"] = const_863;
         param1["selector"] = const_569;
         param1["selector_list"] = const_635;
         param1["submenu"] = const_966;
         param1["tab_button"] = const_611;
         param1["tab_container_button"] = const_823;
         param1["tab_context"] = const_467;
         param1["tab_content"] = const_939;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_625;
         param1["input"] = const_495;
         param1["toolbar"] = const_1301;
         param1["tooltip"] = WINDOW_TYPE_TOOLTIP;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
