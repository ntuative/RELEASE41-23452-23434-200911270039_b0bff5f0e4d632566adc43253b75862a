package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_614:IAssetLoader;
      
      private var var_1261:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1261 = param1;
         var_614 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_614;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_614 != null)
            {
               if(true)
               {
                  var_614.dispose();
                  var_614 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1261;
      }
   }
}
