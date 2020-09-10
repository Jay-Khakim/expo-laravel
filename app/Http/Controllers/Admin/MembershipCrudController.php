<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\MembershipRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class MembershipCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class MembershipCrudController extends CrudController
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
        CRUD::setModel(\App\Models\Membership::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/membership');
        CRUD::setEntityNameStrings('membership', 'memberships');
    }

    /**
     * Define what happens when the List operation is loaded.
     * 
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        CRUD::column('status');
        CRUD::column('name_en');
        CRUD::column('name_uz');
        CRUD::column('name_ru');
        CRUD::column('slug_en');
        CRUD::column('certificate_number');
        CRUD::column('inn');
        CRUD::column('expiry_date');
        CRUD::column('desc_en');
        CRUD::column('desc_uz');
        CRUD::column('desc_ru');
        CRUD::column('file');
        CRUD::column('web');
        CRUD::column('email');
        CRUD::column('phone');
        CRUD::column('address_en');
        CRUD::column('address_uz');
        CRUD::column('address_ru');
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
        CRUD::setValidation(MembershipRequest::class);

        CRUD::field('status');
        CRUD::field('name_en');
        CRUD::field('name_uz');
        CRUD::field('name_ru');
        CRUD::field('slug_en');
        CRUD::field('certificate_number');
        CRUD::field('inn');
        CRUD::field('expiry_date');
        CRUD::field('desc_en');
        CRUD::field('desc_uz');
        CRUD::field('desc_ru');
        CRUD::field('file');
        CRUD::field('web');
        CRUD::field('email');
        CRUD::field('phone');
        CRUD::field('address_en');
        CRUD::field('address_uz');
        CRUD::field('address_ru');

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
