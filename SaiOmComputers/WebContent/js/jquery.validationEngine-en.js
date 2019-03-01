(function($){
    $.fn.validationEngineLanguage = function(){
    };
    $.validationEngineLanguage = {
        newLang: function(){
            $.validationEngineLanguage.allRules = {
                "required": { // Add your regex rules here, you can take telephone as an example
                    "regex": "none",
                    "alertText": "* This field is required",
                    "alertTextCheckboxMultiple": "* Please select an option",
                    "alertTextCheckboxe": "* This checkbox is required",
                    "alertTextDateRange": "* Both date range fields are required"
                },
                
                "dateRange": {
                    "regex": "none",
                    "alertText": "* Invalid ",
                    "alertText2": "Date Range"
                },
                "dateTimeRange": {
                    "regex": "none",
                    "alertText": "* Invalid ",
                    "alertText2": "Date Time Range"
                },
                "minSize": {
                    "regex": "none", 
                   "alertText": "* Minimum ",
                    "alertText2": " characters allowed"
                },
                
                "dateFmtDD": {
                    "regex": /^(([0-2][0-9])|([3][0-1]))-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec|JAN|FEB|MAR|APR|MAY|JUN|JUL|AUG|SEP|OCT|NOV|DEC)-\d{4}$/,
                    "alertText": "* Invalid date format. Please enter date in DD-Mon-YYYY format.",
                },
                
        		"decimal2place":{
                    "regex" : /^\d{0,15}$|^\d{0,15}\.\d{2}$/,
                    "alertText" : "Numeric value with 2 decimal places allowed"
                   },
                   
               "decimal3place":{
                       "regex" : /^\d{0,15}$|^\d{0,15}\.\d{3}$/,
                       "alertText" : "Numeric value with 3 decimal places allowed"
                      },
                      
                "industryTyp":{
                	"regex" : /^[a-zA-Z0-9 &)(-\.]+$/,
                	"alertText" : "Alphabets, digits, dot, &, () and - allowed."
                },
                "ZIP" : {
                	"regex" : /^[0-9A-Z -]{3,10}$/,
                	"alertText" : "* Please Enter valid ZIP Code."
                }, 
			
                "decimal2place15DigitMax":{
                    "regex" : /^\d{0,12}$|^\d{0,12}\.\d{2}$/,
                    "alertText" : "Numeric value with 2 decimal places allowed Maximum Characters 15"
                   },
               "decimal2place13DigitMax":{
                   "regex" : /^\d{0,13}$|^\d{0,13}\.\d{2}$/,
                   "alertText" : "Numeric value with 2 decimal places allowed Maximum Characters 15"
                  },
              /*  "minSize1": {
                    "regex": "none",
                   "alertText": "* ",
                   "alertText2": " characters allowed"
                },
                 */
                "maxSize": {
                    "regex": "none",
                    "alertText": "* Maximum ",
                    "alertText2": " characters allowed"
                },
				"groupRequired": {
                    "regex": "none",
                    "alertText": "* You must fill one of the following fields"
                },
                "min": {
                    "regex": "none",
                    "alertText": "* Minimum value is "
                   
                },
                "max": {
                    "regex": "none",
                    "alertText": "* Maximum value is "
                },
                "past": {
                    "regex": "none",
                    "alertText": "* Date prior to "
                },
                "future": {
                    "regex": "none",
                    "alertText": "* Date past "
                },	
                "maxCheckbox": {
                    "regex": "none",
                    "alertText": "* Maximum ",
                    "alertText2": " options allowed"
                },
                "minCheckbox": {
                    "regex": "none",
                    "alertText": "* Please select ",
                    "alertText2": " options"
                },
                "equals": {
                    "regex": "none",
                    "alertText": "* Fields do not match"
                },
                
                "address": {
                    // credit: jquery.h5validate.js / orefalo//^[a-zA-Z0-9-,_:#./\ ]+$
                	"regex" : /^(?!-)(?!.*--)[a-zA-Z0-9 ,:\._\-#\/]+$/,
                    "alertText": "Only charcter, number, -,_,#,.,:,/ and space allowed "
               
                },
                "companyName" : {
					"regex" : /^[a-zA-Z0-9 _&\.\/]+$/,
					"alertText" : "* Alphabet, number, space, '_', '&' and '.' allowed."
				},
				"compName" : {
					"regex" : /^[a-zA-Z0-9 _\-\&\.\/]+$/,
					"alertText" : "* Alphabet, number, space, '_','-', '&' and '.' allowed."
				},
				 "companyNM" : {
						"regex" : /^[a-zA-Z0-9\,.:\_\-\#\/\&\ ]+$/,
						"alertText" : "* Alphabet, number, space, '_','-', '&' and '.' allowed."
					},
                "address11": {
                    // credit: jquery.h5validate.js / orefalo//^[a-zA-Z0-9-,_:#./\ ]+$
                	"regex" : "^([a-zA-Z]+(_[a-zA-Z]+)*)(\\s([a-zA-Z]+(_[a-zA-Z]+)*))*$",
                    "alertText": "Letters with single space between words allowed "
                },
                "onlyLetterSingleSpSl": {
                    // credit: Secret
                	"regex" : "^([a-zA-Z&_\.]+([\/]*[a-zA-Z&_\.]+)*)( [a-zA-Z&_\.]+([\/]*[a-zA-Z&_\.]+)*)*$",
                    "alertText": "Letters, '/', '&', '_', '.'  with single space between words allowed."
                },
                
                "phone": {
                    // credit: jquery.h5validate.js / orefalo
                    "regex": /^([\.][0-9]{1,3}[ \+\-])?([\(]{1}[0-9]{2,6}[\)])?([0-9 \+\-\/]{3,20})((x|ext|extension)[ ]?[0-9]{1,4})?$/,
                    "alertText": "* Invalid phone number"
                },
                "fax": {
                    // credit: jquery.h5validate.js / orefalo
                    "regex": /^([\.][0-9]{1,3}[ \+\-])?([\(]{1}[0-9]{2,6}[\)])?([0-9 \+\-\/]{3,20})((x|ext|extension)[ ]?[0-9]{1,4})?$/,
                    "alertText": "* Invalid fax number"
                },
                "email": {
                    // Shamelessly lifted from Scott Gonzalez via the Bassistance Validation plugin http://projects.scottsplayground.com/email_address_validation/
                    "regex": /^[_A-Za-z0-9-\+]+(\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\.[A-Za-z0-9]+)*(\.[A-Za-z]{2,})$/,
                    "alertText": "* Invalid email address"
                },
				"integer" : {
					"regex" : /^[0-9]+$/,
					"alertText": "* Not a valid integer"
				},
				 "roundfigure": {
	                    "regex": /^[\-\+]?\d+$/,
	                	//"regex": /^([0-9]+)*(\.[0]{2})?/,
	                    "alertText": "* Round figure amount only"
	                },
				"number" : {
					// Number, including positive, negative, and floating
					// decimal. credit: orefalo
					"regex" : /^[0-9.]+$/,
					"alertText" : "* Please Enter Numeric Value here"
				},
				
				"number2" : {
					// Number, including positive, negative, and floating
					// decimal. credit: orefalo
					"regex" : /^[0-9]+$/,
					"alertText" : "* Please Enter Only Numeric Value here"
				},
				
				"personName" : {
					"regex" :/^[a-zA-Z \.]+$/,
					"alertText":"* Enter proper name of Person. Only letter, space and '.' allowed."
				},
				
				"pincode" : {
					"regex" :/^[0-9]{6}$/,
					"alertText":"* Enter a valid Pincode"
				},
				
				"pincode1" : {
					"regex" :/^[0-9]{6}$/,
					"alertText":"* Enter a valid Pincode"
				},
				
				"number1" : {
					// Number, including positive, negative, and floating
					// decimal. credit: orefalo
					"regex" : /^[\-\+]?(([0-9]+)([\.,]([0-9]+))?|([\.,]([0-9]+))?)$/,
					"alertText" : "* Invalid Number"
				},
					
				/*"date" : {
					"regex" : /^\d{1,2}\/\d{1,2}\/\d{4}$/,
					"alertText" : "* Invalid date, must be in YYYY-MM-DD format"
				},*/
				"ipv4" : {
					"regex" : /^((([01]?[0-9]{1,2})|(2[0-4][0-9])|(25[0-5]))[.]){3}(([0-1]?[0-9]{1,2})|(2[0-4][0-9])|(25[0-5]))$/,
					"alertText" : "* Invalid IP address"
				},
				"url" : {
					"regex" : /^(https?|ftp):\/\/(((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(\#((([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/i,
					"alertText" : "* Invalid URL"
				},
				"onlyNumberSp" : {
					"regex" : /^[0-9\ ]+$/,
					"alertText" : "* Numbers only"
				},
				"onlyLetterSp" : {
					"regex" : /^[a-zA-Z\ ]+$/,
					"alertText" : "* Only 'Letter' and space allowed."
				},
				"onlyLetterSpSl" : {
					"regex" : /^[a-zA-Z\s\/]+$/,
					"alertText" : "* Only 'Letter' and space allowed."
				},
				"onlyLetterSpecial" : {
					"regex" : /^[a-zA-Z ,-\.]+$/,
					"alertText" : "* Only 'Letter' space ',' and '-' allowed."
				},
				"onlyLetterUnder" : {
					"regex" : /^[a-zA-Z\_]+$/,
					"alertText" : "* Only 'Letter' and '_' allowed."
				},
				"onlyLetterNumberUnder" : {
					"regex" : /^[0-9a-zA-Z_]+$/,
					"alertText" : "* Only 'letter'  'number' ' _'  allowed"
				},
				"onlyLetterSpHf" : {
					"regex" : /^[a-zA-Z\-\ ]+$/,
					"alertText" : "* 'Letter' 'Number' space and '-' Only  "
				},
				
				"onlyLetterNumSpHf" : {
					"regex" : /^[a-zA-Z\d\-\ ]+$/,
					"alertText" : "* 'Letter' 'Number' space and '-' Only  "
				},
				
				"onlyLetterSymbolSp" : {
					"regex" : /^[a-zA-Z \-),(\.]+$/,
					"alertText" : "*Character ',' '-' '.' and Parenthesis allowed"
				},
							
				//Characters with Parenthesis
				"onlyLetterWithParen" : {
					"regex" : /^[a-zA-Z\ \.)(]+$/,
					"alertText" : "*Only Letter, Space, '.' & Parenthesis allowed."
				},
		
				"onlyLetterNumber" : {
					"regex" : /^[0-9a-zA-Z_-]+$/,
					"alertText" : "* Only 'letter'  'number' ' _'  and '-'  allowed"
				},
				"onlyLetterNumberHf" : {
					"regex" : /^[0-9a-zA-Z\-]+$/,
					"alertText" : "* Only 'letter' 'number' and '-' allowed"
				},

				"onlyCapLetter" : {
					"regex" : /^[0-9a-zA-Z-]+$/,
					"alertText" : "* No special characters allowed"
				},
			
				"onlyLetterNumberSymbol" : {
					"regex" : /^[0-9a-zA-Z- ]+$/,
					"alertText" : "* No special characters allowed except -"
				},
				
				"onlyNumberSymbol" : {
					"regex" : /^[0-9- ]+$/,
					"alertText" : "*Only Numbers allowed with -"
				},
				
				"onlyNumberOnly" : {
					"regex" : /^[0-9. ]+$/,
					"alertText" : "*Only Numbers allowed with ."
				},
				// --- CUSTOM RULES -- Those are specific to the demos, they can
				// be removed or changed to your likings
				"ajaxUserCall" : {
					"url" : "ajaxValidateFieldUser",
					// you may want to pass extra data on the ajax call
					"extraData" : "name=eric",
					"alertText" : "* This user is already taken",
					"alertTextLoad" : "* Validating, please wait"
				},
				"ajaxUserCallPhp" : {
					"url" : "phpajax/ajaxValidateFieldUser.php",
					// you may want to pass extra data on the ajax call
					"extraData" : "name=eric",
					// if you provide an "alertTextOk", it will show as a green
					// prompt when the field validates
					"alertTextOk" : "* This username is available",
					"alertText" : "* This user is already taken",
					"alertTextLoad" : "* Validating, please wait"
				},
				"ajaxNameCall" : {
					// remote json service location
					"url" : "ajaxValidateFieldName",
					// error
					"alertText" : "* This name is already taken",
					// if you provide an "alertTextOk", it will show as a green
					// prompt when the field validates
					"alertTextOk" : "* This name is available",
					// speaks by itself
					"alertTextLoad" : "* Validating, please wait"
				},
				"ajaxNameCallPhp" : {
					// remote json service location
					"url" : "phpajax/ajaxValidateFieldName.php",
					// error
					"alertText" : "* This name is already taken",
					// speaks by itself
					"alertTextLoad" : "* Validating, please wait"
				},
				"validate2fields" : {
					"alertText" : "* Please input HELLO"
				},
				// tls warning:homegrown not fielded
				"dateFormat" : {
					"regex" : /^\d{4}[\/\-](0?[1-9]|1[012])[\/\-](0?[1-9]|[12][0-9]|3[01])$|^(?:(?:(?:0?[13578]|1[02])(\/|-)31)|(?:(?:0?[1,3-9]|1[0-2])(\/|-)(?:29|30)))(\/|-)(?:[1-9]\d\d\d|\d[1-9]\d\d|\d\d[1-9]\d|\d\d\d[1-9])$|^(?:(?:0?[1-9]|1[0-2])(\/|-)(?:0?[1-9]|1\d|2[0-8]))(\/|-)(?:[1-9]\d\d\d|\d[1-9]\d\d|\d\d[1-9]\d|\d\d\d[1-9])$|^(0?2(\/|-)29)(\/|-)(?:(?:0[48]00|[13579][26]00|[2468][048]00)|(?:\d\d)?(?:0[48]|[2468][048]|[13579][26]))$/,
					"alertText" : "* Invalid Date"
				},
				// tls warning:homegrown not fielded
				"dateTimeFormat" : {
					"regex" : /^\d{4}[\/\-](0?[1-9]|1[012])[\/\-](0?[1-9]|[12][0-9]|3[01])\s+(1[012]|0?[1-9]){1}:(0?[1-5]|[0-6][0-9]){1}:(0?[0-6]|[0-6][0-9]){1}\s+(am|pm|AM|PM){1}$|^(?:(?:(?:0?[13578]|1[02])(\/|-)31)|(?:(?:0?[1,3-9]|1[0-2])(\/|-)(?:29|30)))(\/|-)(?:[1-9]\d\d\d|\d[1-9]\d\d|\d\d[1-9]\d|\d\d\d[1-9])$|^((1[012]|0?[1-9]){1}\/(0?[1-9]|[12][0-9]|3[01]){1}\/\d{2,4}\s+(1[012]|0?[1-9]){1}:(0?[1-5]|[0-6][0-9]){1}:(0?[0-6]|[0-6][0-9]){1}\s+(am|pm|AM|PM){1})$/,
					"alertText" : "* Invalid Date or Date Format",
					"alertText2" : "Expected Format: ",
					"alertText3" : "mm/dd/yyyy hh:mm:ss AM|PM or ",
					"alertText4" : "yyyy-mm-dd hh:mm:ss AM|PM"
				},
				"alphanumeric" : {
					"regex" : /^[0-9a-zA-Z\s]+$/,
					"alertText" : "* Only alpha-numeric values are allowed"
				},
				"alphanumericSp" : {
					"regex" : /^[0-9a-zA-Z\\)(\s\.,-\/]+$/,
					"alertText" : "* Alpha-numeric values and Special characters allowed."
				},
				"alphanumericspl" : {
					"regex" : /^[0-9a-zA-Z\[\\]\,]+$/,
					"alertText" : "* Special characters not allowed."
				},
				"onlyLetter" : {
					"regex" : /^[a-zA-Z\ ]+$/,
					"alertText" : "* Only Characters allowed."
				},
				"onlyLetters" : {
					"regex" : /^[a-zA-Z]+$/,
					"alertText" : "* Enter Letters Only "
				},
				
				"alphanumericSpWithSemi" : {
						"regex" : /^[0-9a-zA-Z\\)(\s\.,-\/\:]+$/,
						"alertText" : "* Alpha-numeric values and Special characters allowed."
					},

				
				"plotNo":{
					"regex" : /^[0-9a-zA-Z-&\/\ ]+$/,
					"alertText" : "Only Capital letter, number, space, &, / and -  allowed"
				},
				
				
				"registrationNo":{
					"regex" : /^[0-9a-zA-Z-\/\ ]+$/,
					"alertText" : "Only letter, number,  / and -  allowed"
				},
				
				"pan":{
					"regex" : /^([A-Z]{5})(\d{4})([A-Z]{1})$/,
					"alertText" : "Invalid Pan Card Number"
				},
				
				"uid":{
					"regex" : /^(\d{12})$/,
					"alertText" : "Invalid UID."
				},
				
				"cinCompany":{
					"regex" : /^([UL]{1})(\d{5})([A-Z]{2})(\d{4})([A-Z]{3})(\d{6})$/,
					"alertText" : " CIN number Eg. U00000XX0000XXX000000 or L00000XX0000XXX000000"
				},
				
				"plotSize":{
					"regex" : "/^.(\d{2})$/",
					"alertText" : "Only two digits allowed after decimal"
				},
				
				"noSpace": {
					"regex" : /^\S*$/,
					"alertText" : "* Space not allowed."
				},
				
				"onlyCapitalLetter" : {
					"regex" : /^[A-Z\ ]+$/,
					"alertText" : "* Capital Characters Only"
				},
				
				// Characters with hiphen
				"onlyCapitalLetterhifn" : {
					"regex" : /^[A-Z-\ \']+$/,
					"alertText" : "* Capital Characters Only"
				},
				
				"onlyCapitalLetterNumber": {
					"regex" : /^[A-Z\ \']+$/,
					"regex" : /^[0-9A-Z]+$/,
					"alertText" : "* Capital Characters Only And No special characters."
				},
				
				"onlyCapitalLetterNumberslas": {
					"regex" : /^[0-9A-Z\/-]+$/,
					"alertText" : "*Numbers and Capital Characters Only And No special characters."
				},
	
				"fpincode": {
					"regex" : /^[A-Z\ \']+$/,
					"regex" : /^[0-9A-Z]+$/,
					"alertText" : "* Not a valid Forgien Pin Code  "
				},

				"noSpecialCaracters" : {
					"regex" : "/^[0-9a-zA-Z\@\#\$\&\(\)\-\_\,\.\ ]+$/",
					"alertText" : "* No special characters"
				},
				// "alertText":"* Only special characters @ # $ & () - _ , can
				// be used."},
				
				"noSeoSpecialCaracters" : {
					"regex" : "/^[0-9a-zA-Z\@\#\$\&\(\)\_\,\.\ ]+$/",
					"alertText" : "* No special characters"
				},
				// "alertText":"* Only special characters @ # $ & () _ , can be
				// used."},
				
				"passwordSpecialCaracters" : {
					"regex" : "/^[0-9a-zA-Z\@\#\$\&\_]+$/",
					"alertText" : "* No special caracters"
				},
				
				"length" : {
					"regex" : "none",
					"alertText" : "*Should be between ",
					"alertText2" : " and ",
					"alertText3" : " characters"
				},
				
				"maxlength" : {
					"regex" : "none",
					"alertText" : "*Should not be more than ",
					"alertText2" : " characters"
				},
				
				"maxCheckbox" : {
					"regex" : "none",
					"alertText" : "* Checks allowed Exceeded"
				},
				
				"minCheckbox" : {
					"regex" : "none",
					"alertText" : "* Please select atleast ",
					"alertText2" : " option"
				},
				
				"confirm" : {
					"regex" : "none",
					"alertText" : "* Your field is not matching"
				},
				
				"telephone" : {
					"regex" : "/^[0-9\-\(\)\ ]+$/",
					"alertText" : "* Invalid phone number"
				},
				
				/*"email" : {
					"regex" : "/^[a-zA-Z0-9_\.\-]+\@([a-zA-Z0-9\-]+\.)+[a-zA-Z0-9]{2,4}$/",
					"alertText" : "* Invalid email address"
				},*/
				
				/*"date" : {
					"regex" : "/^[0-9]{4}\-\[0-9]{1,2}\-\[0-9]{1,2}$/",
					"alertText" : "* Invalid date, must be in YYYY-MM-DD format"
				},*/
				
				"onlyNumber" : {
					"regex" : /^[0-9]+$/,
					"alertText" : "* Numbers only"
				},
				
				/*"pincode" : {
					"regex" : /^[\-\+]?\d+$/,
					"alertText" : "Pin Code not Valid"
				},*/
				
				"ifsc" : {
					"regex" :/^[A-Z]{4}[0][A-Z0-9]{6}$/,
					"alertText" :"Please enter a valid IFSC code Eg. XXXX0111111"
					},
					
				"utr" : {
						"regex" :/^([A-Z]{5})([1]{1})([0-9]{4})([0][1-9]|[1][0-2])([0][1-9]|[1][0-9]|[2][0-9]|[3][0-1])([0-9]{8})$/,
						"alertText" :"Please enter a valid UTR Number Eg. HDFCR1YYYYMMDDNNNNNNNN"
						},
						
				"refNo" : {
							"regex" :/^[A-Z]{5}[0-9]{11}$/,
							"alertText" :"Please enter a valid Reference Number Eg. XXXXX11111111111"
						},
							
				"txnNo" : {
								"regex" :/^[A-Z]{5}[0-9]{11}$/,
								"alertText" :"Please enter a valid Transaction Number Eg. XXXXX11111111111"
						},
						
				"swift" : {
							"regex" :/^[A-Z]{6}[A-Z0-9]{2}([A-Z0-9]{3})?$/,
							"alertText" :"Please enter a valid SWIFT code"
							},
							
				"hours" : {
							"regex" : "/^([0-1]|[0-9]{1}|[2][0-3]{2})$/",
							"alertText" : "* Enter 24 Hours only"
		    	    	},
		    	 	
		    	    "minutes" : {
				    				"regex" : "/^([0-5]{1} [0-9]{1})$/",
				    				"alertText" : "* Enter 59 Minutes only"
			    	    		},
		    	    
				"float" : {
							"regex" : "/^[0-9.0-9]+$/",
							"alertText" : "Invalid Value, must be numeric"
						},
						
				"CourtCaseNumber": {
								"regex" : "/^[0-9A-Z]+$/",
								"alertText" : "* Capital Characters Numeric Only And No special characters  "
								}
				

            };

		}
	};

	$.validationEngineLanguage.newLang();

})(jQuery);