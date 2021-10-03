package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class FlatCategory
   {
       
      
      private var var_1197:int;
      
      private var var_1411:String;
      
      public function FlatCategory()
      {
         super();
      }
      
      public function set nodeName(param1:String) : void
      {
         var_1411 = param1;
      }
      
      public function get nodeName() : String
      {
         return var_1411;
      }
      
      public function set nodeId(param1:int) : void
      {
         var_1197 = param1;
      }
      
      public function get nodeId() : int
      {
         return var_1197;
      }
   }
}
