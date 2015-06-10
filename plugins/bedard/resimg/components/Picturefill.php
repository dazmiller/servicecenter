<?php namespace Bedard\Resimg\Components;

use Cms\Classes\ComponentBase;

class Picturefill extends ComponentBase
{

    /**
     * Defines component details.
     *
     * @return array
     */
    public function componentDetails()
    {
        return [
            'name'        => 'Picturefill.js',
            'description' => 'Improves browser support for responsive images.'
        ];
    }

    /**
     * Injects picturefill.min.js
     */
    public function onRun()
    {
        $this->addJs('assets/js/picturefill.min.js');
    }

}
