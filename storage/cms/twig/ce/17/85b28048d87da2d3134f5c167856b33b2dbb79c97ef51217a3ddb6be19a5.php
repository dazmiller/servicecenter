<?php

/* C:\wamp\apache2\htdocs/themes/serviceme/layouts/default.htm */
class __TwigTemplate_ce1785b28048d87da2d3134f5c167856b33b2dbb79c97ef51217a3ddb6be19a5 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!DOCTYPE html>
<html  lang=\"en-gb\" class=\"no-js\">
    <head>
        <title>Service Me - ";
        // line 4
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["this"]) ? $context["this"] : null), "page", array()), "title", array()), "html", null, true);
        echo "</title>

    <!-- ***** meta ***** -->
    <meta charset=\"utf-8\">
    <meta name=\"title\" content=\"";
        // line 8
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["this"]) ? $context["this"] : null), "page", array()), "meta_title", array()), "html", null, true);
        echo "\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=yes\">
    <meta name=\"description\" content=\"";
        // line 10
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["this"]) ? $context["this"] : null), "page", array()), "meta_description", array()), "html", null, true);
        echo "\" />
    <meta name=\"author\" content=\"Darren Miller\">
    <!-- ***** Favicons ***** -->
    <link rel=\"shortcut icon\" href=\"";
        // line 13
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/october.png");
        echo "\">
    <link rel=\"apple-touch-icon\" href=\"images/favicons/apple-touch-icon-57x57.png\">
    <link rel=\"apple-touch-icon\" sizes=\"44x72\" href=\"images/favicons/apple-touch-icon-72x72.png\">
    <link rel=\"apple-touch-icon\" sizes=\"70x114\" href=\"images/favicons/apple-touch-icon-114x114.png\">

        ";
        // line 18
        echo $this->env->getExtension('CMS')->assetsFunction('css');
        echo $this->env->getExtension('CMS')->displayBlock('styles');
        // line 19
        echo "    <!-- ***** Google Fonts ***** -->
    <link href='";
        // line 20
        echo $this->env->getExtension('CMS')->themeFilter(array(0 => "assets/css/roboto.css"));
        echo "' rel='stylesheet' type='text/css'>

    <!-- ***** Addons Stylesheet ***** -->
    <link rel=\"stylesheet\" type=\"text/css\" href=\"";
        // line 23
        echo $this->env->getExtension('CMS')->themeFilter(array(0 => "assets/css/rev-settings.css"));
        echo "\" media=\"screen\" />

    <!-- ***** Bootstrap CSS Stylesheet ***** -->
    <link rel=\"stylesheet\" type=\"text/css\" href=\"";
        // line 26
        echo $this->env->getExtension('CMS')->themeFilter(array(0 => "assets/css/bootstrap.css"));
        echo "\">


    <!-- ***** Main + Responsive CSS Stylesheet ***** -->
    <link rel=\"stylesheet\" type=\"text/css\" href=\"";
        // line 30
        echo $this->env->getExtension('CMS')->themeFilter(array(0 => "assets/css/icons-styles.css"));
        echo "\">
    <link rel=\"stylesheet\" type=\"text/css\" href=\"";
        // line 31
        echo $this->env->getExtension('CMS')->themeFilter(array(0 => "assets/css/template.css"));
        echo "\">
    <link rel=\"stylesheet\" type=\"text/css\" href=\"";
        // line 32
        echo $this->env->getExtension('CMS')->themeFilter(array(0 => "assets/css/responsive-devices.css"));
        echo "\" />
    <!-- ***** Updates CSS Stylesheet (for future templates updates ***** -->
    <link rel=\"stylesheet\" type=\"text/css\" href=\"";
        // line 34
        echo $this->env->getExtension('CMS')->themeFilter(array(0 => "assets/css/updates.css"));
        echo "\">

    <!-- JS -->
    <script type= \"text/javascript\"SRC=\"http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js\"></script>
    <script>window.jQuery || document.write('<script SRC=\"assets/js/jquery.min.js\">\\x3C/script>')</script>
</head>
<body class=\"\">
<div id=\"page-wrapper\">
    <header id=\"header\" class=\"nav-down header2\">
        <div id=\"panel\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-sm-9\">
                        <ul class=\"info-left reset-list\">
                            <li><span class=\"icon-location\"></span><p>26-32 Marsh Street, Wolli Creek, NSW, 2205</p></li>
                            <li><span class=\"icon-phone\"></span><p>1800 123 123</p></li>
                            <li><span class=\"icon-envelope2\"></span><p>info@serviceme.com</p></li>
                            <li><span class=\"icon-skype\"></span><p>Skype Us</p></li>
                        </ul>
                    </div>
                    <div class=\"col-sm-3\">
                        <ul class=\"info-right reset-list\">
                            <li class=\"ico-twitter animation\">
                                <a href=\"#\">
                                    <span class=\"icon-twitter\"></span>
                                </a>
                            </li>
                            <li class=\"ico-facebook animation\">
                                <a href=\"#\">
                                    <span class=\"icon-facebook\"></span>
                                </a>
                            </li>
                            <li class=\"ico-pinterest animation\">
                                <a href=\"#\">
                                    <span class=\"icon-pinterest\"></span>
                                </a>
                            </li>
                            <li class=\"ico-instagram animation\">
                                <a href=\"#\">
                                    <span class=\"icon-instagram\"></span>
                                </a>
                            </li>
                            <li class=\"ico-dribbble animation\">
                                <a href=\"#\">
                                    <span class=\"icon-dribbble\"></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class=\"slide\">
            <div class=\"container relative\">
                <a href=\"#\" class=\"btn-slide\"><span class=\"icon-angle-up\"></span></a>
            </div>
        </div><!-- end sliding panel -->
        <div class=\"container\">
            <div class=\"row\">
                <div class=\"col-sm-12\">
                    <div class=\"relative onlyh3\">
                        <div class=\"logo-container hasinfocard\">
                            <h1 id=\"logo\">
                                <a href=\"index.blade.php\">
                                    <div class=\"logo-default\">
                                        <img src=\"";
        // line 99
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/logo.png");
        echo "\" alt=\"\" title=\"Click to return to the homepage\" class=\"img-responsive\" width=\"184\" height=\"41\" />
                                    </div>
                                    <div class=\"logo-white\">
                                        <img src=\"";
        // line 102
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/logo-white.png");
        echo "\" alt=\"\" title=\"Click to return to the homepage\" class=\"img-responsive\" width=\"184\" height=\"41\" />
                                    </div>
                                </a>
                            </h1><!-- end logo -->
                            <div id=\"infocard\">
                                <div class=\"row\">
                                    <div class=\"col-sm-5 center\">
                                        <img src=\"";
        // line 109
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/info-logo.png");
        echo "\" alt=\"\" class=\"mbottom20\" width=\"43\" height=\"70\" />
                                        <h2>Service Me is the first of its kind in the world. Instead of making you chase a company, let them chase you for business.</h2>
                                    </div>
                                    <div class=\"col-sm-7\">
                                        <p><span class=\"icon-phone\"></span>1800 123 123</p>
                                        <p class=\"mbottom10\"><span class=\"icon-envelope2 mright5\"></span><a href=\"mailto:info@serviceme.com\" style=\"color:white\">Email: info@serviceme.com</a></p>
                                        <BR>
                                        <p><strong>Service Me Pty Ltd</strong></p>
                                        <p class=\"mbottom30\">26-32 Marsh Street, Wolli Creek, NSW, 2205</p>
                                        <ul class=\"info-social center reset-list\">
                                            <li class=\"width100 mbottom10\">
                                                <p>Get Social</p>
                                            </li>
                                            <li>
                                                <a href=\"#\">
                                                    <span class=\"icon-facebook\"></span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href=\"#\">
                                                    <span class=\"icon-twitter\"></span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href=\"#\">
                                                    <span class=\"icon-dribbble\"></span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href=\"#\">
                                                    <span class=\"icon-pinterest\"></span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div><!-- end infocard -->
                        </div><!-- end logo-container -->

                   
                        <div class=\"searchPanel\">
                            <span class=\"icon-search3\"></span>
                            <form action=\"http://www.google.com/search\" method=\"get\" onsubmit=\"Gsitesearch(this)\" target=\"_blank\" class=\"searchForm\">
                                <input name=\"q\" type=\"text\" placeholder=\"just type in here...\" class=\"searchBox\">
                            </form>
                        </div><!-- end searchPanel -->
                     

                     ";
        // line 157
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("nav-not-logged-in"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 158
        echo "                     
                     
                    </div>
                </div>
            </div>
        </div>
    </header>

        <!-- Content -->
        <section id=\"layout-content\" style=\"margin-top:148px;\">
            ";
        // line 168
        echo $this->env->getExtension('CMS')->pageFunction();
        // line 169
        echo "        </section>

        <!-- Footer -->
        <footer id=\"layout-footer\">
            ";
        // line 173
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("footer"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 174
        echo "        </footer>

        <!-- Scripts -->


    <script src=\"";
        // line 179
        echo $this->env->getExtension('CMS')->themeFilter("assets/js/jquery.themepunch.plugins.min.js");
        echo "\"></script>
    <script src=\"";
        // line 180
        echo $this->env->getExtension('CMS')->themeFilter("assets/js/jquery.themepunch.revolution.min.js");
        echo "\"></script>

        <script src=\"";
        // line 182
        echo $this->env->getExtension('CMS')->themeFilter(array(0 => "assets/js/modernizr.custom.js", 1 => "assets/js/bootstrap.js", 2 => "assets/js/clean-js-plugins.js", 3 => "assets/js/cleanlab_script.js", 4 => "assets/js/bootstrap-select.js", 5 => "assets/js/evol.colorpicker.min.js", 6 => "assets/js/dmss.js"));
        // line 190
        echo "\"></script>
        ";
        // line 191
        echo '<script src="'. Request::getBasePath()
                .'/modules/system/assets/js/framework.js"></script>'.PHP_EOL;
        echo '<script src="'. Request::getBasePath()
                    .'/modules/system/assets/js/framework.extras.js"></script>'.PHP_EOL;
        echo '<link href="'. Request::getBasePath()
                    .'/modules/system/assets/css/framework.extras.css" rel="stylesheet">'.PHP_EOL;
        // line 192
        echo "        ";
        echo $this->env->getExtension('CMS')->assetsFunction('js');
        echo $this->env->getExtension('CMS')->displayBlock('scripts');
        // line 193
        echo "\t\t<script type=\"text/javascript\">
\t\t    jQuery(document).ready(function() {
\t\t        /* Revolution Slider */
\t\t        revapi = jQuery('.tp-banner').revolution(
\t\t                {
\t\t                    delay:9000,
\t\t                    startwidth:1170,
\t\t                    startheight:500,
\t\t                    hideThumbs:10,
\t\t                    fullWidth:\"on\",
\t\t                    forceFullWidth:\"on\"
\t\t                });

\t\t        /* Owl Carousel */
\t\t        \$(\"#our-team\").owlCarousel({
\t\t            autoPlay: 3000, //Set AutoPlay to 3 seconds
\t\t            items : 4,
\t\t            itemsDesktop : [1199,3],
\t\t            itemsDesktopSmall : [979,3],
\t\t            autoPlay : false,
\t\t            navigation : true,
\t\t            pagination : false,
\t\t            navigationText: [
\t\t                \"<i class='icon-angle-left animation'></i>\",
\t\t                \"<i class='icon-angle-right animation'></i>\"
\t\t            ]
\t\t        });
\t\t    });
\t\t</script>
    </body>
</html>";
    }

    public function getTemplateName()
    {
        return "C:\\wamp\\apache2\\htdocs/themes/serviceme/layouts/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  283 => 193,  279 => 192,  272 => 191,  269 => 190,  267 => 182,  262 => 180,  258 => 179,  251 => 174,  247 => 173,  241 => 169,  239 => 168,  227 => 158,  223 => 157,  172 => 109,  162 => 102,  156 => 99,  88 => 34,  83 => 32,  79 => 31,  75 => 30,  68 => 26,  62 => 23,  56 => 20,  53 => 19,  50 => 18,  42 => 13,  36 => 10,  31 => 8,  24 => 4,  19 => 1,);
    }
}
