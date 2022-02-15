package fr.esgi.potter;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.assertj.core.api.Assertions;
import org.junit.runner.RunWith;

import java.util.ArrayList;

class ParcelTest {

    private Parcel parcel = new Parcel();
    private ArrayList<Book> books = new ArrayList<>();

    @Given("Parcel empty")
    public void parcel_empty() {

    }

    @When("parcel amount is calculated")
    public void parcel_amount_is_calculated() {
        books.add(Book.FIRST);
        parcel.getPrice(books);
    }

    @Then("parcel amount should be equals to {int} €")
    public void parcel_amount_should_be_equals_to_€(Integer expectedPrice) {
        Assertions.assertThat(parcel.getPrice(books)).isEqualTo(expectedPrice);
    }

}