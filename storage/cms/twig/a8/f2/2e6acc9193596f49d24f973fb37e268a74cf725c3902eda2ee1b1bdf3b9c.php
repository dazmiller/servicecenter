<?php

/* C:\wamp\apache2\htdocs/themes/serviceme/partials/message-pane-bottom.htm */
class __TwigTemplate_a8f22e6acc9193596f49d24f973fb37e268a74cf725c3902eda2ee1b1bdf3b9c extends Twig_Template
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
        echo "<div class=\"buy\">
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"col-sm-9\">
                <h2>This is <span>The Best</span> way to save money and take back control of your information. Demo</h2>
                <h5>It’s Suitable for everyday people to 'flip' the way we do business.</h5>
            </div>
            <div class=\"col-sm-3 center\">
                <a href=\"";
        // line 9
        echo url("register");
        echo "\" rel=\"nofollow\" target=\"_blank\" class=\"btn btn-default btn-default2\">Register Now</a>
            </div>
        </div>
    </div>
</div><!-- end buy section-->";
    }

    public function getTemplateName()
    {
        return "C:\\wamp\\apache2\\htdocs/themes/serviceme/partials/message-pane-bottom.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  29 => 9,  19 => 1,);
    }
}
