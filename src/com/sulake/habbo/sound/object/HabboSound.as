package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_878:SoundChannel = null;
      
      private var var_711:Boolean;
      
      private var var_877:Sound = null;
      
      private var var_665:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_877 = param1;
         var_877.addEventListener(Event.COMPLETE,onComplete);
         var_665 = 1;
         var_711 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_711;
      }
      
      public function stop() : Boolean
      {
         var_878.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_711 = false;
         var_878 = var_877.play(0);
         this.volume = var_665;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_665;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_878.position;
      }
      
      public function get length() : Number
      {
         return var_877.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_665 = param1;
         if(var_878 != null)
         {
            var_878.soundTransform = new SoundTransform(var_665);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_711 = true;
      }
   }
}
