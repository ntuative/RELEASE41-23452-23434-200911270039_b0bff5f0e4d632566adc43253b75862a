package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var var_500:String;
      
      private var var_1183:String;
      
      private var var_1180:String;
      
      private var var_1181:int;
      
      private var _gender:int;
      
      private var var_1182:String;
      
      private var _name:String;
      
      private var var_1098:Boolean;
      
      private var var_604:Boolean;
      
      private var _id:int;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this._gender = param1.readInteger();
         this.var_604 = param1.readBoolean();
         this.var_1098 = param1.readBoolean();
         this.var_500 = param1.readString();
         this.var_1181 = param1.readInteger();
         this.var_1180 = param1.readString();
         this.var_1183 = param1.readString();
         this.var_1182 = param1.readString();
      }
      
      public function get gender() : int
      {
         return _gender;
      }
      
      public function get realName() : String
      {
         return var_1182;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get motto() : String
      {
         return var_1180;
      }
      
      public function get categoryId() : int
      {
         return var_1181;
      }
      
      public function get online() : Boolean
      {
         return var_604;
      }
      
      public function get followingAllowed() : Boolean
      {
         return var_1098;
      }
      
      public function get lastAccess() : String
      {
         return var_1183;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get figure() : String
      {
         return var_500;
      }
   }
}
