package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["FurnitureCreditLogic"] = const_92;
         param1["bound_to_parent_rect"] = const_76;
         param1["child_window"] = const_777;
         param1["embedded_controller"] = const_296;
         param1["resize_to_accommodate_children"] = const_60;
         param1["input_event_processor"] = const_46;
         param1["internal_event_handling"] = const_672;
         param1["mouse_dragging_target"] = const_184;
         param1["mouse_dragging_trigger"] = const_275;
         param1["mouse_scaling_target"] = const_240;
         param1["mouse_scaling_trigger"] = const_456;
         param1["horizontal_mouse_scaling_trigger"] = const_209;
         param1["vertical_mouse_scaling_trigger"] = const_181;
         param1["observe_parent_input_events"] = const_805;
         param1["optimize_region_to_layout_size"] = const_446;
         param1["parent_window"] = const_817;
         param1["relative_horizontal_scale_center"] = const_153;
         param1["relative_horizontal_scale_fixed"] = const_114;
         param1["relative_horizontal_scale_move"] = const_317;
         param1["relative_horizontal_scale_strech"] = const_252;
         param1["relative_scale_center"] = const_832;
         param1["relative_scale_fixed"] = const_697;
         param1["relative_scale_move"] = const_869;
         param1["relative_scale_strech"] = const_919;
         param1["relative_vertical_scale_center"] = const_167;
         param1["relative_vertical_scale_fixed"] = const_110;
         param1["relative_vertical_scale_move"] = const_283;
         param1["relative_vertical_scale_strech"] = const_233;
         param1["on_resize_align_left"] = const_707;
         param1["on_resize_align_right"] = const_422;
         param1["on_resize_align_center"] = const_447;
         param1["on_resize_align_top"] = const_670;
         param1["on_resize_align_bottom"] = const_370;
         param1["on_resize_align_middle"] = const_387;
         param1["on_accommodate_align_left"] = const_983;
         param1["on_accommodate_align_right"] = const_465;
         param1["on_accommodate_align_center"] = const_658;
         param1["on_accommodate_align_top"] = const_842;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_610;
         param1["route_input_events_to_parent"] = const_443;
         param1["use_parent_graphic_context"] = const_32;
         param1["draggable_with_mouse"] = const_763;
         param1["scalable_with_mouse"] = const_786;
         param1["reflect_horizontal_resize_to_parent"] = const_394;
         param1["reflect_vertical_resize_to_parent"] = const_383;
         param1["reflect_resize_to_parent"] = const_229;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
