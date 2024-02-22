	-> Project database file name is taskmanagement.sql

	-> First Create taskmanagement app using command
    composer create-project laravel/laravel taskmanagement

   -> Did changes in .env file for database connection

   -> Create Seeder using command
   php artisan make:seeder UserSeeder

  -> insert dummy data into your database user table usig comand
   php artisan db:seed

   -> Install sanctum package for Authentication using command
	composer require laravel/sanctum

   -> start project on brower use comand
   php artisan serve
