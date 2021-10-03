package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1774:int;
      
      private var var_1775:String;
      
      private var var_1771:int;
      
      private var _disposed:Boolean;
      
      private var var_1773:int;
      
      private var var_1772:String;
      
      private var var_1197:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1772 = param1.readString();
         var_1774 = param1.readInteger();
         var_1771 = param1.readInteger();
         var_1775 = param1.readString();
         var_1773 = param1.readInteger();
         var_1197 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1773;
      }
      
      public function get worldId() : int
      {
         return var_1771;
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
      }
      
      public function get unitPropertySet() : String
      {
         return var_1772;
      }
      
      public function get unitPort() : int
      {
         return var_1774;
      }
      
      public function get castLibs() : String
      {
         return var_1775;
      }
      
      public function get nodeId() : int
      {
         return var_1197;
      }
   }
}
