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
        // CRUD::column('branche_id');
        CRUD::addColumn(
            [
                // 1-n relationship
                'label'     => 'Branche', // Table column heading
                'type'      => 'select',
                'name'      => 'branche_id', // the column that contains the ID of that connected entity;
                'entity'    => 'branche', // the method that defines the relationship in your Model
                'attribute' => 'name_en', // foreign key attribute that is shown to user
                'model'     => "App\Models\Branche", // foreign key model
            ],
        );
        CRUD::column('status');
        CRUD::column('name_en');
        // CRUD::column('name_uz');
        // CRUD::column('name_ru');
        CRUD::column('position_en');
        CRUD::addColumn(
            [
                'name' => 'image', // The db column name
                'label' => "Image", // Table column heading
                'type' => 'image',
                'prefix' => 'storage/',
                // optional width/height if 25px is not ok with you
                'height' => '60px',
                'width' => '60px',
            ],
        );
        // CRUD::column('position_uz');
        // CRUD::column('position_ru');
        // CRUD::column('reception_time_en');
        // CRUD::column('reception_time_uz');
        // CRUD::column('reception_time_ru');
        // CRUD::column('email');
        // CRUD::column('facebook');
        // CRUD::column('linkedin');
        // CRUD::column('twitter');
        // CRUD::column('deleted_at');
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

        CRUD::field('branche_id')->size(6);
        CRUD::addField(
            [  // Select2
                'label'     => "Branche",
                'type'      => 'select2',
                'name'      => 'branche_id', // the db column for the foreign key
                'entity'    => 'branche', // the method that defines the relationship in your Model
                'attribute' => 'name_en', // foreign key attribute that is shown to user
                
                'options'   => (function ($query) {
                        return $query->orderBy('name_en', 'ASC')->get();
                    }), // force the related options to be a custom query, instead of all(); you can use this to filter the results show in the select
            ]
        );
        
        CRUD::addField(
            [   // Enum
                'name'  => 'status',
                'label' => 'Staff Status',
                'type'  => 'enum'
            ],
        );
        CRUD::field('status')->size(6);
        CRUD::field('name_en')->size(4);
        CRUD::field('name_uz')->size(4);
        CRUD::field('name_ru')->size(4);
        CRUD::field('position_en')->size(4);
        CRUD::field('position_uz')->size(4);
        CRUD::field('position_ru')->size(4);
        CRUD::field('reception_time_en')->size(4);
        CRUD::field('reception_time_uz')->size(4);
        CRUD::field('reception_time_ru')->size(4);
        CRUD::field('email')->size(3);
        CRUD::field('facebook')->size(3);
        CRUD::field('linkedin')->size(3);
        CRUD::field('twitter')->size(3);
        CRUD::addField(
            [
                'label' => "Image",
                'name' => "image",
                'type' => 'image',
                'crop' => true, // set to true to allow cropping, false to disable
                'aspect_ratio' => 1, // ommit or set to 0 to allow any aspect ratio
                'disk'      => 'uploads', // in case you need to show images from a different disk
                // 'prefix'    => 'uploads/images/profile_pictures/' // in case your db value is only the file name (no path), you can use this to prepend your path to the image src (in HTML), before it's shown to the user;
            ]
        );
        CRUD::field('image');


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
