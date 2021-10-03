package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1347:int = 10;
       
      
      private var var_1325:NavigatorSettingsMessageParser;
      
      private var var_1075:int;
      
      private var var_1626:Boolean;
      
      private var var_1627:int;
      
      private var var_725:Dictionary;
      
      private var var_2163:int;
      
      private var var_1625:int;
      
      private var var_1615:int;
      
      private var var_323:Array;
      
      private var var_1630:int;
      
      private var var_1224:Array;
      
      private var var_510:PublicRoomShortData;
      
      private var var_368:RoomEventData;
      
      private var var_126:MsgWithRequestId;
      
      private var var_1628:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1629:Boolean;
      
      private var var_191:GuestRoomData;
      
      private var var_597:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_323 = new Array();
         var_725 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1627;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1629;
      }
      
      public function startLoading() : void
      {
         this.var_597 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1629 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_368 != null)
         {
            var_368.dispose();
         }
         var_368 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_126 != null && var_126 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_126 != null && var_126 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_126 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_191;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_510 = null;
         var_191 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_510 = param1.publicSpace;
            var_368 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(var_368 != null)
         {
            var_368.dispose();
            var_368 = null;
         }
         if(var_510 != null)
         {
            var_510.dispose();
            var_510 = null;
         }
         if(var_191 != null)
         {
            var_191.dispose();
            var_191 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_126 = param1;
         var_597 = false;
         if(var_1224 == null)
         {
            var_1224 = param1.topLevelNodes;
         }
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1325;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_126 = param1;
         var_597 = false;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function getCategoryByIndex(param1:int) : FlatCategory
      {
         if(var_323.length > param1)
         {
            return var_323[param1] as FlatCategory;
         }
         return null;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2163 = param1.limit;
         this.var_1075 = param1.favouriteRoomIds.length;
         this.var_725 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_725[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_126 as PopularRoomTagsData;
      }
      
      public function get categories() : Array
      {
         return var_323;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_510;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1615 = param1;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1626;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_126 = param1;
         var_597 = false;
      }
      
      public function getCategoryIndexById(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < var_323.length)
         {
            if((var_323[_loc2_] as FlatCategory).nodeId == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_191 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_597;
      }
      
      public function set categories(param1:Array) : void
      {
         var_323 = param1;
      }
      
      public function get currentRoomRating() : int
      {
         return var_1625;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1630;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1325 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_126 == null)
         {
            return;
         }
         var_126.dispose();
         var_126 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_368;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_725[param1] = !!param2 ? "yes" : null;
         var_1075 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_126 as OfficialRoomsData;
      }
      
      public function get topLevelNodes() : Array
      {
         return var_1224;
      }
      
      public function get avatarId() : int
      {
         return var_1615;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_126 != null && var_126 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1626 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1625 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1628 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_191 != null)
         {
            var_191.dispose();
         }
         var_191 = param1;
      }
      
      public function getCategoryById(param1:int) : FlatCategory
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_323)
         {
            if(_loc2_.nodeId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_191 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1325.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1075 >= var_2163;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1630 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1628;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_191 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1627 = param1;
      }
   }
}
