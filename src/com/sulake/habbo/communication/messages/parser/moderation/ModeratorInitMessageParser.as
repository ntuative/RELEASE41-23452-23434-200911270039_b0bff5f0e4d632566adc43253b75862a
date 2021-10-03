package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_1704:Boolean;
      
      private var var_1346:Array;
      
      private var var_1702:Boolean;
      
      private var var_1699:Boolean;
      
      private var var_1700:Boolean;
      
      private var var_160:Array;
      
      private var var_1705:Boolean;
      
      private var var_1706:Boolean;
      
      private var var_1345:Array;
      
      private var var_1703:Boolean;
      
      private var var_1701:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_1701;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_1704;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_1702;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_1705;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_1706;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1346;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_160 = [];
         var_1346 = [];
         _roomMessageTemplates = [];
         var_1345 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_160.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1346.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1345.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_1705 = param1.readBoolean();
         var_1700 = param1.readBoolean();
         var_1702 = param1.readBoolean();
         var_1699 = param1.readBoolean();
         var_1701 = param1.readBoolean();
         var_1706 = param1.readBoolean();
         var_1704 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_1703 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_1699;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1345;
      }
      
      public function get issues() : Array
      {
         return var_160;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_1703;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_1700;
      }
   }
}
