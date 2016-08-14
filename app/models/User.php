<?php

use Phalcon\Mvc\Model\Validator\Email as Email;

class User extends \Phalcon\Mvc\Model
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
    public $name;

    /**
     *
     * @var string
     */
    public $lastname;

    /**
     *
     * @var string
     */
    public $birthday;

    /**
     *
     * @var string
     */
    public $email;

    /**
     *
     * @var string
     */
    public $login;

    /**
     *
     * @var string
     */
    public $password;

    /**
     *
     * @var integer
     */
    public $is_active;

    /**
     *
     * @var string
     */
    public $reg_date;

    /**
     *
     * @var string
     */
    public $last_update;

    /**
     *
     * @var integer
     */
    public $role;

    /**
     * Validations and business logic
     *
     * @return boolean
     */
    public function validation()
    {
        $this->validate(
            new Email(
                array(
                    'field'    => 'email',
                    'required' => true,
                )
            )
        );

        if ($this->validationHasFailed() == true) {
            return false;
        }

        return true;
    }

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSource("'User'");
        $this->hasMany('id', 'Order', 'id_user', array('alias' => 'Order'));
        $this->belongsTo('role', 'Role', 'id', array('alias' => 'Role'));
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'User';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return User[]
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return User
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
