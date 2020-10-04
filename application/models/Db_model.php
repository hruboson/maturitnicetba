<?php

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Db_model extends CI_Model{

	public function getMenu(){
		
		$this->db->select('polozka_menu, display_polozka');
		$this->db->from('menu');
		$this->db->order_by('id_menu', 'ASC');
		$result = $this->db->get();
		return $result->result();

	}

	public function getNumberOfBooks(){
		return $this->db->count_all('knihy');
	}

	public function getNumberOfBooksInKategorie($id_kategorie){
		$this->db->count_all_results('knihy');
		$this->db->where('id_kategorie', $id_kategorie);
		return $this->db->count_all_results('knihy');
	}

	public function getOneBook($id){
		$this->db->select('nazev_knihy, autor_knihy, pocet_stranek, id_kategorie, prebal_knihy, anotace');
		$this->db->from('knihy');
		$this->db->where('id_knihy', $id);
		return $this->db->get()->row();

	}

	public function getBooks(){
		$this->db->select('id_knihy, nazev_knihy, autor_knihy, pocet_stranek, id_kategorie');
		$this->db->from('knihy');
		$this->db->order_by('id_kategorie', 'ASC');
		$resultset = $this->db->get();
		/*$template = array(
			'table_open'            => '<table class="table table-hover">',
	
			'thead_open'            => '<thead>',
			'thead_close'           => '</thead>',
	
			'heading_row_start'     => '<tr class="bg-danger text-white">',
			'heading_row_end'       => '</tr>',
			'heading_cell_start'    => '<th>',
			'heading_cell_end'      => '</th>',
	
			'tbody_open'            => '<tbody>',
			'tbody_close'           => '</tbody>',
	
			'row_start'             => '<tr>'
			'row_end'               => '</tr>',
			'cell_start'            => '<td>',
			'cell_end'              => '</td>',
	
			'row_alt_start'         => '<tr>',
			'row_alt_end'           => '</tr>',
			'cell_alt_start'        => '<td>',
			'cell_alt_end'          => '</td>',
	
			'table_close'           => '</table>'
		);
		$this->table->set_template($template);
		$table = $this->table->generate($resultset);
		$result = array($table, $resultset);*/
		return $resultset->result();
	}

	public function getBooksInKategorie($id_kategorie){
		$this->db->select('id_knihy, nazev_knihy, autor_knihy, pocet_stranek, id_kategorie');
		$this->db->from('knihy');
		$this->db->where('id_kategorie', $id_kategorie);
		$this->db->order_by('id_kategorie', 'ASC');
		$resultset = $this->db->get();
		/*$template = array(
			'table_open'            => '<table class="table table-hover">',
	
			'thead_open'            => '<thead>',
			'thead_close'           => '</thead>',
	
			'heading_row_start'     => '<tr class="bg-danger text-white">',
			'heading_row_end'       => '</tr>',
			'heading_cell_start'    => '<th>',
			'heading_cell_end'      => '</th>',
	
			'tbody_open'            => '<tbody>',
			'tbody_close'           => '</tbody>',
	
			'row_start'             => '<tr>',
			'row_end'               => '</tr>',
			'cell_start'            => '<td>',
			'cell_end'              => '</td>',
	
			'row_alt_start'         => '<tr>',
			'row_alt_end'           => '</tr>',
			'cell_alt_start'        => '<td>',
			'cell_alt_end'          => '</td>',
	
			'table_close'           => '</table>'
		);
		$this->table->set_template($template);
		$result = $this->table->generate($resultset);*/
		return $resultset->result();
	}
}