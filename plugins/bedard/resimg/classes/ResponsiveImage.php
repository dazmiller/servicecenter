<?php namespace Bedard\Resimg\Classes;

use Bedard\Resimg\Models\Settings;
use October\Rain\Database\Attach\BrokenImage;
use October\Rain\Database\Attach\FileException;
use October\Rain\Database\Attach\Resizer;
use System\Models\File;

class ResponsiveImage {

    /**
     * @var     File    The responsive image's parent File model
     */
    protected $file;

    /**
     * Set up the ResponsiveImage class with a parent model
     *
     * @param   File    $file
     */
    public function __construct(File $file)
    {
        $this->file = $file;
    }

    /**
     * Returns a responsive image for a given width
     *
     * @param   integer
     * @return  array
     */
    public function getResponsiveImage($width)
    {
        if (!is_int($width)) return false;

        $extensionLength    = strlen($this->file->getExtension()) + 1;
        $paths              = $this->getPaths(false, [$width], true);
        $path               = array_shift($paths);
        $fileName           = substr($path, strpos($path, 'resimg_') + 7, -$extensionLength);

        list($modelId, $width, $height) = explode('_', $fileName);

        return [
            'path'          => $path,
            'width'         => intval($width),
            'height'        => intval($height),
        ];
    }

    /**
     * Returns an array of responsive images for a given viewport
     *
     * @param   int | boolean   $viewport
     * @param   array | boolean $sizes
     * @return  array
     */
    public function getResponsiveImages($viewport = false, $sizes = false)
    {

        $images             = [];
        $extensionLength    = strlen($this->file->getExtension()) + 1;
        $paths              = $this->getPaths($viewport, $sizes);
        $numPaths           = count($paths);

        foreach ($paths as $path) {
            $fileName = substr($path, strpos($path, 'resimg_') + 7, -$extensionLength);
            list($modelId, $width, $height) = explode('_', $fileName);
            $images[] = [
                'path'          => $path,
                'width'         => intval($width),
                'height'        => intval($height),
            ];
        }

        return $images;
    }

    /**
     * Returns an image's srcset string for an array of image sizes.
     *
     * @param   array | boolean   $sizes
     * @return  string
     */
    public function getResponsiveSrcset($sizes = false)
    {
        if (!$sizes || !is_array($sizes)) {
            if (!$sizes = Settings::get('breakpoints', false))
                return false;
        }

        $paths              = $this->getPaths(false, $sizes);
        $numPaths           = count($paths) - 1;
        $extensionLength    = strlen($this->file->getExtension()) + 1;
        $srcset             = '';

        foreach ($paths as $i => $path) {
            $fileName = substr($path, strpos($path, 'resimg_') + 7, -$extensionLength);
            list($modelId, $width) = explode('_', $fileName);

            $srcset .= $path.' '.$width.'w';
            if ($i < $numPaths) $srcset .= ', ';
        }

        return $srcset;
    }

    /**
     * Returns the paths of the responsive images for a given viewport,
     * and creates the files if they don't exist.
     *
     * @param   int | boolean   $viewport
     * @param   array | boolean $sizes
     * @param   boolean         $scaleUp
     * @return  array
     */
    public function getPaths($viewport = false, $sizes = false, $scaleUp = false)
    {
        // Load the width of our original image
        list($baseWidth, $baseHeight) = getimagesize($this->file->getLocalRootPath() . '/' . $this->file->getDiskPath());

        $paths = [];
        foreach ($sizes ?: Settings::get('breakpoints', []) as $breakpoint) {
            if (!$scaleUp && $breakpoint > $baseWidth) continue;

            $newHeight  = floor($baseHeight * ($breakpoint / $baseWidth));
            $imgFile = 'resimg_' . $this->file->id . '_' . $breakpoint . '_' . $newHeight . '.' . $this->file->getExtension();
            $imgPath = $this->file->getStorageDirectory() . $this->file->getPartitionDirectory() . $imgFile;

            if (!$this->file->hasFile($imgFile)) {
                if ($this->file->isLocalStorage()) {
                    $this->resizeLocalImage($imgPath, $breakpoint, $newHeight);
                } else {
                    // todo: add support for external storage
                    throw new FileException('The Responsive Image plugin does not yet support CDN storage.');
                }
            }

            $paths[] = $this->file->getPublicPath() . $this->file->getPartitionDirectory() . $imgFile;

            // If we've reached our largest viewport, stop gathering paths
            if ($viewport && $breakpoint > $viewport) break;
        }

        return $paths;
    }

    /**
     * Make responsive copies ot the source file locally
     *
     * @param   string  $imgPath        Path to the resized image file
     * @param   integer $width          Width to resize the image to
     * @param   integer $height         Height to resize the image to
     */
    protected function resizeLocalImage($imgPath, $width, $height = 0)
    {
        $rootPath = $this->file->getLocalRootPath();
        $filePath = $rootPath . '/' . $this->file->getDiskPath();
        $imgPath = $rootPath . '/' . $imgPath;

        // If the base file is not found, copy the BrokenImage over. Otherwise,
        // resize the base file to our specified width.
        if (!$this->file->hasFile($this->file->disk_name)) {
            BrokenImage::copyTo($imgPath);
        } else {
            $resizer = Resizer::open($filePath);
            $resizer->resize($width, $height);
            $resizer->save($imgPath, Settings::get('quality', 100));
        }
    }

}
