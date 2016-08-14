<?php

class SearchController extends ControllerBase
{

    public function indexAction()
    {
        $request = new \Phalcon\Http\Request();
        $name = $request->get('name');
        $name= (($name !== "") && $name) ? $name : "";

        $minprice = $request->get('price-min');
        $minprice= (($minprice !== "") && $minprice) ? $minprice : "";


        $maxprice = $request->get('price-max');
        $maxprice= (($maxprice !== "") && $maxprice) ? $maxprice : "";


        $diler = $request->get('diler');
        $diler= (($diler !== "") && $diler) ? $diler : "";


        $categor = $request->get('categor');
        $categor = (($categor !== "" ) && $categor) ? $categor : "";



        $idcateg = "";
        if ($categor !== ""){
            $idcateg = Catalog::findFirst("title = '" . $categor ."'")->id;
        }

        $minmoney = ($minprice > 0) ? $minprice : 0;
        $maxmoney = ($maxprice != "") ? $maxprice : 999999;

        $rez = Products::find(
            array(

                "conditions" => "price > '". $minmoney ."' AND price < '" . $maxmoney . "' AND title LIKE '" . $name . "%' AND id_catalog LIKE '" . $idcateg . "%' AND title LIKE '" . $diler . "%'"
            )
        );

        $this->view->setVars(array(
            'name' => $name,
            'minprice' => $minprice,
            'maxprice' => $maxprice,
            'diler' => $diler,
            'categor' => $categor,
            'rez' => $rez
        ));
    }

}

