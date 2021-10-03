package com.sulake.habbo.avatar.actions
{
   public class ActiveActionData implements IActiveActionData
   {
       
      
      private var var_1050:String = "";
      
      private var var_769:IActionDefinition;
      
      private var _actionParameter:String = "";
      
      public function ActiveActionData(param1:String, param2:String = "")
      {
         super();
         var_1050 = param1;
         _actionParameter = param2;
      }
      
      public function set actionParameter(param1:String) : void
      {
         _actionParameter = param1;
      }
      
      public function dispose() : void
      {
         var_1050 = null;
         _actionParameter = null;
         var_769 = null;
      }
      
      public function get actionType() : String
      {
         return var_1050;
      }
      
      public function get actionParameter() : String
      {
         return _actionParameter;
      }
      
      public function set definition(param1:IActionDefinition) : void
      {
         var_769 = param1;
      }
      
      public function get definition() : IActionDefinition
      {
         return var_769;
      }
      
      public function get id() : String
      {
         if(var_769 == null)
         {
            return "";
         }
         return "undefined_" + _actionParameter;
      }
   }
}
