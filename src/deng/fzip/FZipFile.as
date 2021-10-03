package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_700:int = 8;
      
      public static const const_1455:int = 10;
      
      public static const const_1322:int = 6;
      
      private static var var_956:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1309:int = 0;
      
      public static const const_1468:int = 1;
      
      public static const const_1518:int = 2;
      
      public static const const_1416:int = 3;
      
      public static const const_1446:int = 4;
      
      public static const const_1405:int = 5;
      
      public static const const_1432:int = 9;
      
      public static const const_1430:int = 7;
       
      
      private var var_174:uint = 0;
      
      private var var_957:uint = 0;
      
      private var var_638:Date;
      
      private var var_1867:int = -1;
      
      private var parseFunc:Function;
      
      private var var_461:Boolean = false;
      
      private var var_2179:int = -1;
      
      private var var_1165:uint = 0;
      
      private var var_1868:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_788:uint;
      
      private var var_33:ByteArray;
      
      private var var_637:uint;
      
      private var var_1400:Boolean = false;
      
      private var var_2178:int = -1;
      
      private var var_1401:String = "2.0";
      
      private var var_173:Boolean = false;
      
      private var var_1869:Boolean = false;
      
      private var var_330:String;
      
      private var var_535:uint = 0;
      
      private var var_1164:int = 0;
      
      private var var_386:String = "";
      
      private var var_636:int = 8;
      
      private var var_1402:Boolean = false;
      
      public function FZipFile(param1:String = "utf-8")
      {
         parseFunc = parseFileHead;
         super();
         var_330 = param1;
         _extraFields = new Dictionary();
         var_33 = new ByteArray();
         var_33.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_535;
      }
      
      public function set filename(param1:String) : void
      {
         var_386 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_173 && false)
         {
            var_33.position = 0;
            if(var_956)
            {
               var_33.uncompress.apply(var_33,["deflate"]);
            }
            else
            {
               var_33.uncompress();
            }
            var_33.position = 0;
            var_173 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_386;
      }
      
      public function get date() : Date
      {
         return var_638;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && parseFunc(param1))
         {
         }
         return parseFunc === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1402)
         {
            parseFunc = parseFileIdle;
            throw new Error("Data descriptors are not supported.");
         }
         if(var_174 == 0)
         {
            parseFunc = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_174)
            {
               return false;
            }
            parseContent(param1);
            parseFunc = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1401;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_173)
         {
            uncompress();
         }
         var_33.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_33.readUTFBytes(var_33.bytesAvailable);
         }
         else
         {
            _loc3_ = var_33.readMultiByte(var_33.bytesAvailable,param2);
         }
         var_33.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_636 === const_700 && !var_1400)
         {
            if(var_956)
            {
               param1.readBytes(var_33,0,var_174);
            }
            else
            {
               if(!var_461)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               var_33.writeByte(120);
               _loc2_ = uint(~var_1867 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_33.writeByte(_loc2_);
               param1.readBytes(var_33,2,var_174);
               var_33.position = var_33.length;
               var_33.writeUnsignedInt(var_788);
            }
            var_173 = true;
         }
         else
         {
            if(var_636 != const_1309)
            {
               throw new Error("Compression method " + var_636 + " is not supported.");
            }
            param1.readBytes(var_33,0,var_174);
            var_173 = false;
         }
         var_33.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_957 + var_1165 > 0)
            {
               parseFunc = parseFileHeadExt;
            }
            else
            {
               parseFunc = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_33.length = 0;
         var_33.position = 0;
         var_173 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_33.writeUTFBytes(param1);
            }
            else
            {
               var_33.writeMultiByte(param1,param2);
            }
            var_637 = ChecksumUtil.CRC32(var_33);
            var_461 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_638 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1164 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1164 << 8 | 20);
         param1.writeShort(var_330 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_700);
         var _loc5_:Date = var_638 != null ? var_638 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_637);
         param1.writeUnsignedInt(var_174);
         param1.writeUnsignedInt(var_535);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_330 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_386);
         }
         else
         {
            _loc8_.writeMultiByte(var_386,var_330);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_461)
            {
               _loc16_ = var_173;
               if(_loc16_)
               {
                  uncompress();
               }
               var_788 = ChecksumUtil.Adler32(var_33,0,var_33.length);
               var_461 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_788);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_330 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_1868);
            }
            else
            {
               _loc8_.writeMultiByte(var_1868,var_330);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_174 > 0)
         {
            if(var_956)
            {
               _loc13_ = 0;
               param1.writeBytes(var_33,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_33,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_174;
      }
      
      protected function compress() : void
      {
         if(!var_173)
         {
            if(false)
            {
               var_33.position = 0;
               var_535 = var_33.length;
               if(var_956)
               {
                  var_33.compress.apply(var_33,["deflate"]);
                  var_174 = var_33.length;
               }
               else
               {
                  var_33.compress();
                  var_174 = -6;
               }
               var_33.position = 0;
               var_173 = true;
            }
            else
            {
               var_174 = 0;
               var_535 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_957 + var_1165)
         {
            parseHeadExt(param1);
            parseFunc = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_330 == "utf-8")
         {
            var_386 = param1.readUTFBytes(var_957);
         }
         else
         {
            var_386 = param1.readMultiByte(var_957,var_330);
         }
         var _loc2_:uint = var_1165;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               throw new Error("Parse error in file " + var_386 + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_788 = param1.readUnsignedInt();
               var_461 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1164 = _loc2_ >> 8;
         var_1401 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_636 = param1.readUnsignedShort();
         var_1400 = (_loc3_ & 1) !== 0;
         var_1402 = (_loc3_ & 8) !== 0;
         var_1869 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_330 = "utf-8";
         }
         if(var_636 === const_1322)
         {
            var_2178 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2179 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_636 === const_700)
         {
            var_1867 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_638 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_637 = param1.readUnsignedInt();
         var_174 = param1.readUnsignedInt();
         var_535 = param1.readUnsignedInt();
         var_957 = param1.readUnsignedShort();
         var_1165 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_33,0,param1.length);
            var_637 = ChecksumUtil.CRC32(var_33);
            var_461 = false;
         }
         else
         {
            var_33.length = 0;
            var_33.position = 0;
            var_173 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_386 + "\n  date:" + var_638 + "\n  sizeCompressed:" + var_174 + "\n  sizeUncompressed:" + var_535 + "\n  versionHost:" + var_1164 + "\n  versionNumber:" + var_1401 + "\n  compressionMethod:" + var_636 + "\n  encrypted:" + var_1400 + "\n  hasDataDescriptor:" + var_1402 + "\n  hasCompressedPatchedData:" + var_1869 + "\n  filenameEncoding:" + var_330 + "\n  crc32:" + var_637.toString(16) + "\n  adler32:" + var_788.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_173)
         {
            uncompress();
         }
         return var_33;
      }
   }
}
