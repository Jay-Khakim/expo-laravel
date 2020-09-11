<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\StaffRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class StaffCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class StaffCrudController extends CrudController
{
    use \Backpack\CRUD\app\Http\Controllers\Operations\ListOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CreateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\UpdateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\DeleteOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\ShowOperation;

    /**
     * Configure the CrudPanel object. Apply settings to all operations.
     * 
     * @return void
     */
    public function setup()
    {
        CRUD::setModel(\App\Models\Staff::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/staff');
        CRUD::setEntityNameStrings('staff', 'staff');
    }

    /**
     * Define what happens when the List operation is loaded.
     * 
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        CRUD::column('branche_id');
        CRUD::column('status');
        CRUD::column('name_en');
        CRUD::column('name_uz');
        CRUD::column('name_ru');
        CRUD::column('position_en');
        CRUD::column('position_uz');
        CRUD::column('position_ru');
        CRUD::column('reception_time_en');
        CRUD::column('reception_time_uz');
        CRUD::column('reception_time_ru');
        CRUD::column('email');
        CRUD::column('facebook');
        CRUD::column('linkedin');
        CRUD::column('twitter');
        CRUD::column('deleted_at');
        CRUD::column('created_at');
        CRUD::column('updated_at');

        /**
         * Columns can be defined using the fluent syntax or array syntax:
         * - CRUD::column('price')->type('number');
         * - CRUD::addColumn(['name' => 'price', 'type' => 'number']); 
         */
    }

    /**
     * Define what happens when the Create operation is loaded.
     * 
     * @see https://backpackforlaravel.com/docs/crud-operation-create
     * @return void
     */
    protected function setupCreateOperation()
    {
        CRUD::setValidation(StaffRequest::class);

        CRUD::field('branche_id');
        CRUD::field('status');
        CRUD::field('name_en');
        CRUD::field('name_uz');
        CRUD::field('name_ru');
        CRUD::field('position_en');
        CRUD::field('position_uz');
        CRUD::field('position_ru');
        CRUD::field('reception_time_en');
        CRUD::field('reception_time_uz');
        CRUD::field('reception_time_ru');
        CRUD::field('email');
        CRUD::field('facebook');
        CRUD::field('linkedin');
        CRUD::field('twitter');

        /**
         * Fields can be defined using the fluent syntax or array syntax:
         * - CRUD::field('price')->type('number');
         * - CRUD::addField(['name' => 'price', 'type' => 'number'])); 
         */
    }

    /**
     * Define what happens when the Update operation is loaded.
     * 
     * @see https://backpackforlaravel.com/docs/crud-operation-update
     * @return void
     */
    protected function setupUpdateOperation()
    {
        $this->setupCreateOperation();
    }
}
