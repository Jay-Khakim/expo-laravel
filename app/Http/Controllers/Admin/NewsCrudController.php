<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\NewsRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;

/**
 * Class NewsCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class NewsCrudController extends CrudController
{
    use \Backpack\CRUD\app\Http\Controllers\Operations\ListOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CreateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\UpdateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\DeleteOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\ShowOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CloneOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\BulkCloneOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\BulkDeleteOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\DeleteOperation { destroy as traitDestroy; }

    /**
     * Configure the CrudPanel object. Apply settings to all operations.
     * 
     * @return void
     */
    public function setup()
    {
        CRUD::setModel(\App\Models\News::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/news');
        CRUD::setEntityNameStrings('news', 'news');
    }

    /**
     * Define what happens when the List operation is loaded.
     * 
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        // CRUD::column('category_id');
        CRUD::addColumn(
            [
                // 1-n relationship
                'label'     => 'Category', // Table column heading
                'type'      => 'select',
                'name'      => 'category_id', // the column that contains the ID of that connected entity;
                'entity'    => 'category', // the method that defines the relationship in your Model
                'attribute' => 'name_en', // foreign key attribute that is shown to user
                'model'     => "App\Models\Category", // foreign key model
            ],
        );
        CRUD::column('type');
        CRUD::column('title_en');
        CRUD::column('media_type');
        CRUD::column('subtitle_en');
        // CRUD::column('subtitle_uz');
        // CRUD::column('subtitle_ru');
        // CRUD::column('title_uz');
        // CRUD::column('title_ru');
        // CRUD::column('slug_en');
        CRUD::column('intro_en');
        // CRUD::column('intro_uz');
        // CRUD::column('intro_ru');
        // CRUD::column('highlighted_en');
        // CRUD::column('highlighted_uz');
        // CRUD::column('highlighted_ru');
        // CRUD::column('body_en');
        // CRUD::column('body_uz');
        // CRUD::column('body_ru');
        // CRUD::column('conclusion_en');
        // CRUD::column('conclusion_uz');
        // CRUD::column('conclusion_ru');
        // CRUD::column('author_en');
        // CRUD::column('author_uz');
        // CRUD::column('author_ru');
        // CRUD::column('image1');
        CRUD::addColumn(
            [
                'name' => 'image1', // The db column name
                'label' => "Image 1", // Table column heading
                'type' => 'image',
                'prefix' => 'storage/',
                // optional width/height if 25px is not ok with you
                'height' => '60px',
                'width' => '60px',
            ],
        );
        // CRUD::column('image2');
        // CRUD::column('image3');
        // CRUD::column('image4');
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
        CRUD::setValidation(NewsRequest::class);

        CRUD::field('category_id')->size(6);
        CRUD::addField(
            [  // Select2
                'label'     => "Category",
                'type'      => 'select2',
                'name'      => 'category_id', // the db column for the foreign key
                'entity'    => 'category', // the method that defines the relationship in your Model
                'attribute' => 'name_en', // foreign key attribute that is shown to user
                
                'options'   => (function ($query) {
                        return $query->orderBy('name_en', 'ASC')->get();
                    }), // force the related options to be a custom query, instead of all(); you can use this to filter the results show in the select
            ]
        );
        CRUD::addField(
            [   // Enum
                'name'  => 'type',
                'label' => 'Status',
                'type'  => 'enum'
            ],
        );
        CRUD::field('type')->size(6);
        CRUD::addField(
            [   // Enum
                'name'  => 'media_type',
                'label' => 'Media Type',
                'type'  => 'enum'
            ],
        );

        CRUD::field('title_en');
        CRUD::field('title_uz');
        CRUD::field('title_ru');
        CRUD::field('subtitle_en');
        CRUD::field('subtitle_uz');
        CRUD::field('subtitle_ru');
        CRUD::field('slug_en');
        CRUD::field('intro_en');
        CRUD::field('intro_uz');
        CRUD::field('intro_ru');
        // CRUD::field('highlighted_en');
        CRUD::addField(
            [   // CKEditor
                'name'          => 'highlighted_en',
                'label'         => 'Highlighted text in English',
                'type'          => 'ckeditor',

                // optional:
                // 'extra_plugins' => ['oembed', 'widget'],
                'options'       => [
                    'autoGrow_minHeight'   => 100,
                    'autoGrow_bottomSpace' => 30,
                    'removePlugins'        => 'resize,maximize',
                ]
            ],
        );
        CRUD::addField(
            [   // CKEditor
                'name'          => 'highlighted_ru',
                'label'         => 'Highlighted text in Russian',
                'type'          => 'ckeditor',

                // optional:
                // 'extra_plugins' => ['oembed', 'widget'],
                'options'       => [
                    'autoGrow_minHeight'   => 100,
                    'autoGrow_bottomSpace' => 30,
                    'removePlugins'        => 'resize,maximize',
                ]
            ],
        );
        CRUD::addField(
            [   // CKEditor
                'name'          => 'highlighted_uz',
                'label'         => 'Highlighted text in Uzbek',
                'type'          => 'ckeditor',

                // optional:
                // 'extra_plugins' => ['oembed', 'widget'],
                'options'       => [
                    'autoGrow_minHeight'   => 100,
                    'autoGrow_bottomSpace' => 30,
                    'removePlugins'        => 'resize,maximize',
                ]
            ],
        );
        // CRUD::field('highlighted_uz');
        // CRUD::field('highlighted_ru');
        // CRUD::field('body_en');
        CRUD::addField(
            [   // CKEditor
                'name'          => 'body_en',
                'label'         => 'Body text in English',
                'type'          => 'ckeditor',

                // optional:
                // 'extra_plugins' => ['oembed', 'widget'],
                'options'       => [
                    'autoGrow_minHeight'   => 100,
                    'autoGrow_bottomSpace' => 30,
                    'removePlugins'        => 'resize,maximize',
                ]
            ],
        );
        CRUD::addField(
            [   // CKEditor
                'name'          => 'body_ru',
                'label'         => 'Body text in Russian',
                'type'          => 'ckeditor',

                // optional:
                // 'extra_plugins' => ['oembed', 'widget'],
                'options'       => [
                    'autoGrow_minHeight'   => 100,
                    'autoGrow_bottomSpace' => 30,
                    'removePlugins'        => 'resize,maximize',
                ]
            ],
        );
        CRUD::addField(
            [   // CKEditor
                'name'          => 'body_uz',
                'label'         => 'Body text in Uzbek',
                'type'          => 'ckeditor',

                // optional:
                // 'extra_plugins' => ['oembed', 'widget'],
                'options'       => [
                    'autoGrow_minHeight'   => 100,
                    'autoGrow_bottomSpace' => 30,
                    'removePlugins'        => 'resize,maximize',
                ]
            ],
        );
        CRUD::field('body_uz');
        CRUD::field('body_ru');
        CRUD::field('conclusion_en');
        CRUD::field('conclusion_uz');
        CRUD::field('conclusion_ru');
        CRUD::field('author_en')->size(4);
        CRUD::field('author_uz')->size(4);
        CRUD::field('author_ru')->size(4);
        CRUD::field('link');
        CRUD::addField(
            [
                'label' => "Picture 1",
                'name' => "image1",
                'type' => 'image',
                'crop' => true, // set to true to allow cropping, false to disable
                'aspect_ratio' => 1, // ommit or set to 0 to allow any aspect ratio
                'disk'      => 'uploads', // in case you need to show images from a different disk
                'save_path_to_database' => true,
                // 'fake' => true,
                // 'prefix'    => 'uploads/images/profile_pictures/' // in case your db value is only the file name (no path), you can use this to prepend your path to the image src (in HTML), before it's shown to the user;
            ]
        );
        CRUD::addField(
            [
                'label' => "Picture 2 Optional",
                'name' => "image2",
                'type' => 'image',
                'crop' => true, // set to true to allow cropping, false to disable
                'aspect_ratio' => 1, // ommit or set to 0 to allow any aspect ratio
                'disk'      => 'uploads', // in case you need to show images from a different disk
                // 'prefix'    => 'uploads/images/profile_pictures/' // in case your db value is only the file name (no path), you can use this to prepend your path to the image src (in HTML), before it's shown to the user;
            ]
        );
        CRUD::addField(
            [
                'label' => "Picture 3 Optional",
                'name' => "image3",
                'type' => 'image',
                'crop' => true, // set to true to allow cropping, false to disable
                'aspect_ratio' => 1, // ommit or set to 0 to allow any aspect ratio
                'disk'      => 'uploads', // in case you need to show images from a different disk
                // 'prefix'    => 'uploads/images/profile_pictures/' // in case your db value is only the file name (no path), you can use this to prepend your path to the image src (in HTML), before it's shown to the user;
            ]
        );
        CRUD::addField(
            [
                'label' => "Picture 4 Optional",
                'name' => "image4",
                'type' => 'image',
                'crop' => true, // set to true to allow cropping, false to disable
                'aspect_ratio' => 1, // ommit or set to 0 to allow any aspect ratio
                'disk'      => 'uploads', // in case you need to show images from a different disk
                // 'prefix'    => 'uploads/images/profile_pictures/' // in case your db value is only the file name (no path), you can use this to prepend your path to the image src (in HTML), before it's shown to the user;
            ]
        );
        // CRUD::field('image1');
        // CRUD::field('image2');
        // CRUD::field('image3');
        // CRUD::field('image4');

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
    public function destroy($id)
    {
        $this->crud->hasAccessOrFail('delete');

        return $this->crud->delete($id);
    }
}
