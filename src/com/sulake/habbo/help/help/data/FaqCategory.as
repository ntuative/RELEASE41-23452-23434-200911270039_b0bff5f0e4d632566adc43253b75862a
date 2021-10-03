package com.sulake.habbo.help.help.data
{
   import com.sulake.core.utils.Map;
   
   public class FaqCategory
   {
       
      
      private var var_1965:int = 0;
      
      private var var_139:Map;
      
      private var var_1181:int;
      
      private var var_1434:Date;
      
      private var var_1966:String;
      
      private var var_1191:String;
      
      public function FaqCategory(param1:int, param2:String)
      {
         super();
         var_139 = new Map();
         var_1181 = param1;
         var_1966 = param2;
      }
      
      public function get categoryId() : int
      {
         return var_1181;
      }
      
      public function get categoryTitle() : String
      {
         return var_1966;
      }
      
      public function get description() : String
      {
         return var_1191;
      }
      
      public function getAgeSeconds() : Number
      {
         if(var_1434 == null)
         {
            return new Date().valueOf();
         }
         return (new Date().valueOf() - var_1434.valueOf()) / 1000;
      }
      
      public function hasContent() : Boolean
      {
         return Boolean(hasUpdatedWithinHour());
      }
      
      public function hasItem(param1:int) : Boolean
      {
         return var_139.getValue(param1) != null;
      }
      
      public function reset() : void
      {
         if(var_139 != null)
         {
            var_139.reset();
         }
      }
      
      public function getItem(param1:int) : FaqItem
      {
         return var_139.getValue(param1);
      }
      
      public function storeItem(param1:int, param2:String, param3:String = null) : void
      {
         var _loc4_:FaqItem = getItem(param1);
         if(_loc4_ == null)
         {
            _loc4_ = new FaqItem(param1,param2,var_139.length,this);
            var_139.add(param1,_loc4_);
         }
      }
      
      public function getItemIdByIndex(param1:int) : int
      {
         var _loc2_:FaqItem = getItemByIndex(param1);
         if(_loc2_ == null)
         {
            return -1;
         }
         return _loc2_.questionId;
      }
      
      public function getQuestionTitleArray() : Array
      {
         var _loc2_:* = null;
         var _loc1_:Array = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < var_139.length)
         {
            _loc2_ = var_139.getWithIndex(_loc3_);
            _loc1_.push(_loc2_.questionText);
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function dispose() : void
      {
         if(var_139 != null)
         {
            var_139.dispose();
            var_139 = null;
         }
      }
      
      public function getItemIndex(param1:int) : int
      {
         var _loc2_:FaqItem = getItem(param1);
         if(_loc2_ == null)
         {
            return -1;
         }
         return _loc2_.index;
      }
      
      private function hasUpdatedWithinHour() : Boolean
      {
         return getAgeSeconds() < 3600;
      }
      
      public function getItemByIndex(param1:int) : FaqItem
      {
         if(param1 >= var_139.length)
         {
            return null;
         }
         return var_139.getWithIndex(param1);
      }
      
      public function setTimeStamp() : void
      {
         var_1434 = new Date();
      }
      
      public function set itemCount(param1:int) : void
      {
         var_1965 = param1;
      }
      
      public function storeItemAnswer(param1:int, param2:String) : void
      {
         var _loc3_:FaqItem = getItem(param1);
         if(_loc3_ != null)
         {
            _loc3_.answerText = param2;
         }
      }
      
      public function get itemCount() : int
      {
         if(false)
         {
            return var_1965;
         }
         return var_139.length;
      }
      
      public function set description(param1:String) : void
      {
         var_1191 = param1;
      }
   }
}
