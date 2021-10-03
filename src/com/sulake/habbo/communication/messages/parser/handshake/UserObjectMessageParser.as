package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_500:String;
      
      private var var_2196:String;
      
      private var var_2195:int;
      
      private var var_2197:int;
      
      private var var_1043:String;
      
      private var var_1182:String;
      
      private var _name:String;
      
      private var var_793:int;
      
      private var _respectLeft:int;
      
      private var var_2194:int;
      
      private var var_1552:int;
      
      private var var_2198:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2197;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1182;
      }
      
      public function get customData() : String
      {
         return this.var_2196;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_793;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2195;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2198;
      }
      
      public function get figure() : String
      {
         return this.var_500;
      }
      
      public function get respectTotal() : int
      {
         return this.var_1552;
      }
      
      public function get sex() : String
      {
         return this.var_1043;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_500 = param1.readString();
         this.var_1043 = param1.readString();
         this.var_2196 = param1.readString();
         this.var_1182 = param1.readString();
         this.var_2194 = param1.readInteger();
         this.var_2198 = param1.readString();
         this.var_2195 = param1.readInteger();
         this.var_2197 = param1.readInteger();
         this.var_1552 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_793 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2194;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
   }
}
