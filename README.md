<h1 id="title">🌿 Jungle</h1>

<p align="center"><img src="https://socialify.git.ci/lucky-hw-kim/jungle-rails/image?description=1&amp;descriptionEditable=A%20mini%20e-commerce%20for%20plants%20application%20made%20Using%20Ruby%20and%20Rails&amp;font=Inter&amp;language=1&amp;theme=Light" alt="project-image"></p>

<p id="description">This mini e-commerce application for plants shopping allows users to buy plants and admin users can add/delete more products/categories of plants. It is made using Ruby v3.1.1 and Rails version Rails v6.1.5.1.</p>

<h2>📸 Screen Shots</h2>
<p align="center">
<img src="https://github.com/lucky-hw-kim/jungle-rails/blob/master/doc/Jungle_index.png?raw=true" alt="project-screenshot" width="600px" height="auto/">

<img src="https://github.com/lucky-hw-kim/jungle-rails/blob/master/doc/Jungle_empty_cart.png?raw=true" alt="project-screenshot" width="600px" height="auto/">

<img src="https://github.com/lucky-hw-kim/jungle-rails/blob/master/doc/Jungle_add_item_to_cart.gif?raw=true" alt="project-screenshot" width="600px" height="auto/">

<img src="https://github.com/lucky-hw-kim/jungle-rails/blob/master/doc/Jungle_aboutUs.png" alt="project-screenshot" width="600px" height="auto/">

<img src="https://github.com/lucky-hw-kim/jungle-rails/blob/master/doc/Jungle_payment.gif?raw=true" alt="project-screenshot" width="600px" height="auto/">

<img src="https://github.com/lucky-hw-kim/jungle-rails/blob/master/doc/Jungle_faq.png?raw=true" alt="project-screenshot" width="600px" height="auto/">

<img src="https://github.com/lucky-hw-kim/jungle-rails/blob/master/doc/Jungle_signup_logout.gif?raw=true" alt="project-screenshot" width="600" height="auto/">
</p>
<h2>🧐 Features</h2>

Here're some of the project's best features:

*   User can add a product item to the cart
*   User can purchase the items in the cart using Stripe payment method
*   User can browse all categories of plants at home page
*   User can browse specific categories of plants at specific category endpoint
*   Admin user can add or/and delete product and categories
*   Admin user can access to admin endpoint by using rails HTTP basic authentication
*   User can sign up using their name email and password
*   User can sign in using their email and password
*   When the order is made automated email receipt is sent to user's email address
*   Unit test is done using Rspec and integration test is done using Cypress

<h2>✍️ Setup</h2>

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

<h2>💾 Database</h2>

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

<h2> 💻 Tech Stack </h2>
- PostgreSQL
- Ruby
- Rails
- Cypress
- Rspec


<h2> 💳 Stripe Testing </h2>

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

<h2>🦄 Dependencies </h2>

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe


