<?php

/* C:\wamp\apache2\htdocs/themes/serviceme/partials/testimonials.htm */
class __TwigTemplate_44bb6d6991c84c9662b5e57cc24288fbf167eb6e5e61ac8c95fd28e8573b3e37 extends Twig_Template
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
        echo "<div id=\"feedbacks\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-sm-12 center feedbacks-header mbottom30\">
                        <span>100%</span>
                        <h2 class=\"section-title\">Positive feedbacks from our customers</h2>
                        <p>Made for the Company Presentation</p>
                    </div>
                </div>
                <div class=\"row\">
                    <div class=\"col-sm-4\">
                        <div class=\"feedback-box clearfix\">
                            <img src=\"";
        // line 13
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/feedbacks/feedback1.jpg");
        echo "\" alt=\"\">
                            <blockquote>Things are made to happen.</blockquote>
                        </div>
                        <h5 class=\"mtop20\">Zoi Dawson</h5>
                        <p>Co-founder, Company Name</p>
                    </div>
                    <div class=\"col-sm-4\">
                        <div class=\"feedback-box clearfix\">
                            <img src=\"";
        // line 21
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/feedbacks/feedback2.jpg");
        echo "\" alt=\"\">
                            <blockquote>The secret of getting ahead is getting started.</blockquote>
                        </div>
                        <h5 class=\"mtop20\">Sam Dawson</h5>
                        <p>Marketing, Company Name</p>
                    </div>
                    <div class=\"col-sm-4\">
                        <div class=\"feedback-box clearfix\">
                            <img src=\"";
        // line 29
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/feedbacks/feedback3.jpg");
        echo "\" alt=\"\">
                            <blockquote>By failing to prepare, you are preparing to fail.</blockquote>
                        </div>
                        <h5 class=\"mtop20\">Elena White</h5>
                        <p>Development, Company Name</p>
                    </div>
                </div>
            </div>
        </div>";
    }

    public function getTemplateName()
    {
        return "C:\\wamp\\apache2\\htdocs/themes/serviceme/partials/testimonials.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  55 => 29,  44 => 21,  33 => 13,  19 => 1,);
    }
}
