<?php

//
//CLASS POUR RECUPERER DANS LE MODEL CompaniesManagaer LA FONCTION getCompanies()
//
require_once('Views/View.php');
class ControllerContacts{

    private $_contactsManager;
    private $_view;

    public function __construct($url)
    {
        if(isset($url) && is_array($url) && count($url) > 1 ){
            throw new Exception('Page introuvable');
        }else{

            if (isset($_GET['page'])){
                $page = $_GET['page'] - 1;
            } else {
                $page = 0;
            }

            $this->contacts($page);
        }
        
    }

    private function contacts($page){

        $this->_contactsManager = new ContactsManager;

        $totalcontacts = $this->_contactsManager->getTotals();
        //
        //INSTANCE DE CompaniesManagaer.php
        //
        $contacts = $this->_contactsManager->getContacts($page);

        $this->_view = new View('Contacts');

        $this->_view->generate(array('contacts' => $contacts, 'totalContacts' => $totalcontacts));

        
    }
}