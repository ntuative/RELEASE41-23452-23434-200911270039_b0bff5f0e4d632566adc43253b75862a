package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1197:int;
      
      private var var_1411:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1197 = param1;
         var_1411 = param2;
         Logger.log("READ NODE: " + var_1197 + ", " + var_1411);
      }
      
      public function get nodeName() : String
      {
         return var_1411;
      }
      
      public function get nodeId() : int
      {
         return var_1197;
      }
   }
}
