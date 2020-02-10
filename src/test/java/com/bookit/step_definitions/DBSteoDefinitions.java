package com.bookit.step_definitions;

import com.bookit.db.BookitDB;
import io.cucumber.java.en.Given;

public class DBSteoDefinitions {

    BookitDB db=new BookitDB();

    @Given("user verifies that user with id {int} has email {string}")
    public void user_verifies_that_user_with_id_has_email(Integer int1, String string) {


    }

}
