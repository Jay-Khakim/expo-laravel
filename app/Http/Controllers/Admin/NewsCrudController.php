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
        CRUD::column('category_id');
        CRUD::column('type');
        CRUD::column('title_en');
        CRUD::column('title_uz');
        CRUD::column('title_ru');
        CRUD::column('slug_en');
        CRUD::column('intro_en');
        CRUD::column('intro_uz');
        CRUD::column('intro_ru');
        CRUD::column('highlighted_en');
        CRUD::column('highlighted_uz');
        CRUD::column('highlighted_ru');
        CRUD::column('body_en');
        CRUD::column('body_uz');
        CRUD::column('body_ru');
        CRUD::column('conclusion_en');
        CRUD::column('conclusion_uz');
        CRUD::column('conclusion_ru');
        CRUD::column('author_en');
        CRUD::column('author_uz');
        CRUD::column('author_ru');
        CRUD::column('image1');
        CRUD::column('image2');
        CRUD::column('image3');
        CRUD::column('image4');
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
        CRUD::setValidation(NewsRequest::class);

        CRUD::field('category_id');
        CRUD::field('type');
        CRUD::field('title_en');
        CRUD::field('title_uz');
        CRUD::field('title_ru');
        CRUD::field('slug_en');
        CRUD::field('intro_en');
        CRUD::field('intro_uz');
        CRUD::field('intro_ru');
        CRUD::field('highlighted_en');
        CRUD::field('highlighted_uz');
        CRUD::field('highlighted_ru');
        CRUD::field('body_en');
        CRUD::field('body_uz');
        CRUD::field('body_ru');
        CRUD::field('conclusion_en');
        CRUD::field('conclusion_uz');
        CRUD::field('conclusion_ru');
        CRUD::field('author_en');
        CRUD::field('author_uz');
        CRUD::field('author_ru');
        CRUD::field('image1');
        CRUD::field('image2');
        CRUD::field('image3');
        CRUD::field('image4');

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
