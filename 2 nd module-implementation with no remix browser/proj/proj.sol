pragma solidity ^0.4.18;

contract Custom {
    
   string list;
   uint pack;
   uint count = 0;
   string hq = 'Red Cross';
   string dc;
   string vol;
   string ref;
   uint rc;
   
   function setList(string _list) public {
       list = _list;
   }
   
   function setDc(string _dc) public {
       dc = _dc;
   }
   
   function setVol(string _vol) public {
       vol = _vol;
   }
   
   function increment() public {
       count = count+1;
   }
   
   function setRef(string _ref) public {
       ref = _ref;
   }
   
   function setPack(uint _pack) public {
       pack = _pack;
   }
   
   function setRc(uint _rc) public {
       rc = _rc;
   }
   
   function getList() public constant returns (string) {
       return (list);
   }
   
   function getHq() public constant returns (string) {
       return (hq);
   }
    
    function getDc() public constant returns (string) {
       return (dc);
   }
   
   function getVol() public constant returns (string) {
       return (vol);
   }
   
   function getRef() public constant returns (string) {
       return (ref);
   }
   
   function getPack() public constant returns (uint) {
       return (pack);
   }
   
   function getRc() public constant returns (uint) {
       return (rc);
   }
   
   function get() public constant returns (uint) {
       return (count);
   }
   
}
