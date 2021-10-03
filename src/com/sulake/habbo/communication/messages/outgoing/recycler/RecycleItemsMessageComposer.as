package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_783:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_783 = new Array();
         var_783.push(param1.length);
         var_783 = var_783.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_783;
      }
   }
}
