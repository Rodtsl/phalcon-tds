<?php
class TestController extends ControllerBase
{
    /**
     * Created by PhpStorm.
     * User: rodts
     * Date: 01/03/2017
     * Time: 16:05
     */
    public function hideShowAction()
    {
        $semantic = $this->jquery->semantic();
        //$checkbox = $semantic->htmlCheckbox("Masquer/Identifier", "MI");
        $ck1=$semantic->htmlCheckbox("ckShowHide","Afficher/masquer");
        $message=$this->$semantic->htmlMessage("zone");
        $ck1->on("change",$message->jsToggle("$(this).prop('checked')"));

        $this->jquery->compile($this->view);


    }
}