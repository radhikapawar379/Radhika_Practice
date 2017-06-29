public class ContactSearch {
    
    public static List<Contact> searchForContacts(String lname, String postalcode){
		
        
		List<Contact> con = [SELECT ID,FirstName,LastName FROM Contact WHERE (LastName=:lname AND MailingPostalCode=:postalcode)];       
            System.debug('Contact searched is ' + con);
        return con;
    
    }

}