	
//Newly added Dateformat Validation on 16-Nov-09   by Suresh .G

/**
 * DHTML date validation script for mm/dd/yyyy. Courtesy of SmartWebby.com (http://www.smartwebby.com/dhtml/)
 */
// Declaring valid date character, minimum year and maximum year
var dtCh= "/";
var minYear=1900;
var maxYear=2100;

function isInteger(s){
	var i;
    for (i = 0; i < s.length; i++){   
        // Check that current character is number.
        var c = s.charAt(i);
        if (((c < "0") || (c > "9"))) return false;
    }
    // All characters are numbers.
    return true;
}

function stripCharsInBag(s, bag){
	var i;
    var returnString = "";
    // Search through string's characters one by one.
    // If character is not in bag, append to returnString.
    for (i = 0; i < s.length; i++){   
        var c = s.charAt(i);
        if (bag.indexOf(c) == -1) returnString += c;
    }
    return returnString;
}

function daysInFebruary (year){
	// February has 29 days in any year evenly divisible by four,
    // EXCEPT for centurial years which are not also divisible by 400.
    return (((year % 4 == 0) && ( (!(year % 100 == 0)) || (year % 400 == 0))) ? 29 : 28 );
}
function DaysArray(n) {
	for (var i = 1; i <= n; i++) {
		this[i] = 31
		if (i==4 || i==6 || i==9 || i==11) {this[i] = 30}
		if (i==2) {this[i] = 29}
   } 
   return this
}


        function isDate(dtStr){
	        var daysInMonth = DaysArray(12)
	        var pos1=dtStr.indexOf(dtCh)
	        var pos2=dtStr.indexOf(dtCh,pos1+1)
	        var strMonth=dtStr.substring(0,pos1)
	        var strDay=dtStr.substring(pos1+1,pos2)
	        var strYear=dtStr.substring(pos2+1)
	        strYr=strYear	       
	        
	        if (strDay.charAt(0)=="0" && strDay.length>1) strDay=strDay.substring(1)
	       
	        if (strMonth.charAt(0)=="0" && strMonth.length>1) strMonth=strMonth.substring(1)
	        for (var i = 1; i <= 3; i++) {
		        if (strYr.charAt(0)=="0" && strYr.length>1) strYr=strYr.substring(1)
	        }
	        month=parseInt(strMonth)
	        day=parseInt(strDay)
	        year=parseInt(strYr)
	        if (pos1==-1 || pos2==-1){
	            alert("The date format should be : mm/dd/yyyy.")
		        return false
	        }
 	       //Added on 8-12-2009
	        if(pos1>2)
	        {	        
	          alert("Please enter valid month.")
	          return false
	        } 	        
	       
	         //Added on 8-12-2009	        
	        if(dtStr.substring(pos1+1,pos2).length>2)
	        {	         
	          alert("Please enter valid day.")
	          return false
	        }
	        else if(dtStr.substring(pos1+1,pos2).length>2)
	        {
	          alert("Please enter valid day.")
	          return false
	        }
	        
	        if (strMonth.length<1 || month<1 || month>12){
		        alert("Please enter a valid month.")
		        return false
	        }
	        if (strDay.length<1 || day<1 || day>31 || (month==2 && day>daysInFebruary(year)) || day > daysInMonth[month]){
		        alert("Please enter a valid day.")
		        return false
	        }
	        if (strYear.length != 4 || year==0 || year<minYear || year>maxYear){
		        alert("Please enter a valid 4 digit year between "+minYear+" and "+maxYear +".")
		        return false
	        }
	        if (dtStr.indexOf(dtCh,pos2+1)!=-1 || isInteger(stripCharsInBag(dtStr, dtCh))==false){
		        alert("Please enter a valid date.")
		        return false
	        }
        return true
        }

////function ValidateForm(){
////	var dt=document.frmSample.txtDate
////	if (isDate(dt.value)==false){
////		dt.focus()
////		return false
////	}
////    return true
//// }
	
