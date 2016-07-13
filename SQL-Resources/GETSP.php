<?php
$link = mysqli_connect("mysql.hostinger.vn", "u288487191_datnt", "123456789", "u288487191_tmdt");

$mangChim = array();
$index = $_GET["index"];
$numberPages = $_GET["numberPages"];

if ($result = $link->query("SELECT * FROM  `chim` LIMIT $index , $numberPages")) {

 while ($row = $result->fetch_assoc()) {
        $idchim = $row["idChim"];
        $tenchim = $row["tenChim"];
        $hinhchim = $row["hinhChim"];
        array_push($mangChim, new chim($idchim,$tenchim,$hinhchim));
    }
    /* free result set */
    $result->close();
}

echo json_encode($mangChim);

class chim
{
	function chim($id,$ten,$hinh)
	{
		$this->idChim = $id;
		$this->tenChim = $ten;
		$this->hinhChim = $hinh;
	}
}

mysqli_close($link);
?>