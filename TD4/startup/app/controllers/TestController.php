<?php
class TestController extends ControllerBase
{
    /*
     * @var \Ajax\Semantic
     */
    protected $semantic;
    /**
     * Created by PhpStorm.
     * User: rodts
     * Date: 01/03/2017
     * Time: 16:05
     */
    public function initialize(){
        $this->semantic = $this->jquery->semantic();
    }


    public function hideShowAction()
    {

        //$checkbox = $semantic->htmlCheckbox("Masquer/Identifier", "MI");
        $ck1=$this->semantic->htmlCheckbox("ckShowHide","Afficher/masquer");
        $message=$this->semantic->htmlMessage("zone");
        $ck1->on("change",$message->jsToggle("$(this).prop('checked')"));

        $this->jquery->compile($this->view);


    }
    public function changeCSSAction()
    {
        $semantic = $this->jquery->semantic();
        $bgroups=$semantic->htmlButtonGroups("bgroups",["page 1","page 2"]);

        $bgroups->setPropertyValues("data-ajax",["page1","page2"]);
        $bgroups->getOnClick("test","#pageContent",["attr"=>"data-ajax","ajaxTransition"=>"random"]);
        $semantic->htmlMessage("pageContent");
        $this->jquery->compile($this->view);



    }
    public function page1Action(){
        echo "Page 1...";
    }
    public function page2Action(){
        echo "Page 2 ....";
    }
}