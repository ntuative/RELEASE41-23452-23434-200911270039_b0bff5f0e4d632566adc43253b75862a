package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1256:String = "F";
      
      public static const const_825:String = "M";
       
      
      private var var_89:Number = 0;
      
      private var var_500:String = "";
      
      private var var_1994:int = 0;
      
      private var var_1732:String = "";
      
      private var var_1730:int = 0;
      
      private var var_1581:int = 0;
      
      private var var_1731:String = "";
      
      private var var_1043:String = "";
      
      private var _id:int = 0;
      
      private var var_202:Boolean = false;
      
      private var var_228:int = 0;
      
      private var var_1995:String = "";
      
      private var _name:String = "";
      
      private var var_1573:int = 0;
      
      private var _y:Number = 0;
      
      private var var_88:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_88;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_228;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_202)
         {
            var_228 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_202)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1994;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_202)
         {
            var_1730 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1995;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_202)
         {
            var_1731 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_202)
         {
            var_1995 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_202)
         {
            var_1581 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_202)
         {
            var_500 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_202)
         {
            var_1994 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_202)
         {
            var_1043 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1730;
      }
      
      public function get groupID() : String
      {
         return var_1731;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_202)
         {
            var_1573 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_202)
         {
            var_1732 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_202 = true;
      }
      
      public function get sex() : String
      {
         return var_1043;
      }
      
      public function get figure() : String
      {
         return var_500;
      }
      
      public function get webID() : int
      {
         return var_1573;
      }
      
      public function get custom() : String
      {
         return var_1732;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_202)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_202)
         {
            var_88 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_202)
         {
            var_89 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_89;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1581;
      }
   }
}