//Check Number 
function ValidateNumberInDate(objectId)
{
    if(objectId != null)
    {
        obj = window.event.srcElement;
        objectId = window.event.srcElement.id ;
        if((window.event.keyCode < 47 || window.event.keyCode > 57) && window.event.keyCode !=13) //added for IE8.0 Date Validation 
        {
            window.status = "Invalid Number Value.";
            window.event.returnValue = false;
        }
        else
        {
            window.status = "";
        }
    }
}	
	
//Newly added Dateformat Validation on 16-Nov-09   by Suresh .G
	
	
	
	// Check browser version
	var isNav4 = false, isNav5 = false, isIE4 = false
	var strSeperator = "/"; 
	// If you are using any Java validation on the back side you will want to use the / because 
	// Java date validations do not recognize the dash as a valid date separator.
	var vDateType = 3; // Global value for type of date format
	//                1 = mm/dd/yyyy
	//                2 = yyyy/dd/mm  (Unable to do date check at this time)
	//                3 = mm/dd/yyyy
	var vYearType = 4; //Set to 2 or 4 for number of digits in the year for Netscape
	var vYearLength = 2; // Set to 4 if you want to force the user to enter 4 digits for the year before validating.
	var err = 0; // Set the error code to a default of zero
	if(navigator.appName == "Netscape") {
	if (navigator.appVersion < "5") {
	isNav4 = true;
	isNav5 = false;
	}
	else
	if (navigator.appVersion > "4") {
	isNav4 = false;
	isNav5 = true;
	   }
	}
	else {
	isIE4 = true;
	}
	
	function CheckDateCharacter(txtInvDateID)
	{
	    if((event.keyCode>=47 && event.keyCode<=57))
	    {
            window.event.returnValue = true;
	    }
	    else
	    {
	        window.status = "Invalid Date Value";
            window.event.returnValue = false;
	    }
	}
            	
	function DateFormat(vDateName, vDateValue, e, dateCheck, dateType) {
	//  to add 0 before month and date if the month and date are single digits	

        if(vDateValue.length == 6 && vDateValue.substr(2,2) == "20")
        {
          var mInvoicedate = vDateValue.substr(0,1);          
          var dInvoicedate = vDateValue.substr(1, 1);
          var yInvoicedate = vDateValue.substr(2); 
          
          var TotalInvoicedate = "0" + mInvoicedate + '/' + "0" + dInvoicedate + '/' + yInvoicedate; 
          vDateValue =  TotalInvoicedate;
        }  
        else if(vDateValue.length == 6 && vDateValue.substr(2,2) != "20")
        {
          var mInvoicedate = vDateValue.substr(0, 2);          
          var dInvoicedate = vDateValue.substr(2, 2); 
          var yInvoicedate = vDateValue.substr(4); 

          var TotalInvoicedate = mInvoicedate + '/' + dInvoicedate + '/' + "20" + yInvoicedate; 
          vDateValue =  TotalInvoicedate;
        }
             
        
        if(vDateValue.length == 8)
        {       
          var mInvoicedate = vDateValue.substr(0, 2);          
          var dInvoicedate = vDateValue.substr(2, 2); 
          var yInvoicedate = vDateValue.substr(4); 
          var TotalInvoicedate = mInvoicedate + '/' + dInvoicedate + '/' + yInvoicedate;  
          
          if(vDateValue.indexOf("/") < 0)
          {            
            vDateValue =  TotalInvoicedate;    
          }        
        }	
	
	
    if(e.type=="keyup")
    {
        return false;
    }
    if(vDateValue == "")
    {
        return false;
    }
	
    /////////////////////////////////////////////////////////////////////////////////////
    //THis is the Block	of code for year validation	 
    //////Changed by himaja.m on 18-11-2009          
    //parseInt is added for date validation (01/02/09)
	//else part is added for date validation (11/12/09)
	//if condition for check lengths is added for date validation (011/2/09)
	///////////
	var strYearChkArray = vDateValue.split("/");
	if(strYearChkArray[0].length > 2 || strYearChkArray[1].length > 2 || strYearChkArray[2].length > 4)
    {
	    alert("Please enter a valid Date in mm/dd/yyyy format.");
        vDateName.value="";
        vDateName.select();
        return false;	                        
    }
    else if(strYearChkArray[0].length == 0 || strYearChkArray[1].length == 0 || strYearChkArray[2].length == 0)
    {
        alert("Please enter a valid Date in mm/dd/yyyy format.");
        vDateName.value="";
        vDateName.select();
        return false;	  
    }
    if(vDateValue.length == 8 && vDateValue.indexOf("/") > 0)
    { 
        var mInvoicedate;
        var dInvoicedate;
        var yInvoicedate;
        var strYearChkArray = vDateValue.split("/");
        if (strYearChkArray.length = 3) 
        {
            if(strYearChkArray[0].length > 2 || strYearChkArray[1].length > 2 || strYearChkArray[2].length > 4)
            {
                alert("Please enter a valid Date in mm/dd/yyyy format.");
                vDateName.value="";
                vDateName.select();
                return false;	                        
            }
            if(parseInt(strYearChkArray[0]) < 10)
            {	            
                mInvoicedate = "0" + parseInt(strYearChkArray[0]);     
            }
            else
            {
                mInvoicedate = strYearChkArray[0];
            }
            if(parseInt(strYearChkArray[1]) < 10)
            {           
                dInvoicedate = "0" + parseInt(strYearChkArray[1]);     
            }
            else
            {
                dInvoicedate = strYearChkArray[1];
            }
            if(strYearChkArray[2] <= 99 && strYearChkArray[2]>0)
            {               
               yInvoicedate = "20" + strYearChkArray[2];
            }
            else
            {
                YInvoicedate = strYearChkArray[2];
            }
        }
          var TotalInvoicedate = mInvoicedate + '/' + dInvoicedate + '/' + yInvoicedate; 
          vDateValue =  TotalInvoicedate;
    }
	
	/////////////////////////////////////////////////////////////////////////////////////
	//THis is the Block	of code for year validation
	if(vDateValue.length <= 10)
	{  	
	    var strYearChkArray = vDateValue.split("/");	   
	    if (strYearChkArray.length = 3) 
	    {
	        if(strYearChkArray[2] <= 1900)
	        {
	            alert("Please enter a valid Date in mm/dd/yyyy format.");
			    vDateName.value="";
			    vDateName.select();
			    return false;
	        }
	    }
	}
	//////////////////////////////////////////////////////////////////////////////////////
	
	
	// This is for blur
		// code to check date and month and add 0 before if needed
		
		ind=vDateValue.indexOf("/",0);
		if(ind==1)
			vDateValue="0"+vDateValue;
		str1=vDateValue.substr(vDateValue.indexOf("/",0)+1);
		ind1=str1.indexOf("/",0);
		if(ind1==1)
			vDateValue=vDateValue.substring(0,3)+"0"+vDateValue.substr(3);
			
		if(vDateValue.length > 10)
			vDateValue=vDateValue.substring(0,10);
		
		vDateName.value=vDateValue;
		
		
		
		
		// end for the check date and month.
		
		myDate = new Date()
		myDate.setTime(Date.parse(vDateValue))
		if(isNaN(myDate))
		{
		    alert("Please enter a valid Date in mm/dd/yyyy format.");
			vDateName.value="";
			vDateName.select();
			return false;
		}


		
		
	
	vDateType = dateType;
	// vDateName = object name
	// vDateValue = value in the field being checked
	// e = event
	// dateCheck 
	// True  = Verify that the vDateValue is a valid date
	// False = Format values being entered into vDateValue only
	// vDateType
	// 1 = mm/dd/yyyy
	// 2 = yyyy/mm/dd
	// 3 = mm/dd/yyyy
	//Enter a tilde sign for the first number and you can check the variable information.
	if (vDateValue == "~") {
	alert("AppVersion = "+navigator.appVersion+" \nNav. 4 Version = "+isNav4+" \nNav. 5 Version = "+isNav5+" \nIE Version = "+isIE4+" \nYear Type = "+vYearType+" \nDate Type = "+vDateType+" \nSeparator = "+strSeperator);
	vDateName.value = "";
	vDateName.focus();
	return false;
	}
	var whichCode = (window.Event) ? e.which : e.keyCode;
	// Check to see if a seperator is already present.
	// bypass the date if a seperator is present and the length greater than 8
	if (vDateValue.length > 8 && isNav4) {
	if ((vDateValue.indexOf("-") >= 1) || (vDateValue.indexOf("/") >= 1))
	return true;
	}
	//Eliminate all the ASCII codes that are not valid
	var alphaCheck = " abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ/-";
	if (alphaCheck.indexOf(vDateValue) >= 1) {
	if (isNav4) {
	vDateName.value = "";
	vDateName.focus();
	vDateName.select();
	return false;
	}
	else {
	         //Change for IE8 issue on 19/09/2009   
//	        vDateName.value = vDateName.value.substr(0, (vDateValue.length-1));
//	        return false;
              vDateName.value = vDateName.value.substr(0, (vDateValue.length));   
              return true;
	   }
	}
	if (whichCode == 8) //Ignore the Netscape value for backspace. IE has no value
	return false;
	else {
	//Create numeric string values for 0123456789/
	//The codes provided include both keyboard and keypad values
	var strCheck = '47,48,49,50,51,52,53,54,55,56,57,58,59,95,96,97,98,99,100,101,102,103,104,105';
	if (strCheck.indexOf(whichCode) != -1) {
	if (isNav4) {
	if (((vDateValue.length < 6 && dateCheck) || (vDateValue.length == 7 && dateCheck)) && (vDateValue.length >=1)) {
	alert("Invalid Date. Please re-enter in mm/dd/yyyy format.");
	vDateName.value="";
	vDateName.select();
	return false;
	}
	if (vDateValue.length == 6 && dateCheck) {
	var mDay = vDateName.value.substr(2,2);
	var mMonth = vDateName.value.substr(0,2);
	var mYear = vDateName.value.substr(4,4)
	//Turn a two digit year into a 4 digit year
	if (mYear.length == 2 && vYearType == 4) {
	var mToday = new Date();
	//If the year is greater than 50 years from now use 19, otherwise use 20
	var checkYear = mToday.getFullYear() + 50; 
	var mCheckYear = '20' + mYear;
	if (mCheckYear >= checkYear)
	mYear = '19' + mYear;
	else
	mYear = '20' + mYear;
	}
	var vDateValueCheck = mMonth+strSeperator+mDay+strSeperator+mYear;
	if (!dateValid(vDateValueCheck)) {
	    alert("Invalid Date. Please re-enter in mm/dd/yyyy format.");
	vDateName.value = "";
	
	vDateName.select();
	return false;
	}
	return true;
	}
	else {
	// Reformat the date for validation and set date type to a 1
	if (vDateValue.length >= 8  && dateCheck) {
	if (vDateType == 1) // mmddyyyy
	{
	var mDay = vDateName.value.substr(2,2);
	var mMonth = vDateName.value.substr(0,2);
	var mYear = vDateName.value.substr(4,4)
	vDateName.value = mMonth+strSeperator+mDay+strSeperator+mYear;
	}
	if (vDateType == 2) // yyyymmdd
	{
	var mYear = vDateName.value.substr(0,4)
	var mMonth = vDateName.value.substr(4,2);
	var mDay = vDateName.value.substr(6,2);
	vDateName.value = mYear+strSeperator+mMonth+strSeperator+mDay;
	}
	if (vDateType == 3) // ddmmyyyy
	{
	var mMonth = vDateName.value.substr(2,2);
	var mDay = vDateName.value.substr(0,2);
	var mYear = vDateName.value.substr(4,4)
	vDateName.value = mDay+strSeperator+mMonth+strSeperator+mYear;
	}
	//Create a temporary variable for storing the DateType and change
	//the DateType to a 1 for validation.
	var vDateTypeTemp = vDateType;
	vDateType = 1;
	var vDateValueCheck = mMonth+strSeperator+mDay+strSeperator+mYear;
	if (!dateValid(vDateValueCheck)) {
	    alert("Invalid Date. Please re-enter in mm/dd/yyyy format.");
	vDateType = vDateTypeTemp;
	vDateName.value = "";
	
	vDateName.select();
	return false;
	}
	vDateType = vDateTypeTemp;
	return true;
	}
	else {
	if (((vDateValue.length < 8 && dateCheck) || (vDateValue.length == 9 && dateCheck)) && (vDateValue.length >=1)) {
	    alert("Invalid Date. Please re-enter in mm/dd/yyyy format.");
	vDateName.value = "";
	
	vDateName.select();
	return false;
	         }
	      }
	   }
	}
	else {
	// Non isNav Check
	if (((vDateValue.length < 8 && dateCheck) || (vDateValue.length == 9 && dateCheck)) && (vDateValue.length >=1)) {
	    alert("Invalid Date. Please re-enter in mm/dd/yyyy format.");
	vDateName.value = "";
	vDateName.select();
	return false;
	}
	// Reformat date to format that can be validated. mm/dd/yyyy
	if (vDateValue.length >= 8 && dateCheck) {
	// Additional date formats can be entered here and parsed out to
	// a valid date format that the validation routine will recognize.
	if (vDateType == 1) // mm/dd/yyyy
	{
	var mMonth = vDateName.value.substr(0,2);
	var mDay = vDateName.value.substr(3,2);
	var mYear = vDateName.value.substr(6,4)
	}
	if (vDateType == 2) // yyyy/mm/dd
	{
	var mYear = vDateName.value.substr(0,4)
	var mMonth = vDateName.value.substr(5,2);
	var mDay = vDateName.value.substr(8,2);
	}
	if (vDateType == 3) // mm/dd/yyyy
	{
	var mDay = vDateName.value.substr(0,2);
	var mMonth = vDateName.value.substr(3,2);
	var mYear = vDateName.value.substr(6,4)
	}
	if (vYearLength == 4) 
	{
	    if (mYear.length < 4)
	    {
	        alert("Invalid Date. Please re-enter in mm/dd/yyyy format.");
	        vDateName.value = "";
	        vDateName.focus();
	        vDateName.select();
	        return false;
	   }
	}
	// Create temp. variable for storing the current vDateType
	var vDateTypeTemp = vDateType;
	// Change vDateType to a 1 for standard date format for validation
	// Type will be changed back when validation is completed.
	vDateType = 1;
	// Store reformatted date to new variable for validation.
	var vDateValueCheck = mMonth+strSeperator+mDay+strSeperator+mYear;
	    if (mYear.length == 2 && vYearType == 4 && dateCheck) 
	    {
	        //Turn a two digit year into a 4 digit year
	        var mToday = new Date();
	        //If the year is greater than 50 years from now use 19, otherwise use 20
	        var checkYear = mToday.getFullYear() + 50; 
	        var mCheckYear = '20' + mYear;
	        if (mCheckYear >= checkYear)
	        mYear = '19' + mYear;
	        else
	        mYear = '20' + mYear;
	        vDateValueCheck = mMonth+strSeperator+mDay+strSeperator+mYear;
	        // Store the new value back to the field.  This function will
	        // not work with date type of 2 since the year is entered first.
	        if (vDateTypeTemp == 1) // mm/dd/yyyy
	        vDateName.value = mMonth+strSeperator+mDay+strSeperator+mYear;
	        if (vDateTypeTemp == 3) // mm/dd/yyyy
	        vDateName.value = mDay+strSeperator+mMonth+strSeperator+mYear;
	    } 
	    if (!dateValid(vDateValueCheck)) 
	    {
	        alert("Invalid Date. Please re-enter in mm/dd/yyyy format.");
	        vDateType = vDateTypeTemp;
	        vDateName.value = "";
	        vDateName.focus();
	        vDateName.select();
	        return false;
	    }
	vDateType = vDateTypeTemp;
	return true;
	}
	    else 
	    {
	        if (vDateType == 1) 
	        {
	            if (vDateValue.length == 2) 
	            {
	            vDateName.value = vDateValue+strSeperator;
	            }
	            if (vDateValue.length == 5) 
	            {
	            vDateName.value = vDateValue+strSeperator;
	               }
	        }
	        if (vDateType == 2) 
	        {
	            if (vDateValue.length == 4) {
	            vDateName.value = vDateValue+strSeperator;
	            }
	            if (vDateValue.length == 7) {
	            vDateName.value = vDateValue+strSeperator;
	               }
	            } 
	            if (vDateType == 3) {
	            if (vDateValue.length == 2) {
	            vDateName.value = vDateValue+strSeperator;
	            }
	            if (vDateValue.length == 5) {
	            vDateName.value = vDateValue+strSeperator;
	               }
	            }
	            return true;
	               }
	        }
	        if (vDateValue.length == 10&& dateCheck)
	         {
	            if (!dateValid(vDateName))
	             {
	            // Un-comment the next line of code for debugging the dateValid() function error messages
	            //alert(err);  
	                alert("Invalid Date. Please re-enter in mm/dd/yyyy format.");
	            vDateName.value="";
	            vDateName.focus();
	            vDateName.select();
	            return false;
	             }
	         }
	        return false;
	    }
	    else 
	    {
	    // If the value is not in the string return the string minus the last
	    // key entered.
	        if (isNav4) 
	        {
	        vDateName.value = "";
	        vDateName.focus();
	        vDateName.select();
	        return false;
	        }
	        else
	        {
            //Change for IE8 issue 
            //vDateName.value = vDateName.value.substr(0, (vDateValue.length-1));
            // return false;
            vDateName.value = vDateName.value.substr(0, (vDateValue.length));
            return true;
             }
	     }
	}
	}
	function dateValid(objName) {
	var strDate;
	var strDateArray;
	var strDay;
	var strMonth;
	var strYear;
	var intday;
	var intMonth;
	var intYear;
	var booFound = false;
	var datefield = objName;
	var strSeparatorArray = new Array("-"," ","/",".");
	var intElementNr;
	// var err = 0;
	var strMonthArray = new Array(12);
	strMonthArray[0] = "Jan";
	strMonthArray[1] = "Feb";
	strMonthArray[2] = "Mar";
	strMonthArray[3] = "Apr";
	strMonthArray[4] = "May";
	strMonthArray[5] = "Jun";
	strMonthArray[6] = "Jul";
	strMonthArray[7] = "Aug";
	strMonthArray[8] = "Sep";
	strMonthArray[9] = "Oct";
	strMonthArray[10] = "Nov";
	strMonthArray[11] = "Dec";
	//strDate = datefield.value;
	strDate = objName;
	if (strDate.length < 1) {
	return true;
	}
	for (intElementNr = 0; intElementNr < strSeparatorArray.length; intElementNr++) {
	if (strDate.indexOf(strSeparatorArray[intElementNr]) != -1) {
	strDateArray = strDate.split(strSeparatorArray[intElementNr]);
	if (strDateArray.length != 3) {
	err = 1;
	return false;
	}
	else {
	strDay = strDateArray[0];
	strMonth = strDateArray[1];
	strYear = strDateArray[2];
	}
	booFound = true;
	   }
	}
	if (booFound == false) {
	if (strDate.length>5) {
	strDay = strDate.substr(0, 2);
	strMonth = strDate.substr(2, 2);
	strYear = strDate.substr(4);
	   }
	}
	//Adjustment for short years entered
	if (strYear.length == 2) {
	strYear = '20' + strYear;
	}
	strTemp = strDay;
	strDay = strMonth;
	strMonth = strTemp;
	intday = parseInt(strDay, 10);
	if (isNaN(intday)) {
	err = 2;
	return false;
	}
	intMonth = parseInt(strMonth, 10);
	if (isNaN(intMonth)) {
	for (i = 0;i<12;i++) {
	if (strMonth.toUpperCase() == strMonthArray[i].toUpperCase()) {
	intMonth = i+1;
	strMonth = strMonthArray[i];
	i = 12;
	   }
	}
	if (isNaN(intMonth)) {
	err = 3;
	return false;
	   }
	}
	intYear = parseInt(strYear, 10);
	if (isNaN(intYear)) {
	err = 4;
	return false;
	}
	if (intMonth>12 || intMonth<1) {
	err = 5;
	return false;
	}
	if ((intMonth == 1 || intMonth == 3 || intMonth == 5 || intMonth == 7 || intMonth == 8 || intMonth == 10 || intMonth == 12) && (intday > 31 || intday < 1)) {
	err = 6;
	return false;
	}
	if ((intMonth == 4 || intMonth == 6 || intMonth == 9 || intMonth == 11) && (intday > 30 || intday < 1)) {
	err = 7;
	return false;
	}
	if (intMonth == 2) {
	if (intday < 1) {
	err = 8;
	return false;
	}
	if (LeapYear(intYear) == true) {
	if (intday > 29) {
	err = 9;
	return false;
	   }
	}
	else {
	if (intday > 28) {
	err = 10;
	return false;
	      }
	   }
	}
	return true;
	}
	function LeapYear(intYear) {
	if (intYear % 100 == 0) {
	if (intYear % 400 == 0) { return true; }
	}
	else {
	if ((intYear % 4) == 0) { return true; }
	}
	return false;
	}
	//  End -->
	// this is to Date comparision


