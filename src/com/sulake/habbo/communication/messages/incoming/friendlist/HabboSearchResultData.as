package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2167:Boolean;
      
      private var var_2165:int;
      
      private var var_2166:Boolean;
      
      private var var_1340:String;
      
      private var var_1182:String;
      
      private var var_1615:int;
      
      private var var_1690:String;
      
      private var var_2168:String;
      
      private var var_1689:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1615 = param1.readInteger();
         this.var_1340 = param1.readString();
         this.var_1690 = param1.readString();
         this.var_2167 = param1.readBoolean();
         this.var_2166 = param1.readBoolean();
         param1.readString();
         this.var_2165 = param1.readInteger();
         this.var_1689 = param1.readString();
         this.var_2168 = param1.readString();
         this.var_1182 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1182;
      }
      
      public function get avatarName() : String
      {
         return this.var_1340;
      }
      
      public function get avatarId() : int
      {
         return this.var_1615;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2167;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2168;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1689;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2166;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1690;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2165;
      }
   }
}
