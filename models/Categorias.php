<?php
class Categorias extends model {

	public function getLista() {
		$array = array();
		$sql = $this->db->query("SELECT * FROM classificados_mvc.categorias");
		if($sql->rowCount() > 0) {
			$array = $sql->fetchAll();
		}

		return $array;
	}

}
?>