package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2169:int;
      
      private var var_2173:int;
      
      private var var_2171:int;
      
      private var var_220:Array;
      
      private var var_2172:int;
      
      private var var_2170:int;
      
      private var var_323:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_323 = new Array();
         this.var_220 = new Array();
         return true;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2169;
      }
      
      public function get friends() : Array
      {
         return this.var_220;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2171;
      }
      
      public function get categories() : Array
      {
         return this.var_323;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2173;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2170;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2170 = param1.readInteger();
         this.var_2171 = param1.readInteger();
         this.var_2169 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_323.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_220.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2173 = param1.readInteger();
         this.var_2172 = param1.readInteger();
         return true;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2172;
      }
   }
}
