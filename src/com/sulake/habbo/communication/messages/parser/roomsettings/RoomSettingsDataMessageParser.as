package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.roomsettings.FlatControllerData;
   import com.sulake.habbo.communication.messages.incoming.roomsettings.RoomSettingsData;
   
   public class RoomSettingsDataMessageParser implements IMessageParser
   {
       
      
      private var var_104:RoomSettingsData;
      
      public function RoomSettingsDataMessageParser()
      {
         super();
      }
      
      public function get data() : RoomSettingsData
      {
         return var_104;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_104 = new RoomSettingsData();
         var_104.roomId = param1.readInteger();
         var_104.name = param1.readString();
         var_104.description = param1.readString();
         var_104.doorMode = param1.readInteger();
         var_104.categoryId = param1.readInteger();
         var_104.maximumVisitors = param1.readInteger();
         var_104.maximumVisitorsLimit = param1.readInteger();
         var_104.showOwnerName = param1.readInteger() == 1;
         var_104.allowFurniMoving = param1.readInteger() == 1;
         var_104.allowTrading = param1.readInteger() == 1;
         var_104.tags = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_104.tags.push(param1.readString());
            _loc3_++;
         }
         var_104.controllers = [];
         var _loc4_:int = param1.readInteger();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            var_104.controllers.push(new FlatControllerData(param1));
            _loc5_++;
         }
         var_104.controllerCount = param1.readInteger();
         var_104.allowPets = param1.readInteger() == 1;
         var_104.allowFoodConsume = param1.readInteger() == 1;
         return true;
      }
      
      public function flush() : Boolean
      {
         var_104 = null;
         return true;
      }
   }
}
