package main.pageObject.steps;

import com.codeborne.selenide.CollectionCondition;
import cucumber.api.java.en.Then;

import static com.codeborne.selenide.Selenide.$$;
import static main.pageObject.pages.SearchResultPage.searchResultList;

public class SearchResultSteps {

    @Then("A page opens with {int} elements")
    public void verifyResultSearch (int expectedQuantity) {
        $$(searchResultList).shouldHave(CollectionCondition.size(expectedQuantity));
    }
}