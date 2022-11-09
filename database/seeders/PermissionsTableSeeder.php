<?php

namespace Database\Seeders;

use App\Models\Permission;
use Illuminate\Database\Seeder;

class PermissionsTableSeeder extends Seeder
{
    public function run()
    {
        $permissions = [
            [
                'id'    => 1,
                'title' => 'user_management_access',
            ],
            [
                'id'    => 2,
                'title' => 'permission_create',
            ],
            [
                'id'    => 3,
                'title' => 'permission_edit',
            ],
            [
                'id'    => 4,
                'title' => 'permission_show',
            ],
            [
                'id'    => 5,
                'title' => 'permission_delete',
            ],
            [
                'id'    => 6,
                'title' => 'permission_access',
            ],
            [
                'id'    => 7,
                'title' => 'role_create',
            ],
            [
                'id'    => 8,
                'title' => 'role_edit',
            ],
            [
                'id'    => 9,
                'title' => 'role_show',
            ],
            [
                'id'    => 10,
                'title' => 'role_delete',
            ],
            [
                'id'    => 11,
                'title' => 'role_access',
            ],
            [
                'id'    => 12,
                'title' => 'user_create',
            ],
            [
                'id'    => 13,
                'title' => 'user_edit',
            ],
            [
                'id'    => 14,
                'title' => 'user_show',
            ],
            [
                'id'    => 15,
                'title' => 'user_delete',
            ],
            [
                'id'    => 16,
                'title' => 'user_access',
            ],
            [
                'id'    => 17,
                'title' => 'audit_log_show',
            ],
            [
                'id'    => 18,
                'title' => 'audit_log_access',
            ],
            [
                'id'    => 19,
                'title' => 'post_management_access',
            ],
            [
                'id'    => 20,
                'title' => 'post_create',
            ],
            [
                'id'    => 21,
                'title' => 'post_edit',
            ],
            [
                'id'    => 22,
                'title' => 'post_show',
            ],
            [
                'id'    => 23,
                'title' => 'post_delete',
            ],
            [
                'id'    => 24,
                'title' => 'post_access',
            ],
            [
                'id'    => 25,
                'title' => 'category_create',
            ],
            [
                'id'    => 26,
                'title' => 'category_edit',
            ],
            [
                'id'    => 27,
                'title' => 'category_show',
            ],
            [
                'id'    => 28,
                'title' => 'category_delete',
            ],
            [
                'id'    => 29,
                'title' => 'category_access',
            ],
            [
                'id'    => 30,
                'title' => 'book_management_access',
            ],
            [
                'id'    => 31,
                'title' => 'book_create',
            ],
            [
                'id'    => 32,
                'title' => 'book_edit',
            ],
            [
                'id'    => 33,
                'title' => 'book_show',
            ],
            [
                'id'    => 34,
                'title' => 'book_delete',
            ],
            [
                'id'    => 35,
                'title' => 'book_access',
            ],
            [
                'id'    => 36,
                'title' => 'tag_create',
            ],
            [
                'id'    => 37,
                'title' => 'tag_edit',
            ],
            [
                'id'    => 38,
                'title' => 'tag_show',
            ],
            [
                'id'    => 39,
                'title' => 'tag_delete',
            ],
            [
                'id'    => 40,
                'title' => 'tag_access',
            ],
            [
                'id'    => 41,
                'title' => 'albumn_management_access',
            ],
            [
                'id'    => 42,
                'title' => 'albumn_create',
            ],
            [
                'id'    => 43,
                'title' => 'albumn_edit',
            ],
            [
                'id'    => 44,
                'title' => 'albumn_show',
            ],
            [
                'id'    => 45,
                'title' => 'albumn_delete',
            ],
            [
                'id'    => 46,
                'title' => 'albumn_access',
            ],
            [
                'id'    => 47,
                'title' => 'profile_password_edit',
            ],
        ];

        Permission::insert($permissions);
    }
}
