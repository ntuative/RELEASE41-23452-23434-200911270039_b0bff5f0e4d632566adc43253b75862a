package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1656:int;
      
      private var var_1998:String;
      
      private var var_2001:int;
      
      private var var_1997:int;
      
      private var var_660:Boolean;
      
      private var var_1812:Boolean;
      
      private var var_375:int;
      
      private var var_1191:String;
      
      private var var_1805:int;
      
      private var var_1181:int;
      
      private var _ownerName:String;
      
      private var var_648:String;
      
      private var var_2000:int;
      
      private var var_1999:RoomThumbnailData;
      
      private var var_1814:Boolean;
      
      private var var_576:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_576 = new Array();
         super();
         var_375 = param1.readInteger();
         var_660 = param1.readBoolean();
         var_648 = param1.readString();
         _ownerName = param1.readString();
         var_1805 = param1.readInteger();
         var_1656 = param1.readInteger();
         var_2000 = param1.readInteger();
         var_1191 = param1.readString();
         var_2001 = param1.readInteger();
         var_1814 = param1.readBoolean();
         var_1997 = param1.readInteger();
         var_1181 = param1.readInteger();
         var_1998 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_576.push(_loc4_);
            _loc3_++;
         }
         var_1999 = new RoomThumbnailData(param1);
         var_1812 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2000;
      }
      
      public function get roomName() : String
      {
         return var_648;
      }
      
      public function get userCount() : int
      {
         return var_1656;
      }
      
      public function get score() : int
      {
         return var_1997;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1998;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1814;
      }
      
      public function get tags() : Array
      {
         return var_576;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1812;
      }
      
      public function get event() : Boolean
      {
         return var_660;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_576 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1181;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2001;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1999;
      }
      
      public function get doorMode() : int
      {
         return var_1805;
      }
      
      public function get flatId() : int
      {
         return var_375;
      }
      
      public function get description() : String
      {
         return var_1191;
      }
   }
}
