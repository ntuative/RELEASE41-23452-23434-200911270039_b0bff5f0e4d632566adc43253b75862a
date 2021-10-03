package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_693:IWindowContainer;
      
      private var var_1020:ITextWindow;
      
      private var var_205:RoomSettingsCtrl;
      
      private var var_1272:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var var_490:Timer;
      
      private var var_1270:ITextWindow;
      
      private var var_346:IWindowContainer;
      
      private var var_2110:IWindowContainer;
      
      private var var_2109:ITextWindow;
      
      private var var_847:IWindowContainer;
      
      private var var_1494:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_648:ITextWindow;
      
      private var var_1498:IWindowContainer;
      
      private var var_1271:IWindowContainer;
      
      private var var_848:ITextWindow;
      
      private var var_1019:ITextFieldWindow;
      
      private var var_300:IWindowContainer;
      
      private var var_849:ITextWindow;
      
      private var var_1497:IButtonWindow;
      
      private var var_1021:ITextWindow;
      
      private var var_2207:int;
      
      private var var_1269:IContainerButtonWindow;
      
      private var var_850:IWindowContainer;
      
      private var var_1273:ITextWindow;
      
      private var var_1267:IContainerButtonWindow;
      
      private var var_1496:ITextWindow;
      
      private var var_1495:IButtonWindow;
      
      private var var_952:TagRenderer;
      
      private var var_1833:ITextWindow;
      
      private var var_345:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_692:ITextWindow;
      
      private var var_271:RoomThumbnailCtrl;
      
      private var var_1268:IContainerButtonWindow;
      
      private var var_2111:IWindowContainer;
      
      private var var_272:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_345 = new RoomEventViewCtrl(_navigator);
         var_205 = new RoomSettingsCtrl(_navigator,this,true);
         var_271 = new RoomThumbnailCtrl(_navigator);
         var_952 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_205);
         var_490 = new Timer(6000,1);
         var_490.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function method_7() : void
      {
         this.var_205.active = true;
         this.var_345.active = false;
         this.var_271.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1494.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1495.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1498.visible = Util.hasVisibleChildren(var_1498);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_648.text = param1.roomName;
         var_648.height = NaN;
         _ownerName.text = param1.ownerName;
         var_848.text = param1.description;
         var_952.refreshTags(var_346,param1.tags);
         var_848.visible = false;
         if(param1.description != "")
         {
            var_848.height = NaN;
            var_848.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_346,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_346,"thumb_down",_loc3_,onThumbDown,0);
         var_2109.visible = _loc3_;
         var_849.visible = !_loc3_;
         var_1496.visible = !_loc3_;
         var_1496.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_346,"home",param2,null,0);
         _navigator.refreshButton(var_346,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_346,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_648.y,0);
         var_346.visible = true;
         var_346.height = Util.getLowestPoint(var_346);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_346,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(0,_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1497.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1272.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1268.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1269.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1267.visible = _navigator.data.canEditRoomSettings && param1;
         var_1271.visible = Util.hasVisibleChildren(var_1271);
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_490.reset();
         this.var_345.active = false;
         this.var_205.active = false;
         this.var_271.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_45,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this.var_490.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_490.reset();
         this.var_345.active = false;
         this.var_205.active = false;
         this.var_271.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_45,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_346,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_300);
         var_300.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_205.refresh(var_300);
         this.var_271.refresh(var_300);
         Util.moveChildrenToColumn(var_300,["room_details","room_buttons"],0,2);
         var_300.height = Util.getLowestPoint(var_300);
         var_300.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1019.setSelection(0,var_1019.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_272);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_345.refresh(var_272);
         if(Util.hasVisibleChildren(var_272) && !this.var_271.active)
         {
            Util.moveChildrenToColumn(var_272,["event_details","event_buttons"],0,2);
            var_272.height = Util.getLowestPoint(var_272);
            var_272.visible = true;
         }
         else
         {
            var_272.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this.var_490.reset();
         this.var_345.active = true;
         this.var_205.active = false;
         this.var_271.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(0,_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         var_490.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_1020.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1020.height = NaN;
         var_1270.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1270.height = NaN;
         Util.moveChildrenToColumn(var_693,["public_space_name","public_space_desc"],var_1020.y,0);
         var_693.visible = true;
         var_693.height = Math.max(86,Util.getLowestPoint(var_693));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_850.visible = true;
            var_1019.text = this.getEmbedData();
         }
         else
         {
            var_850.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_490.reset();
         this.var_205.load(param1);
         this.var_205.active = true;
         this.var_345.active = false;
         this.var_271.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_490.reset();
         this.var_205.active = false;
         this.var_345.active = false;
         this.var_271.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_67,false);
         _window.setParamFlag(HabboWindowParam.const_1098,true);
         var_300 = IWindowContainer(find("room_info"));
         var_346 = IWindowContainer(find("room_details"));
         var_693 = IWindowContainer(find("public_space_details"));
         var_2111 = IWindowContainer(find("owner_name_cont"));
         var_2110 = IWindowContainer(find("rating_cont"));
         var_1271 = IWindowContainer(find("room_buttons"));
         var_648 = ITextWindow(find("room_name"));
         var_1020 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_848 = ITextWindow(find("room_desc"));
         var_1270 = ITextWindow(find("public_space_desc"));
         var_1021 = ITextWindow(find("owner_caption"));
         var_849 = ITextWindow(find("rating_caption"));
         var_2109 = ITextWindow(find("rate_caption"));
         var_1496 = ITextWindow(find("rating_txt"));
         var_272 = IWindowContainer(find("event_info"));
         var_847 = IWindowContainer(find("event_details"));
         var_1498 = IWindowContainer(find("event_buttons"));
         var_1833 = ITextWindow(find("event_name"));
         var_692 = ITextWindow(find("event_desc"));
         var_1272 = IContainerButtonWindow(find("add_favourite_button"));
         var_1268 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1269 = IContainerButtonWindow(find("make_home_button"));
         var_1267 = IContainerButtonWindow(find("unmake_home_button"));
         var_1497 = IButtonWindow(find("room_settings_button"));
         var_1494 = IButtonWindow(find("create_event_button"));
         var_1495 = IButtonWindow(find("edit_event_button"));
         var_850 = IWindowContainer(find("embed_info"));
         var_1273 = ITextWindow(find("embed_info_txt"));
         var_1019 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1272,onAddFavouriteClick);
         Util.setProcDirectly(var_1268,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1497,onRoomSettingsClick);
         Util.setProcDirectly(var_1269,onMakeHomeClick);
         Util.setProcDirectly(var_1267,onUnmakeHomeClick);
         Util.setProcDirectly(var_1494,onEventSettingsClick);
         Util.setProcDirectly(var_1495,onEventSettingsClick);
         Util.setProcDirectly(var_1019,onEmbedSrcClick);
         _navigator.refreshButton(var_1272,"favourite",true,null,0);
         _navigator.refreshButton(var_1268,"favourite",true,null,0);
         _navigator.refreshButton(var_1269,"home",true,null,0);
         _navigator.refreshButton(var_1267,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_300,onHover);
         Util.setProcDirectly(var_272,onHover);
         var_1021.width = var_1021.textWidth;
         Util.moveChildrenToRow(var_2111,["owner_caption","owner_name"],var_1021.x,var_1021.y,3);
         var_849.width = var_849.textWidth;
         Util.moveChildrenToRow(var_2110,["rating_caption","rating_txt"],var_849.x,var_849.y,3);
         var_1273.height = NaN;
         Util.moveChildrenToColumn(var_850,["embed_info_txt","embed_src_txt"],var_1273.y,2);
         var_850.height = Util.getLowestPoint(var_850) + 5;
         var_2207 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1833.text = param1.eventName;
         var_692.text = param1.eventDescription;
         var_952.refreshTags(var_847,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_692.visible = false;
         if(param1.eventDescription != "")
         {
            var_692.height = NaN;
            var_692.y = Util.getLowestPoint(var_847) + 2;
            var_692.visible = true;
         }
         var_847.visible = true;
         var_847.height = Util.getLowestPoint(var_847);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_791,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
