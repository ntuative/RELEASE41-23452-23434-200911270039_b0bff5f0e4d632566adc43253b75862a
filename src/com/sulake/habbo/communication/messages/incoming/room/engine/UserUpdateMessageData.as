package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_88:Number = 0;
      
      private var var_228:int = 0;
      
      private var var_1517:int = 0;
      
      private var var_1521:Number = 0;
      
      private var var_1520:Number = 0;
      
      private var var_1516:Number = 0;
      
      private var var_1519:Number = 0;
      
      private var var_1518:Boolean = false;
      
      private var var_89:Number = 0;
      
      private var _id:int = 0;
      
      private var var_186:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_186 = [];
         super();
         _id = param1;
         var_89 = param2;
         _y = param3;
         var_88 = param4;
         var_1519 = param5;
         var_228 = param6;
         var_1517 = param7;
         var_1521 = param8;
         var_1520 = param9;
         var_1516 = param10;
         var_1518 = param11;
         var_186 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_88;
      }
      
      public function get dir() : int
      {
         return var_228;
      }
      
      public function get localZ() : Number
      {
         return var_1519;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1518;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1517;
      }
      
      public function get targetX() : Number
      {
         return var_1521;
      }
      
      public function get targetY() : Number
      {
         return var_1520;
      }
      
      public function get targetZ() : Number
      {
         return var_1516;
      }
      
      public function get x() : Number
      {
         return var_89;
      }
      
      public function get actions() : Array
      {
         return var_186.slice();
      }
   }
}
