<?php

class Model_stores extends CI_Model
{
	public function __construct()
	{
		parent::__construct();
	}

	public function getStoresData($id = null)
	{
		if ($id) {
			$sql = "SELECT * FROM stores WHERE id = ?";
			$query = $this->db->query($sql, array($id));
			return $query->row_array();
		}
		$sql = "SELECT * FROM stores ORDER BY id DESC";
		$query = $this->db->query($sql);
		return $query->result_array();
	}

	public function getStoresData1($id = null)
	{
		if ($id) {
			$sql = "SELECT * FROM stores ORDER BY id DESC";
			$query = $this->db->query($sql);
			return $query->row_array();
		}
	}

	public function getStoresJoin($id = null)
	{
		if ($id) {
			$this->db->select('products.*, stores.name as stores_name');
			$this->db->from('products');
			$this->db->join('stores', 'products.store_id = stores.id');
			$query = $this->db->get();
			return $query->row_array();
		}
	}


	public function create($data = array())
	{
		if ($data) {
			$create = $this->db->insert('stores', $data);
			return ($create == true) ? true : false;
		}
	}

	public function update($id = null, $data = array())
	{
		if ($id && $data) {
			$this->db->where('id', $id);
			$update = $this->db->update('stores', $data);
			return ($update == true) ? true : false;
		}
	}

	public function remove($id = null)
	{
		if ($id) {
			$this->db->where('id', $id);
			$delete = $this->db->delete('stores');
			return ($delete == true) ? true : false;
		}

		return false;
	}

	public function getActiveStore()
	{
		$sql = "SELECT * FROM stores WHERE active = ?";
		$query = $this->db->query($sql, array(1));
		return $query->result_array();
	}

	public function countTotalStores()
	{
		$sql = "SELECT * FROM stores WHERE active = ?";
		$query = $this->db->query($sql, array(1));
		return $query->num_rows();
	}
}
