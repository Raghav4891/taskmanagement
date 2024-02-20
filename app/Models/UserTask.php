<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class UserTask extends Model {
    protected $table = 'task_user';

    protected $fillable = [
        'id',
        'task_id',
        'user_id',
        'status',
        'created_at'];
    protected $primaryKey = 'sgid';


}
