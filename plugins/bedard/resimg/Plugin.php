<?php namespace Bedard\Resimg;

use Bedard\Resimg\Classes\ResponsiveImage;
use System\Models\File;
use System\Classes\PluginBase;

/**
 * Resimg Plugin Information File
 */
class Plugin extends PluginBase
{

    /**
     * Returns information about this plugin.
     *
     * @return array
     */
    public function pluginDetails()
    {
        return [
            'name'        => 'Responsive Images',
            'description' => 'HTML5 responsive image support.',
            'author'      => 'Scott Bedard',
            'icon'        => 'icon-picture-o'
        ];
    }

    /**
     * Register form widgets.
     *
     * @return  array
     */
    public function registerFormWidgets()
    {
        return [
            'Owl\FormWidgets\Knob\Widget' => [
                'label' => 'Knob',
                'code'  => 'owl-knob'
            ],
            'Owl\FormWidgets\Tagbox\Widget' => [
                'label' => 'Tagbox',
                'code'  => 'owl-tagbox'
            ],
        ];
    }

    /**
     * Register the backend settings.
     *
     * @return array
     */
    public function registerSettings()
    {
        return [
            'general' => [
                'label'         => 'Responsive Images',
                'icon'          => 'icon-picture-o',
                'description'   => 'HTML5 responsive image support.',
                'class'         => 'Bedard\Resimg\Models\Settings',
            ],
        ];
    }

    public function registerComponents()
    {
        return [
            'Bedard\Resimg\Components\Picturefill' => 'picturefill'
        ];
    }

    /**
     * Extend the File model.
     */
    public function boot()
    {
        // When a new image file is created, do all the resizing now so we don't have
        // to run this process on the front-end user's dime.
        File::created(function($model) {
            if (!$model->isImage()) return;

            $responsiveImage = new ResponsiveImage($model);
            $responsiveImage->getPaths();
        });

        // Set up model accessors to look for responsive images. If they aren't found,
        // go ahead and create the files at the specified resolutions.
        File::extend(function($model) {

            // Returns an image for a given width
            $model->addDynamicMethod('getResponsiveImage', function($width = false) use ($model) {
                if (!$model->isImage() || !is_int($width)) return false;

                try {
                    $responsiveImage = new ResponsiveImage($model);
                    $resimg = $responsiveImage->getResponsiveImage($width);
                } catch (FileException $e) {
                    return [];
                }

                return $resimg;
            });

            // Returns default sizes
            $model->addDynamicMethod('getResponsiveImages', function($options = false) use ($model) {
                if (!$model->isImage()) return false;

                $viewport = is_int($options) ? $options : false;
                $sizes = is_array($options) ? $options : false;

                try {
                    $responsiveImage = new ResponsiveImage($model);
                    $resimgs = $responsiveImage->getResponsiveImages($viewport, $sizes);
                } catch (FileException $e) {
                    return [];
                }

                return $resimgs;
            });

            // Returns an img srcset property
            $model->addDynamicMethod('getResponsiveSrcset', function($sizes = false) use ($model) {
                if (!$model->isImage()) return false;

                try {
                    $responsiveImage = new ResponsiveImage($model);
                    $srcset = $responsiveImage->getResponsiveSrcset($sizes);
                } catch (FileException $e) {
                    return [];
                }

                return $srcset;
            });

            // Helper methods so the getResponsive functions work without ()
            $model->addDynamicMethod('getResponsiveImagesAttribute', function() use ($model) {
                return $model->getResponsivePaths();
            });
            $model->addDynamicMethod('getResponsiveSrcsetAttribute', function() use ($model) {
                return $model->getResponsiveSrcset();
            });
        });
    }
}
