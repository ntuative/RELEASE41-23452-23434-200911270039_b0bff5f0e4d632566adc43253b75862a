package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1833:String;
      
      private var var_375:int;
      
      private var var_1834:String;
      
      private var var_1832:String;
      
      private var var_1830:int;
      
      private var var_1831:String;
      
      private var var_1835:int;
      
      private var var_576:Array;
      
      private var var_1011:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_576 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1011 = false;
            return;
         }
         this.var_1011 = true;
         var_1830 = int(_loc2_);
         var_1834 = param1.readString();
         var_375 = int(param1.readString());
         var_1835 = param1.readInteger();
         var_1833 = param1.readString();
         var_1832 = param1.readString();
         var_1831 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_576.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_1835;
      }
      
      public function get eventName() : String
      {
         return var_1833;
      }
      
      public function get eventDescription() : String
      {
         return var_1832;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_1834;
      }
      
      public function get tags() : Array
      {
         return var_576;
      }
      
      public function get creationTime() : String
      {
         return var_1831;
      }
      
      public function get exists() : Boolean
      {
         return var_1011;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_1830;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
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
      
      public function get flatId() : int
      {
         return var_375;
      }
   }
}
