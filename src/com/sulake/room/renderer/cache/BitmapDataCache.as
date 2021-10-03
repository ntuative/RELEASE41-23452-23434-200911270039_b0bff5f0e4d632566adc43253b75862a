package com.sulake.room.renderer.cache
{
   import com.sulake.core.utils.Map;
   import flash.display.BitmapData;
   
   public class BitmapDataCache
   {
       
      
      private var var_1632:int = 0;
      
      private var var_436:int = 0;
      
      private var var_316:Array;
      
      private var var_317:Map;
      
      public function BitmapDataCache(param1:uint)
      {
         super();
         var_317 = new Map();
         var_316 = [];
         var_1632 = param1;
      }
      
      public function addBitmapData(param1:String, param2:BitmapData) : void
      {
         var _loc4_:* = null;
         if(param2 == null)
         {
            return;
         }
         var _loc3_:BitmapDataCacheItem = var_317.getValue(param1) as BitmapDataCacheItem;
         if(_loc3_ != null)
         {
            _loc4_ = _loc3_.bitmapData;
            if(_loc4_ != null)
            {
               var_436 -= _loc4_.width * _loc4_.height * 4;
            }
            _loc3_.bitmapData = param2;
         }
         else
         {
            _loc3_ = new BitmapDataCacheItem(param2,param1);
            var_317.add(param1,_loc3_);
            var_316.push(_loc3_);
         }
         var_436 += param2.width * param2.height * 4;
      }
      
      public function compress() : void
      {
         var_316.sortOn("useCount",0 | 0);
         var _loc1_:* = null;
         var _loc2_:int = 0;
         if(memUsage > memLimit)
         {
            _loc2_ = -1;
            while(_loc2_ >= 0)
            {
               _loc1_ = var_316[_loc2_] as BitmapDataCacheItem;
               if(_loc1_.useCount == 0)
               {
                  var_316.splice(_loc2_,1);
                  method_1(_loc1_);
               }
               _loc2_--;
            }
         }
         while(memUsage > memLimit)
         {
            _loc1_ = var_316.pop() as BitmapDataCacheItem;
            if(_loc1_ == null)
            {
               break;
            }
            method_1(_loc1_);
         }
         _loc2_ = 0;
         while(_loc2_ < var_316.length)
         {
            _loc1_ = var_316[_loc2_] as BitmapDataCacheItem;
            if(_loc1_ != null)
            {
               _loc1_.resetCount();
            }
            _loc2_++;
         }
      }
      
      public function get memUsage() : int
      {
         return var_436;
      }
      
      public function get memLimit() : int
      {
         return var_1632;
      }
      
      public function getBitmapData(param1:String) : BitmapData
      {
         var _loc2_:BitmapDataCacheItem = var_317.getValue(param1) as BitmapDataCacheItem;
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.bitmapData;
      }
      
      private function method_1(param1:BitmapDataCacheItem) : void
      {
         var _loc2_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1 = var_317.remove(param1.name) as BitmapDataCacheItem;
         if(param1 != null)
         {
            _loc2_ = param1.bitmapData;
            if(_loc2_ != null)
            {
               var_436 -= _loc2_.width * _loc2_.height * 4;
            }
            param1.dispose();
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(var_317 != null)
         {
            _loc1_ = 0;
            while(_loc1_ < var_317.length)
            {
               _loc2_ = var_317.getWithIndex(_loc1_) as BitmapDataCacheItem;
               if(_loc2_ != null)
               {
                  _loc2_.dispose();
               }
               _loc1_++;
            }
            var_317.dispose();
            var_317 = null;
         }
         var_316 = null;
      }
   }
}
