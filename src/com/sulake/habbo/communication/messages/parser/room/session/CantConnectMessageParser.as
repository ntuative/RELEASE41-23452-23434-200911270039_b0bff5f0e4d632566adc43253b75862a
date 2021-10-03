package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1401:int = 2;
      
      public static const const_273:int = 4;
      
      public static const const_1313:int = 1;
      
      public static const const_1292:int = 3;
       
      
      private var var_911:int = 0;
      
      private var var_743:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_911;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_911 = param1.readInteger();
         if(var_911 == 3)
         {
            var_743 = param1.readString();
         }
         else
         {
            var_743 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_911 = 0;
         var_743 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_743;
      }
   }
}
