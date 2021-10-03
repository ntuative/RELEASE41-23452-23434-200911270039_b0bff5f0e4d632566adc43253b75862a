package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_603:String = "Rectangle";
      
      public static const const_58:String = "Boolean";
      
      public static const const_491:String = "Number";
      
      public static const const_86:String = "int";
      
      public static const const_241:String = "String";
      
      public static const const_535:String = "Point";
      
      public static const const_838:String = "Array";
      
      public static const const_1324:String = "uint";
      
      public static const const_428:String = "hex";
      
      public static const const_974:String = "Map";
       
      
      private var var_509:String;
      
      private var var_167:Object;
      
      private var var_2161:Boolean;
      
      private var _type:String;
      
      private var var_1624:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_509 = param1;
         var_167 = param2;
         _type = param3;
         var_1624 = param4;
         var_2161 = param3 == const_974 || param3 == const_838 || param3 == const_535 || param3 == const_603;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_428:
               return "0x" + uint(var_167).toString(16);
            case const_58:
               return Boolean(var_167) == true ? "true" : "false";
            case const_535:
               return "Point(" + Point(var_167).x + ", " + Point(var_167).y + ")";
            case const_603:
               return "Rectangle(" + Rectangle(var_167).x + ", " + Rectangle(var_167).y + ", " + Rectangle(var_167).width + ", " + Rectangle(var_167).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_974:
               _loc3_ = var_167 as Map;
               _loc1_ = "<var key=\"" + var_509 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_838:
               _loc4_ = var_167 as Array;
               _loc1_ = "<var key=\"" + var_509 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_535:
               _loc5_ = var_167 as Point;
               _loc1_ = "<var key=\"" + var_509 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_86 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_86 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_603:
               _loc6_ = var_167 as Rectangle;
               _loc1_ = "<var key=\"" + var_509 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_86 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_86 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_86 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_86 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_428:
               _loc1_ = "<var key=\"" + var_509 + "\" value=\"" + "0x" + uint(var_167).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_509 + "\" value=\"" + var_167 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_167;
      }
      
      public function get valid() : Boolean
      {
         return var_1624;
      }
      
      public function get key() : String
      {
         return var_509;
      }
   }
}
