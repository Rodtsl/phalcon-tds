<?php

namespace Ajax\semantic\html\collections\form\traits;

use Ajax\semantic\html\modules\HtmlDropdown;
use Ajax\semantic\html\elements\HtmlButton;
use Ajax\semantic\html\base\constants\Direction;
use Ajax\semantic\html\base\constants\State;

/**
 * @author jc
 * @property boolean $_hasIcon
 * @property string $identifier
 */
trait FieldTrait {

	abstract public function addToProperty($name, $value, $separator=" ");
	abstract public function addLabel($caption, $style="label-default", $leftSeparator="&nbsp;");
	abstract public function addContent($content,$before=false);
	abstract public function getField();
	abstract public function getDataField();

	public function setFocus() {
		$this->getField()->addToProperty("class", State::FOCUS);
	}

	public function addLoading() {
		if ($this->_hasIcon === false) {
			throw new \Exception("Input must have an icon for showing a loader, use addIcon before");
		}
		return $this->addToProperty("class", State::LOADING);
	}

	public function labeled($label, $direction=Direction::LEFT, $icon=NULL) {
		$field=$this->getField();
		$labelO=$field->addLabel($label,$direction===Direction::LEFT,$icon);
		$field->addToProperty("class", $direction . " labeled");
		return $labelO;
	}

	public function labeledToCorner($icon, $direction=Direction::LEFT) {
		return $this->labeled("", $direction . " corner", $icon)->toCorner($direction);
	}

	public function addAction($action, $direction=Direction::RIGHT, $icon=NULL, $labeled=false) {
		$field=$this->getField();
		$actionO=$action;
		if (\is_object($action) === false) {
			$actionO=new HtmlButton("action-" . $this->identifier, $action);
			if (isset($icon))
				$actionO->addIcon($icon, true, $labeled);
		}
		$field->addToProperty("class", $direction . " action");
		$field->addContent($actionO, \strstr($direction, Direction::LEFT) !== false);
		return $actionO;
	}

	public function addDropdown($label="", $items=array(),$direction=Direction::RIGHT){
		$labelO=new HtmlDropdown("dd-".$this->identifier,$label,$items);
		$labelO->asSelect("select-".$this->identifier,false,true);
		return $this->labeled($labelO,$direction);
	}

	public function setTransparent() {
		return $this->getField()->addToProperty("class", "transparent");
	}

	public function setReadonly(){
		$this->getDataField()->setProperty("readonly", "");
		return $this;
	}

	public function setName($name){
		$this->getDataField()->setProperty("name",$name);
		return $this;
	}

	public function setFluid(){
		$this->getField()->addToProperty("class","fluid");
		return $this;
	}

	public function setDisabled($disable=true) {
		$field=$this->getField();
		if($disable)
			$field->addToProperty("class", "disabled");
		return $this;
	}
}