package com.sulake.habbo.help.cfh.data
{
   public class CallForHelpData
   {
       
      
      private var var_1783:int;
      
      private var var_1137:String = "";
      
      private var var_935:int;
      
      public function CallForHelpData()
      {
         super();
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1137 = param1;
      }
      
      public function get topicIndex() : int
      {
         return var_1783;
      }
      
      public function set topicIndex(param1:int) : void
      {
         var_1783 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1137;
      }
      
      public function flush() : void
      {
         var_935 = 0;
         var_1137 = "";
      }
      
      public function get userSelected() : Boolean
      {
         return var_935 > 0;
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_935 = param1;
      }
      
      public function getTopicKey(param1:int) : String
      {
         return (!!userSelected ? "help.cfh.topicwithharasser." : "help.cfh.topic.") + param1;
      }
      
      public function get reportedUserId() : int
      {
         return var_935;
      }
   }
}
