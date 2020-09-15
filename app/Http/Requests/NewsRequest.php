<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;
use Illuminate\Foundation\Http\FormRequest;

class NewsRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        // only allow updates if the user is logged in
        return backpack_auth()->check();
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'category_id' => 'required',
            'type' => 'required',
            'title_en' => 'required|min:2|max:500',
            'title_ru' => 'required|min:2|max:500',
            'title_uz' => 'required|min:2|max:500',
            // 'slug_uz' => 'required|min:2|max:500',
            'intro_en' => 'required|min:2|max:2500',
            'intro_ru' => 'required|min:2|max:2500',
            'intro_uz' => 'required|min:2|max:2500',
            // 'highlighted_en' => 'min:2|max:500',
            // 'highlighted_ru' => 'min:2|max:500',
            // 'highlighted_uz' => 'min:2|max:500',
            // 'body_en' => 'min:2|max:2500',
            // 'body_ru' => 'min:2|max:2500',
            // 'body_uz' => 'min:2|max:2500',
            // 'conclusion_en' => 'min:2|max:2500',
            // 'conclusion_ru' => 'min:2|max:2500',
            // 'conclusion_uz' => 'min:2|max:2500',
            // 'author_en' => 'min:2|max:100',
            // 'author_ru' => 'min:2|max:100',
            // 'author_uz' => 'min:2|max:100',
            'image1' => 'required'
        ];
    }

    /**
     * Get the validation attributes that apply to the request.
     *
     * @return array
     */
    public function attributes()
    {
        return [
            //
        ];
    }

    /**
     * Get the validation messages that apply to the request.
     *
     * @return array
     */
    public function messages()
    {
        return [
            //
        ];
    }
}
