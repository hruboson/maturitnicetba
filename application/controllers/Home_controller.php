<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home_controller extends CI_Controller{
	
	function __construct(){
        parent::__construct();
		$this->load->model('Db_model');
    }

	public function home(){
		
		if ( !file_exists('application/views/home.php') ) {
            show_404();
		}
		
		$data["title"] = "Domů";
		$data["menu"] = $this->Db_model->getMenu();

		$this->load->view('header', $data);
		$this->load->view('home');
	}

	public function book($num){
		if ( !file_exists('application/views/book.php') ) {
            show_404();
		}

		$data["title"] = "Kniha";
		$data["menu"] = $this->Db_model->getMenu();
		$data['kniha'] = $this->Db_model->getOneBook($num);
		
		$this->load->view('header', $data);
		$this->load->view('book');
		/* 
		* tohle funguje správně
		* routa pro jednu knihu je kniha/(:num)
		* dodělat view (html), už se mi to nechtělo dělat 
		*/

	}

	public function kategorie($num){
		if ( !file_exists('application/views/table.php') ) {
            show_404();
		}

		$data["title"] = "Kategorie";
		$data["menu"] = $this->Db_model->getMenu();
		$data['num'] = $num;

		$data["table"] = $this->Db_model->getBooksInKategorie($num);
		
		$this->load->view('header', $data);
		$this->load->view('table');
	}

	public function bookTable(){

		if ( !file_exists('application/views/table.php') ) {
            show_404();
		}
		
		$data["title"] = "Tabulka Knih";
		$data["menu"] = $this->Db_model->getMenu();

		$data["table"] = $this->Db_model->getBooks();
		
		$this->load->view('header', $data);
		$this->load->view('table');

	}

	public function addBook(){
		if ( !file_exists('application/views/table.php') ) {
            show_404();
		}
		
		$data["title"] = "Přidat knihu";
		$data["menu"] = $this->Db_model->getMenu();
		$data["categories"] = $this->Db_model->getCategories();

		
		$this->load->view('header', $data);
		$this->load->view('add_book');
	}

	public function addBookDb(){
		$this->Db_model->addBookDb();

		$this->session->set_flashdata('pridana', 'Kniha byla přidána');
		redirect(base_url('kniha/pridat'));
	}
}