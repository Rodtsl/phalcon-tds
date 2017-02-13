<?php

class UserController extends ControllerBase
{

    public function indexAction($sField="firstname",$sens="asc",$filter=NULL)
    {
        $users=User::find(array("order"=>$sField));
        $this->view->setVar("users",$users);
    }

    public function formAction($id=NULL){


    }

    public function updateAction($id=NULL){

    }

    public function deleteAction($id){

    }

    public function messageAction(){

    }
}

