<?php
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RolePermissionSeeder extends Seeder
{
    public function run()
    {
        $adminRole = Role::findByName('admin');
        $userRole = Role::findByName('user');

        $adminPermissions = [
            'view-dashboard',
            'view-products',
            'view-orders',
            'view-users',
        ];

        $userPermissions = [
            'view-dashboard',
        ];

        $adminRole->syncPermissions($adminPermissions);
        $userRole->syncPermissions($userPermissions);
    }
}