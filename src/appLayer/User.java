package appLayer;

import dataLayer.DB_user;

public class User {

    public boolean isValidUSerCredentials(String username, String userpassword){
        DB_user DB_user_object = new DB_user();
        return DB_user_object.isValidUserLogin(username, userpassword);
    }

    public String splitter(String username){
        String [] array = username.split("@");
        return array[0];
    }

    public boolean makeNewUser(String username, String userpassword){
        DB_user DB_user_object = new DB_user();
        return DB_user_object.createNewUser(username, userpassword);
    }
}
