<?php

class Products extends \Phalcon\Mvc\Model
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
    public $mark;

    /**
     *
     * @var integer
     */
    public $count;

    /**
     *
     * @var integer
     */
    public $price;

    /**
     *
     * @var string
     */
    public $description;

    /**
     *
     * @var integer
     */
    public $id_catalog;

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSource("'Products'");
        $this->hasMany('id', 'OrderList', 'id_product', array('alias' => 'OrderList'));
        $this->belongsTo('id_catalog', 'Catalog', 'id', array('alias' => 'Catalog'));
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'Products';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Products[]
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Products
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
