# NSDictionary-Extension-Manage-NSNull
Swift - It's an NSDictionary Extension in swift to replace all NSNull values with a blank string. 


# Usage:-
            var changedItem : NSDictionary = itemPre as! NSDictionary // Here itemPre is dictionary which containes                                                                           one or more NSNull Values.
            changedItem =  changedItem .dictionaryByReplacingNullsWithBlanks() // changedItem will contain no NSNull,                                                                             all null object replaced by blank string.
            
# output:-
           before replacing changedItem:- 
               
    date                 = "2015-11-18";
    time                 = "1:48 pm";
    statusID             = 2;
    url                  = "<null>";

           After replacing changedItem:- 
               
    date                 = "2015-11-18";
    time                 = "1:48 pm";
    statusID             = 2;
    url                  = ""; // null has been replaced by blank string
