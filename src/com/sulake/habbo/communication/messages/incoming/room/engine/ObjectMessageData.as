package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_980:int = 0;
      
      private var var_981:int = 0;
      
      private var _data:String = "";
      
      private var var_2243:int = 0;
      
      private var _state:int = 0;
      
      private var _type:int = 0;
      
      private var var_2242:String = "";
      
      private var _id:int = 0;
      
      private var var_202:Boolean = false;
      
      private var var_228:int = 0;
      
      private var var_1824:String = null;
      
      private var var_89:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_88:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_202)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_202)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_228;
      }
      
      public function get x() : Number
      {
         return var_89;
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_202)
         {
            var_228 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get z() : Number
      {
         return var_88;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_202)
         {
            _state = param1;
         }
      }
      
      public function get staticClass() : String
      {
         return var_1824;
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_202)
         {
            var_1824 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_202)
         {
            _data = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_202 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_202)
         {
            var_980 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_202)
         {
            var_981 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_202)
         {
            var_88 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return var_981;
      }
      
      public function get sizeX() : int
      {
         return var_980;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_202)
         {
            var_89 = param1;
         }
      }
   }
}
