<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\UserTask;
use App\Models\Task;
use App\Models\User;
use Illuminate\Http\Response;
use Illuminate\Http\Request;
use Auth;
use Validator;
class TaskManagmentController extends Controller
{
    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required',
        ]);
        if ($validator->fails()) {
            return Response(['message' => $validator->errors()], 401);
        }
        if (Auth::attempt($request->all())) {
            $user = Auth::user();
            $success = $user->createToken('task')->plainTextToken;
            return Response(['token' => $success, 'user' => $user], 200);
        }
        return Response(['message' => 'email or password wrong'], 401);
    }

    public function createUpdaateTask(Request $request)
    {
        if (Auth::check()) {
            $taskId = $request->get('id', 0);
            $taskTitle = $request->get('title');
            $taskDescription = $request->get('description');
            $taskStatus = $request->get('status', 0);
            $taskDueDate = $request->get('due_date');
            $task = Task::updateOrCreate([
                'id' => $taskId
            ],
                [
                    'title' => $taskTitle,
                    'description' => $taskDescription,
                    'satus' => $taskStatus,
                    'due_date' => $taskDueDate
                ]);

            $taskDetail = Task::where('id', $task->id)->get()->first();
            return Response(['data' => $taskDetail], 200);
        }
        return Response(['data' => 'Unauthorized'], 401);
    }

    public function assignTaskToUser(Request $request)
    {
        if (Auth::check()) {
            $userId = $request->get('user_id');
            $taskId = $request->get('task_id');
            $checkTaskExist = UserTask::where('task_id', $taskId)->where('user_id')->get()->first();
            if (!$checkTaskExist) {
                $checkTaskExist = new UserTask();
                $status = 0;
                $createdAt = date('Y-m-d');
            } else {
                $status = $checkTaskExist->status;
                $createdAt = $checkTaskExist->craeted_at;
            }
            $checkTaskExist->user_id = $userId;
            $checkTaskExist->task_id = $taskId;
            $checkTaskExist->status = $status;
            $checkTaskExist->craeted_at = $createdAt;
            if ($checkTaskExist->save()) {
                return Response(['message' => 'Task assigned successfully.'], 200);
            } else {
                return Response(['message' => 'hoops soething went wrong.'], 500);
            }
        } else {
            return Response(['data' => 'Unauthorized'], 401);
        }
    }

    public function unassignUserFromTask(Request $request)
    {
        if (Auth::check()) {
            $userId = $request->get('user_id');
            $taskId = $request->get('task_id');
            $unassignTaskExist = UserTask::where('task_id', $taskId)->where('user_id')->get()->first();
            if ($unassignTaskExist) {
                UserTask::where('id', $unassignTaskExist->id)->delete();
                return Response(['message' => 'User removed from a task'], 200);
            } else {
                return Response(['message' => 'User specific task not found.'], 200);
            }
        } else {
            return Response(['data' => 'Unauthorized'], 401);
        }
    }

    public function chnageTaskStatus(Request $request)
    {
        if (Auth::check()) {
            $taskId = $request->get('task_id');
            $status = $request->get('status', 0);
            $checkTaskExist = Task::where('id', $taskId)->get()->first();
            if ($checkTaskExist) {
                Task::where('id', $checkTaskExist->id)->update(['status' => $status]);
                return Response(['message' => 'Task status changed'], 200);
            } else {
                return Response(['message' => 'User specific task not found.'], 200);
            }
        } else {
            return Response(['data' => 'Unauthorized'], 401);
        }
    }

    public function userSpecificTaskList(Request $request)
    {
        if (Auth::check()) {
            $userId = $request->get('user_id', 0);
            if ($userId) {
                $userId = $userId;
            } else {
                $userId = Auth::id();
            }

            $selectCol = [
                'task.*',
                'users.email as user_email'
            ];
            $tasks = UserTask::select($selectCol)
                ->join('task', 'task.id', 'task_user.task_id')
                ->join('users', 'users.id', 'task_user.user_id')
                ->where('task_user.id', $userId)
                ->get()
                ->all();
            return Response(['data' => $tasks], 200);

        } else {
            return Response(['data' => 'Unauthorized'], 401);
        }

    }

    public function taskLising(Request $request)
    {
        if (Auth::check()) {
        $status = $request->get('status', 0);
        $dueDate = $request->get('due_date');
        $userId = $request->get('user_id', 0);
        $getTaskData = Task::select('*');
        if ($status) {
            $getTaskData = $getTaskData->where('status', $status);
        }
        if ($dueDate) {
            $getTaskData = $getTaskData->where('due_date', $dueDate);
        }
        if ($dueDate) {
            $getTaskData = $getTaskData->where('due_date', $dueDate);
        }
        if ($userId) {
            $getTaskData = $getTaskData->join('task_user', 'task_user.task_id', 'task.id')
                ->join('users', 'users.id', 'task_user.user_id')
                ->where('task_user.id', $userId);
        }
        $getTaskData = $getTaskData->get()->all();
        return Response(['task' => $getTaskData], 200);
    }
}
}
