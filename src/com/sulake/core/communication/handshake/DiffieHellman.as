package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1364:BigInteger;
      
      private var var_941:BigInteger;
      
      private var var_1765:BigInteger;
      
      private var var_1363:BigInteger;
      
      private var var_1763:BigInteger;
      
      private var var_1764:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1364 = param1;
         var_1765 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1763.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1363 = new BigInteger();
         var_1363.fromRadix(param1,param2);
         var_1763 = var_1363.modPow(var_941,var_1364);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1764.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         var_941 = new BigInteger();
         var_941.fromRadix(param1,param2);
         var_1764 = var_1765.modPow(var_941,var_1364);
         return true;
      }
   }
}
