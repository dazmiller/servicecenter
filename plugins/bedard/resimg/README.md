# Responsive Images
Say goodbye to sending the same image to users on huge screens and phones! Speed up your page by only sending the *right* image. This plugin automatically scales the images of all other plugins.

> **Note:** This plugin currently only supports local storage.

### Default sizes and scaling quality
Defining the dimensions and quality you'd like to scale your images to is simple, just navigate to plugin's settings page. Here you can enter your theme's major breakpoints, and instruct the plugin how much care to take when scaling your images.

### Guides
There are many great tutorials on the web that discuss responsive images, but I recommend these ones from [css-tricks](https://css-tricks.com/responsive-images-youre-just-changing-resolutions-use-srcset/) and [tutsplus](http://webdesign.tutsplus.com/tutorials/quick-tip-how-to-use-html5-picture-for-responsive-images--cms-21015).

### Using an `img` element
The easiest way to create a responsive image is to use an `img` element. All you need to do is define your default image as the fall back, and add the `srcset` property like so.
```
<img src="{{ model.image.getPath() }}" srcset="{{ model.image.getResponsiveSrcset() }}">
```
Thats it, the above code will generate a responsive image using your default breakpoints. If you'd like to create a responsive image using non-default sizes, just pass an array of integers `getResponsiveSrcset()`. For more complicated responsive images using this technique, also consider using the `sizes` property.

### Using the `picture` element
Next, lets look at how we can create a responsive image using the `picture` element. The following code will create a responsive image using the default sizes.
```
<picture>
    {% for source in model.image.getResponsiveImages() %}
        <source srcset="{{ source.path }}" media="(min-width: {{ source.width }}px)">
    {% endfor %}
    <img srcset="{{ model.image.getPath() }}">
</picture>
```
To set a maximum width using this method, simply pass an integer to `getResponsiveImages()`. To use this method with non-default sizes, just pass in an array specifying the image widths such as `getResponsiveImages([320, 480, 768])`.

If you need to be really explicit with how the `source` elements should appear, you may also use the `getResponsiveImage()` method. This method accepts a single integer specifying the image width, and will return an array containing the image `path`, `width`, and `height`.

### Polyfilling for better browser support
While some browser are already supporting these features, some do not. It is recommended that you include the `Picturefill` component in your page layout. This component adds [picturefill.js](http://scottjehl.github.io/picturefill/) to your page assets, and greatly improves the browser support of this plugin.
