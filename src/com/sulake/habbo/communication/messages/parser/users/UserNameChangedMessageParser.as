package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserNameChangedMessageParser implements IMessageParser
   {
       
      
      private var var_1114:String;
      
      private var var_1113:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _id:int;
      
      public function UserNameChangedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1113 = param1.readInteger();
         _id = param1.readInteger();
         var_1114 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1113 = -1;
         _id = -1;
         var_1114 = "";
         return true;
      }
      
      public function get newName() : String
      {
         return var_1114;
      }
      
      public function get webId() : int
      {
         return var_1113;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get id() : int
      {
         return _id;
      }
   }
}