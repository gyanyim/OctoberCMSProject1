<?php namespace Watchlearn\Movies\Updates;

use Schema;
use October\Rain\Database\Updates\Migration;

class BuilderTableUpdateWatchlearnMoviesActors2 extends Migration
{
    public function up()
    {
        Schema::table('watchlearn_movies_actors', function($table)
        {
            $table->renameColumn('last_name', 'lastname');
        });
    }
    
    public function down()
    {
        Schema::table('watchlearn_movies_actors', function($table)
        {
            $table->renameColumn('lastname', 'last_name');
        });
    }
}
