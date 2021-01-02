# Specifications for the Rails Assessment

Specs:
- [x] Use the Ruby on Rails framework
- [x] Include at least one has_many relationship 
  - A User has_many Courses
- [x] Include at least one belongs_to relationship 
  - A Course belongs_to a User
- [ ] Include at least two has_many through relationships 
  - 
  - 
- [ ] Include at least one many-to-many relationship 
  - 
- [ ] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user
  - 
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
  - A User must have a name, email and password. The email address must be unique.
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
  - 
- [x] Include signup 
- [x] Include login 
- [x] Include logout 
- [x] Include third party signup/login (OmniAuth)
  - Users can sign in with a Facebook account
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
  - Navigating to '/assignments' shows all assignments and '/assignments/:id' shows show page for individual assignment
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
  - A new class is created at '/courses/new'
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)
  - 

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate
