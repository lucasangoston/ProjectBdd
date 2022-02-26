package fr.esgi.potter;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.assertj.core.api.Assertions;
import org.junit.runner.RunWith;

import java.util.ArrayList;

public class ParcelPurchase {

    private Parcel parcel = new Parcel();
    private ArrayList<Book> books = new ArrayList<>();

    @Given("Parcel empty")
    public void parcel_empty() {
        Assertions.assertThat(books.size()).isEqualTo(0);
    }

    @Given("Parcel containing one book")
    public void parcel_containing_one_book() {
        books.add(Book.FIRST);
        Assertions.assertThat(books.size()).isEqualTo(1);
    }

    @Given("Parcel containing two books")
    public void parcel_containing_two_books() {
        books.add(Book.FIRST);
        books.add(Book.FIRST);
        Assertions.assertThat(books.size()).isEqualTo(2);
    }

    @Given("Parcel containing three books")
    public void parcel_containing_three_books() {
        books.add(Book.FIRST);
        books.add(Book.FIRST);
        books.add(Book.FIRST);
        Assertions.assertThat(books.size()).isEqualTo(3);
    }

    @Given("Parcel containing four books")
    public void parcel_containing_four_books() {
        books.add(Book.FIRST);
        books.add(Book.FIRST);
        books.add(Book.FIRST);
        books.add(Book.FIRST);
        Assertions.assertThat(books.size()).isEqualTo(4);
    }

    @Given("Parcel containing fifth books")
    public void parcel_containing_fifth_books() {
        books.add(Book.FIRST);
        books.add(Book.FIRST);
        books.add(Book.FIRST);
        books.add(Book.FIRST);
        books.add(Book.FIRST);
        Assertions.assertThat(books.size()).isEqualTo(5);
    }

    @When("parcel discount is calculated")
    public void parcel_discount_is_calculated() {
    }

    @Then("parcel amount should be equals to {double} €")
    public void parcel_amount_should_be_equals_to_€(Double expectedPrice) {
        Assertions.assertThat(parcel.getPrice(books)).isEqualTo(expectedPrice);
    }

}