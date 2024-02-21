<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class Task extends Model {
    protected $table = 'task';

    protected $fillable = [
        'id',
        'title',
        'description',
        'status',
        'due_date',
        'created_at'];
    protected $primaryKey = 'id';


}
