# Rails Code Challenge - Superheroines

For this assessment, you'll be working with a superheroines and powers domain.

In this repo, there is a Rails application with some features built out. Your job is to extend this code to add the functionality described in the deliverables below.

## Topics

- MVC
- REST
- Request-Response Cycle
- Forms and Form Helpers
- ActiveRecord
- Validations

## Setup

Clone this repo. Then run `bundle install`, `rails db:migrate`, and `rails db:seed` to install dependencies and set up the database, and run `rails s` to start the server.

## The Domain

You've just been hired by 'Marvel Comics' - congratulations! The production staff wants you to make a website that will allow the fans to create [heroines, women superheroes](http://www.dictionary.com/browse/heroine). To do this, we need a way to keep track of all of the new heroines and powers that have been created by the fans.

Luckily, another developer has already started the job. We have a model for heroines and a model for powers. Once the database is seeded, visiting `/heroines` displays all of the heroines, and visiting `/powers` displays all of the powers. We just don't have a way to associate heroines with powers.

We have several different powers and each can be bestowed upon **more than one heroine**. Each heroine can only have **one power**.

## Instructions

Update the code of the application to meet the following deliverables. Where appropriate, follow RESTful naming conventions and the MVC pattern to divide responsibility.

***Read through these deliverables carefully to understand the requirements for this code challenge. Tackle them one by one, as they build on each other sequentially.***

![Showcasing the basic heroines and powers routes](heroines_and_powers.gif)

1. Create the associations between models. You may have to alter the current schema to get your code working. If you've set up your relationships properly, you should be able to run `rake db:seed` without errors, and confirm in console that the heroines and powers have been created with the proper relations.

2. On the heroines index page, a heroine's super name should link to that heroine's show page.

3. The heroine show page should include the heroine's name (eg. Kamala Khan), her super name (eg. Ms. Marvel), and her power. The power should link to the power show page.  

4. The power show page should have its name and description.

5. As a visitor to the website, I should be able to create a new heroine with her name and super name.

6. The form should also allow each heroine to be created with **only one of the existing powers**.

  ![A form for adding a new heroine](new_heroine_form.gif)

7. Make sure no two heroines have the same super name.

# BONUS TO BE COMPLETED IF EVERYTHING ELSE IS DONE

**If you have reached this point, please `git add` and `git commit` before proceeding!**

8. Add a filter to the index view of the heroines. This will allow the visitor to search for an existing power and display all the heroines with that power on the same view page.

![Searching on the heroines route and finding heroines by a power](search_by_power.gif)

### Hints / Tips
+ Draw your domain model and associations before you begin. You may have to alter the current schema to get your code working.
+ A child model cannot be persisted without being associated with its parent model.
+ More than one heroine can have the same power.
+ More than one heroine can have the same power.
+ More than one heroine can have the same power.
+ We want to be RESTful. What URL should show info about a particular heroine? What URL should show a form to create a heroine? What controller actions are associated?
+ If you're having a hard time implementing the filter, take a look at this http://guides.rubyonrails.org/form_helpers.html#a-generic-search-form. We are asking an input field to search for powers.

## Rubric

### Models, Associations, and Validations

1. Models, associations, and validation not started or have errors that prevent the application from running. Missing validations, or validation syntax is incorrect. May have introduced models outside the specified domain.
2. Models, associations, and validations attempted but incomplete or have errors. Associations may construct the wrong relationships. Validations may be missing or applied to the wrong models. Advanced query methods incomplete or have errors.
3. Models, associations, and validations mostly complete and correct per the deliverables. Advanced validations and methods may be incomplete. May have unused or unnecessary code, possibly including duplication. May have written validations instead of using appropriate built-in validations. May implement advanced query methods with iterators instead of using built-in methods.
4. All models, associations, and validations are complete and correct, save minor mistakes in advanced deliverables. Advanced validations are complete and add informative error messages.
5. All specified models, associations, and validations complete and correct. Built-in validations are used when appropriate. Variable and method names are intention-revealing. Models have appropriate logic extracted from controllers and views. Advanced query methods use appropriate built-in methods.

### Routes, Controllers, and REST

1. Routes missing, naming does not follow REST, controller actions incomplete or with errors.
2. Some routing and controller logic implemented, but incompletely or incorrectly. May have routes or controller actions not included in the deliverables. May include routes that have no corresponding controller action or vice versa. Controller methods might do work beyond their responsibility in MVC.
3. Most routing and controller logic working as specified. Some advanced deliverables may be incomplete. Routing follows REST convention. Routing table might include some unused routes, or routes and actions that were not specified in the deliverables. Logic may be duplicated between methods.
4. Nearly all routing and controller deliverables completed, possibly with minor errors in advanced deliverables. Routing follows REST conventions. Some logic may be duplicated between controller actions, or not respect MVC separation of concerns. Attempts to use filters and private helper methods to reduce duplication, but some duplication may remain.
5. All routes and controllers deliverables work as described in the instructions. Routing follows REST naming conventions. Controller actions respect MVC separation of concerns, and don't have logic that belongs in the model or the view. ActionController filters and private helper methods are used appropriately to reduce duplication in controller actions.

### Views and Forms

1. Missing or unattempted views and forms, or erb syntax errors in views and forms. Forms created in the wrong views, do not accept the correct input, or do not submit to the correct location. Data not displayed correctly.
2. Views display some data correctly. Forms attempted, but with some errors that prevent submitting data correctly. May not have attempted or may have significant errors in advanced deliverables.
3. Uses view to show data as specified. At least one working form that submits data to the correct location. May not have attempted some advanced view features. May have included views not specified by the deliverables. May include model or controller logic in the view. Forms may accept invalid input (for example, out of range numbers). May not display validation errors correctly. May not use view helper methods to reduce duplication.
4. Nearly all view and form deliverables complete and correct. May have minor logic errors in advanced deliverables. Mostly does not include controller or model logic in the views. Mostly uses helpers to reduce duplication.
5. All view and form deliverables complete and correct, including advanced form components. No views not specified by the instructions. No model or controller logic present in the views. Appropriate use of helpers and built-ins to reduce duplication. Validation errors displayed correctly on form.
