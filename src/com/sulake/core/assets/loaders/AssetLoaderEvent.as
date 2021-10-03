package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_908:String = "AssetLoaderEventUnload";
      
      public static const const_47:String = "AssetLoaderEventError";
      
      public static const const_822:String = "AssetLoaderEventOpen";
      
      public static const const_900:String = "AssetLoaderEventProgress";
      
      public static const const_942:String = "AssetLoaderEventStatus";
      
      public static const const_30:String = "AssetLoaderEventComplete";
       
      
      private var var_352:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_352 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_352;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_352);
      }
   }
}