function TrimStr(str)
		{
			
					
			while(str.charAt(0)==' ')
				str=str.substring(1,str.length);
			while(str.charAt(str.length-1)==' ')
				str=str.substring(0,str.length-1);
			
			return str;
		}




function isGreaterDate(Dt1,Dt2)
{
	if(TrimStr(Dt2)=="")
	{
		dt=new Date();
		Dt2=(dt.getMonth()+1)+"/"+dt.getDate()+"/"+dt.getFullYear();
	}
	if(TrimStr(Dt1)=="" || TrimStr(Dt2)=="")
	{
		return -1
	}
	Date1=new Date(Dt1);
	Date2=new Date(Dt2);
	if(Date1.getTime() < Date2.getTime())
	{
		return 2;
	}
	if(Date1.getTime() > Date2.getTime())
	{
		return 1;
	}
	if(Date1.getTime() == Date2.getTime())
	{
		return 0;
	}	
	
}
//Added on 16-12-2009 for Checking date validation w/o alerts when clicking with Enter key before submiting  form 
function BasicDatavalid(dtStr)
{
            var daysInMonth = DaysArray(12)
	        var pos1=dtStr.indexOf(dtCh)
	        var pos2=dtStr.indexOf(dtCh,pos1+1)
	        var strMonth=dtStr.substring(0,pos1)
	        var strDay=dtStr.substring(pos1+1,pos2)
	        var strYear=dtStr.substring(pos2+1)
	        strYr=strYear	       
	        
	        if (strDay.charAt(0)=="0" && strDay.length>1) strDay=strDay.substring(1)
	       
	        if (strMonth.charAt(0)=="0" && strMonth.length>1) strMonth=strMonth.substring(1)
	        for (var i = 1; i <= 3; i++) {
		        if (strYr.charAt(0)=="0" && strYr.length>1) strYr=strYr.substring(1)
	        }
	        month=parseInt(strMonth)
	        day=parseInt(strDay)
	        year=parseInt(strYr)
	        if (pos1==-1 || pos2==-1){		       
		        return false
	        }
 	       //Added on 8-12-2009
	        if(pos1>2)
	        {  
	          return false
	        } 	        
	       
	         //Added on 8-12-2009	        
	        if(dtStr.substring(pos1+1,pos2).length>2)
	        {  
	          return false
	        }
	        else if(dtStr.substring(pos1+1,pos2).length>2)
	        {
	         
	          return false
	        }
	        
	        if (strMonth.length<1 || month<1 || month>12){
		        
		        return false
	        }
	        if (strDay.length<1 || day<1 || day>31 || (month==2 && day>daysInFebruary(year)) || day > daysInMonth[month]){
		        
		        return false
	        }
	        if (strYear.length != 4 || year==0 || year<minYear || year>maxYear){
		       
		        return false
	        }
	        if (dtStr.indexOf(dtCh,pos2+1)!=-1 || isInteger(stripCharsInBag(dtStr, dtCh))==false){
		       
		        return false
	        }
        return true

}
