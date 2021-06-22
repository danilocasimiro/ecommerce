<?php 

namespace Hcode\Model;

use \Hcode\DB\Sql;
use \Hcode\Model;

class OrderStatus extends Model {

  const EM_ABERTO = 1;
  const AGUARDANDO_PAGAMENTO = 3;
  const PAGO = 4;
  const ENTREGUE = 5;

  public static function listAll()
  {
    $sql = new Sql();

    return $sql->select("SELECT * FROM tb_ordersstatus ORDER BY desstatus DESC");

  }
}