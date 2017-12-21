pragma solidity ^0.4.18;

contract Custom {
    
   //string list;
   //uint count = 0;
   
   
   /*string dc;
   string vol;
   string ref;
   uint rc;
   
   
   string list1 = 'food';
   string list2 = 'water';
   string list3 = 'bandages';
   string list4 = 'cloth';
    uint [] myid;             //same implimentation of c code as per in module3 other implimentations i.e to store whether it is food or what
   uint [] identity;            // to store its pack id relative to position based on myid algorithm below 105 line
    uint c = 0;
  */
   uint x;          //to track what list food or cloth
   uint y;          // to track package id  
   uint list;
   uint pack;
   
   string hq = 'Red Cross';
   uint [] myid;
   uint [] vol;
   uint [] ref;
   uint [] rc;
   uint [] dc;



// implimentation involving strings
// seems to be problem with string length as well as index access 
//even so code from 40-91 using 2 arrays 
// from algorithm 105 implementation same as shown in foder module3 other implementations c code- tracker app using single array 

  /*
   function setList(string _list) public {
       list = _list;
       stringsEqual(_list);
   }
   
   
   function stringsEqual(string _b) public {
		
		
		 for (uint i = 0; i < 4; i ++)    //for food length func shows error
			if (list1 [i] != _b [i])
				c++;
			if (c==1)
			    {
			            c = 0;
			            myid.push(1);       // for food 1 cloth 2 bandages 3 waters 4 and so on we have in this
			    }
		
		 for (i = 0; i < 5; i ++)    // for cloth length
			if (list2 [i] != _b [i])
				c++;
			if (c==1)
			    {
			            c = 0;
			            myid.push(2);       // for food 1 cloth 2 bandages 3 waters 4 and so on we have in this
			    }
		 
		 for (i = 0; i < 8; i ++)    
			if (list3 [i] != _b [i])
				c++;
			if (c==1)
			    {
			            c = 0;
			            myid.push(3);       // for food 1 cloth 2 bandages 3 waters 4 and so on we have in this
			    }
		 
		 for (i = 0; i < 6; i ++)    //for waters length 
			if (list4 [i] != _b [i])
				c++;
			if (c==1)
			    {
			            c = 0;
			            myid.push(4);       // for food 1 cloth 2 bandages 3 water 4 and so on we have in this
			    }
		
	}
	
	
	
    function setidentity(uint _identi) public {
        identity.push(_identi);                 //to save pack id so that i can track individual items
    }                                       // process if user enters food it is saved 1 in myid and its packid in identity
    
   
   
  /*
  
   
   */



// original implementation as per tracker code that works for all instance

// algorithm implementation using one array   

// myid -like det array in c code previously
// in this i have set value of products each can hold to be 100 for implicity
// say for food I set base to 1 for cloth 100 base and so on i.e each with 100 below are of food below 200 above 100 are of cloth etc
// we can extract package id by removing base value from each ie if value is 105 it means cloth and packid is 5 just minus 100 
// if its package id is 5 and item is cloth then value of 100+5 is saved in myid indicating sice above 100 and less than 200 it is cloth and id is 5 
 //say if one want to track water with pack id 4 then we check the myid first for 304 
 // if index value is 6 then retrive all the values of index 6 elements of respective array of vol ref rc etc this gives the path
 //then check corresponding index value of identity say both index are 4 then the path of the item is hr[4] dc[4] vol[4] vcc[4]




// since there is no array of strings
// user will be prompt with 1.chicago 2.india 3. guntur where he enters and we save it thus creating the array

// list and rest are also the same 1.food 2.cloth 3.water 4.bandages ... so for vol rc dc ref we need to ... 
//for voll also we provide 1.john 2.sai etc.... so these are int variables prompting user to enter 














   function setList(uint _list) public {
       list = _list;
    
   }
   
   function setPack(uint _pack) public {
       pack = _pack;
       uint c = 1;
       
       
   
       if (list == 1)
			    {
			            
			            myid.push(_pack);       // for food num itself is used to identify base 0
			            
			    }
		if (list==2)
		    {
		            
		            c = _pack + 100;
		            myid.push(c);
		    }
		    
        if (list==3)
		    {
		            
		            c = _pack + 200;
		            myid.push(c);
		    }
		
		if (list==4)
		    {
		            
		            c = _pack + 300;
		            myid.push(c);
		    }
		   
		    
       
   }
   
   
   // det array created
   
   // input elements into arrays of vol ref dc rc etc all are command like 1 for chicago enter 2 for landon etc
   
   function setDc(uint _dc) public {
       dc.push(_dc);
   }
   
   
   function setVol(uint _vol) public {
       vol.push(_vol);
   }
   
  /* function increment() public {     //no need we can use total length of myid
       count = count+1;
   }
   */
   
   function setRef(uint _ref) public {
       ref.push(_ref);
   }
   
   function setRc(uint _rc) public {
       rc.push(_rc);
   }
   
   // x and y are list and pack id entered by user to track
   
   function setx(uint _x) public {
       x = _x;
   }
   
   function sety(uint _y) public {
       y = _y;
   }
   
   
   // for output x+y computed and index in myid is verified and if index is j then rc[j] ref[j] ... are the answers to retrive
   
   
   function getList() public constant returns (uint) {
       if (x == 2)
            x=x+100;
	            
		if( x==3)
		    x=x+200;
			  
		if (x==4)
		    x=x+300;
		    
		   
       return (x);
   }
   
   function getPack() public constant returns (uint) {
       return (y);
   }
   
   function getHq() public constant returns (string) {
       return (hq);
   }
   
   
   
   function getDc() public constant returns (uint) {
       uint j = 0;
       
       j = x + y;
       for (uint i = 0; i < myid.length; i ++)    
			if (myid [i] == j)
			    return (dc[i]);
   }
   
   
   function getVol() public constant returns (uint) {
       uint j = 0;
       j = x + y;
       for (uint i = 0; i < myid.length; i ++)    
			if (myid [i] == j)
			    return (vol[i]);
   }
    
    
    function getRef() public constant returns (uint) {
       uint j = 0;
       j = x + y;
       for (uint i = 0; i < myid.length; i ++)    
			if (myid [i] == j)
			    return (ref[i]);
   }

    
   
  
   function getRc() public constant returns (uint) {
       uint j = 0;
       j = x + y;
       for (uint i = 0; i < myid.length; i ++)    
			if (myid [i] == j)
			    return (rc[i]);
   }
   
   
   
   
   
   // to send
   // say user enter cloth pack id =10 x=100 y=10 z=110 and myid[0]=110  enters all the details saved in rc[0] vol[0] ref[0] etc
   //to track x y inputs 
   // z=110 checks for myid returns index 0 so path is rc[0] vol[0] etc or if index returned by myid is4 then rc[4] etc is the path
   
   
   
   
   
}