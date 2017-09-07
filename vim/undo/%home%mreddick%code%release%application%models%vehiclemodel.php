Vim�UnDo� 󎑊�N��a	�K����$��щi���i  '           *                       Y�V�    _�                     .        ����                                                                                                                                                                                                                                                                                                                           -                      v   #    Y�V�     �   .   /  '    �   -   /  '   N   	/**   =	* Attempts to match model to normalized dataone counterpart.   4	* Returns argument if no acceptable match is found.   	*   	* @param string $model   O	* @param integer $make_id If included, ensures that model belongs to this make   +	* @return array Contains model name and id   	*/   <	public function getNormalizedModel($model, $make_id = null)   	{   ;		$sql = "SELECT `r`.`model_id`, `r`.`make_id`, `r`.`model`   '				FROM `vehicles`.`ref_models` AS `v`   W				JOIN `" . $this->refdb_name . "`.`models` AS `r` ON `r`.`model_id` = `v`.`model_id`   ?				WHERE LOWER(`v`.`model`) = ? AND `v`.`model_id` IS NOT NULL   )				ORDER BY `r`.`model_id` ASC LIMIT 1";   			   S		$model_res = $this->getApplication()->db->query($sql, array(strtolower($model)));       		if ($model_res->num_rows()) {   			$row = $model_res->row();   			   _			//if the make id is not set or is set and matches the id from the db, consider it normalized   L			if (!isset($make_id) || (isset($make_id) && $make_id == $row->make_id)) {   				return array(   &					'make_id' => (int) $row->make_id,   (					'model_id' => (int) $row->model_id,   					'model' => $row->model   				);   			}   		}   		$model_res->free_result();   		   .		//no exact match found, look for the closest   		$model_id = null;   [		$sql = "SELECT `make_id`, `model_id`, `model` FROM `" . $this->refdb_name . "`.`models`";   		if ($make_id) {   +			$sql .= " WHERE `make_id` = {$make_id}";   		}   8		$model_res = $this->getApplication()->db->query($sql);   			   		if ($model_res->num_rows()) {   			$match = 0;   7			$temp_make_id = $temp_model_id = $temp_model = null;   			   *			foreach ($model_res->result() as $do) {   G				similar_text(strtolower($model), strtolower($do->model), $percent);   				   				if ($percent == 100) {   					//exact match   					return array(   &						'make_id' => (int) $do->make_id,   (						'model_id' => (int) $do->model_id,   						'model' => $do->model   					);   4				} elseif ($percent >= 75 && $percent > $match) {   					/*   Q					* If the match percentage is at least 75% and better than the previous best,   ?					* set new best percentage and model, and continue checking   					*/   "					$temp_make_id = $do->make_id;   $					$temp_model_id = $do->model_id;   					$temp_model = $do->model;   					$match = $percent;   				}   			}   			if (!empty($temp_model)) {   #				$make_id = (int) $temp_make_id;   %				$model_id = (int) $temp_model_id;   				$model = $temp_model;   			}   		}   		return array(   			'make_id' => $make_id,   			'model_id' => $model_id,   			'model' => $model   		);   	}   	5�_�                    .        ����                                                                                                                                                                                                                                                                                                                           .                      v   #    Y�V�     �   -   /  t          /**5�_�                    /        ����                                                                                                                                                                                                                                                                                                                           .                      v   #    Y�V�     �   .   0  u      	/**5�_�                    7       ����                                                                                                                                                                                                                                                                                                                           .                      v   #    Y�V�     �   6   8  u      C	public static function getNormalizedModel($model, $make_id = null)5�_�                    7   ;    ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�V�     �   6   8  u      <	public static function getNormalizedModel($model, $make_id)5�_�                    7   ;    ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�WS     �   6   8  u      J	public static function getNormalizedModel($model, $make_id, $ref_db_anem)5�_�                    7   A    ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�W_     �   6   8  u      I	public static function getNormalizedModel($model, $make_id, $refdb_anem)5�_�      	              7   H    ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�W`     �   6   8  u      W	public static function getNormalizedModel($model, $make_id, $refdb_name = 'reference')5�_�      
           	   ;       ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�Wl     �   :   <  u      V				JOIN `" . this->refdb_name . "`.`models` AS `r` ON `r`.`model_id` = `v`.`model_id`5�_�   	              
   ;       ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�Wl     �   :   <  u      U				JOIN `" . his->refdb_name . "`.`models` AS `r` ON `r`.`model_id` = `v`.`model_id`5�_�   
                 ;       ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�Wm     �   :   <  u      T				JOIN `" . is->refdb_name . "`.`models` AS `r` ON `r`.`model_id` = `v`.`model_id`5�_�                    ;       ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�Wm     �   :   <  u      S				JOIN `" . s->refdb_name . "`.`models` AS `r` ON `r`.`model_id` = `v`.`model_id`5�_�                    ;       ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�Wm     �   :   <  u      R				JOIN `" . ->refdb_name . "`.`models` AS `r` ON `r`.`model_id` = `v`.`model_id`5�_�                    ;       ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�Wm     �   :   <  u      Q				JOIN `" . >refdb_name . "`.`models` AS `r` ON `r`.`model_id` = `v`.`model_id`5�_�                    ;       ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�Wm     �   :   <  u      P				JOIN `" . refdb_name . "`.`models` AS `r` ON `r`.`model_id` = `v`.`model_id`5�_�                    ;       ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�Wn     �   :   <  u      Q				JOIN `" . $refdb_name . "`.`models` AS `r` ON `r`.`model_id` = `v`.`model_id`5�_�                    7   =    ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�W�     �   6   8  u      ]	public static function getNormalizedModel($model, $make_id, $app, $refdb_name = 'reference')5�_�                    ?       ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�W�     �   >   @  u      @		$model_res = $app->db->query($sql, array(strtolower($model)));5�_�                    U       ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�X      �   T   V  u      %		$model_res = $app->db->query($sql);5�_�                    Q   ;    ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�X$     �   P   R  u      Z		$sql = "SELECT `make_id`, `model_id`, `model` FROM `" . $his->refdb_name . "`.`models`";5�_�                    Q   ;    ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�X$     �   P   R  u      Y		$sql = "SELECT `make_id`, `model_id`, `model` FROM `" . $is->refdb_name . "`.`models`";5�_�                    Q   ;    ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�X$     �   P   R  u      X		$sql = "SELECT `make_id`, `model_id`, `model` FROM `" . $s->refdb_name . "`.`models`";5�_�                    Q   ;    ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�X$     �   P   R  u      W		$sql = "SELECT `make_id`, `model_id`, `model` FROM `" . $->refdb_name . "`.`models`";5�_�                    Q   ;    ����                                                                                                                                                                                                                                                                                                                           �           Q   A       v   G    Y�X$     �   P   R  u      V		$sql = "SELECT `make_id`, `model_id`, `model` FROM `" . $>refdb_name . "`.`models`";5�_�                    Q   ;    ����                                                                                                                                                                                                                                                                                                                           �           D          v   #    Y�X%    �   P   R  u      U		$sql = "SELECT `make_id`, `model_id`, `model` FROM `" . $refdb_name . "`.`models`";5�_�                    [   *    ����                                                                                                                                                                                                                                                                                                                           �           X          v       Y�u�    �   Z   \  u      *			foreach ($model_res->result() as $do) {   				$percent = 0;5�_�                   <       ����                                                                                                                                                                                                                                                                                                                           �           C          v       Y�Z�     �   <   =  u    �   ;   =  u      @				WHERE LOWER(`v`.`model`)> = ? AND `v`.`model_id` IS NOT NULL5�_�                     <       ����                                                                                                                                                                                                                                                                                                                           �           A          v       Y�Z�     �   ;   >        5��