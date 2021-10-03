package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_88:Number = 0;
      
      private var _data:String = "";
      
      private var var_2243:int = 0;
      
      private var _state:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2024:Boolean = false;
      
      private var var_2242:String = "";
      
      private var _id:int = 0;
      
      private var var_202:Boolean = false;
      
      private var var_228:String = "";
      
      private var var_2022:int = 0;
      
      private var var_2023:int = 0;
      
      private var var_2009:int = 0;
      
      private var var_2012:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2024 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_202)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2024;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_202)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_228;
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_202)
         {
            var_2009 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_202)
         {
            var_2022 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_202)
         {
            var_2023 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_202)
         {
            var_228 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_202)
         {
            var_2012 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_202)
         {
            _state = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_2009;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_202)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2022;
      }
      
      public function get wallY() : Number
      {
         return var_2023;
      }
      
      public function get localY() : Number
      {
         return var_2012;
      }
      
      public function setReadOnly() : void
      {
         var_202 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_88;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_202)
         {
            var_88 = param1;
         }
      }
   }
}
