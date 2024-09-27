<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $menuItems = json_decode(file_get_contents(public_path('verticalMenu.json')), true);

        foreach ($menuItems as $menuItem) {
            Permission::create(['name' => $menuItem['permission']]);
        }
    }
}
