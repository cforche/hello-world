uses gw.api.database.Query
uses gw.api.util.CoreFilters.Equals


var address = new Address()

var _query = new Query(Account)
var _result = _query.compare(Account#AccountNumber, Equals, '9935742948')
var _resultObj = _result.select()
if(_resultObj != null){

 for(o in _resultObj){

   var _issuedPolicies = (o as Account).Policies

     if(!_issuedPolicies.IsEmpty){
       for(_policy in _issuedPolicies){
          print("it is a "+_policy.ProductCode + " Policy")

       }
       }  else{
       print("Empty policy array")
     }

   var _contactOfThisAccount = (o as Account).AccountContacts

   /*if(!_contactOfThisAccount.IsEmpty){
     for(_accContact in _contactOfThisAccount){
          print("############################")
       print("Name:"+(_accContact.Contact as Person).LastName )
       var _roles = _accContact.Roles

       for(_role in _roles){

       }
     }
   }else{
     print("No contacts in this account")

   }*/
 }

}else{
  print("No such account exists!!!")
}


