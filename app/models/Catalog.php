<?php

class Catalog extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    public $id;

    /**
     *
     * @var string
     */
    public $title;

    /**
     *
     * @var string
     */
    public $preview;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSource("'Catalog'");
        $this->hasMany('id', 'Products', 'id_catalog', array('alias' => 'Products'));
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'Catalog';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Catalog[]
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Catalog
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
