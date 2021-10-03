package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_930:int = 4;
      
      public static const TYPE_PUBLIC_SPACE:int = 3;
      
      public static const const_575:int = 2;
      
      public static const const_881:int = 1;
       
      
      private var var_1652:String;
      
      private var _disposed:Boolean;
      
      private var var_1656:int;
      
      private var var_1654:Boolean;
      
      private var var_771:String;
      
      private var var_732:PublicRoomData;
      
      private var _index:int;
      
      private var var_1655:String;
      
      private var _type:int;
      
      private var var_1549:String;
      
      private var var_731:GuestRoomData;
      
      private var var_1657:String;
      
      private var var_1653:int;
      
      public function OfficialRoomEntryData(param1:int, param2:IMessageDataWrapper)
      {
         super();
         _index = param1;
         var_1652 = param2.readString();
         var_1657 = param2.readString();
         var_1654 = param2.readInteger() == 1;
         var_1655 = param2.readString();
         var_771 = param2.readString();
         var_1656 = param2.readInteger();
         _type = param2.readInteger();
         if(_type == const_881)
         {
            var_1549 = param2.readString();
         }
         else if(_type == TYPE_PUBLIC_SPACE)
         {
            var_732 = new PublicRoomData(param2);
         }
         else if(_type == const_575)
         {
            var_731 = new GuestRoomData(param2);
         }
         else if(_type == const_930)
         {
            var_1653 = param2.readInteger();
         }
      }
      
      public function get tag() : String
      {
         return var_1549;
      }
      
      public function get userCount() : int
      {
         return var_1656;
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1654;
      }
      
      public function get picText() : String
      {
         return var_1655;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_881)
         {
            return 0;
         }
         if(this.type == const_575)
         {
            return this.var_731.maxUserCount;
         }
         if(this.type == TYPE_PUBLIC_SPACE)
         {
            return this.var_732.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1657;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_731 != null)
         {
            this.var_731.dispose();
            this.var_731 = null;
         }
         if(this.var_732 != null)
         {
            this.var_732.dispose();
            this.var_732 = null;
         }
      }
      
      public function get popupCaption() : String
      {
         return var_1652;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_731;
      }
      
      public function get picRef() : String
      {
         return var_771;
      }
      
      public function get flatCategoryId() : int
      {
         return var_1653;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_732;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
