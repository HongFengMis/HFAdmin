<?php

error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);
date_default_timezone_set('Asia/Shanghai');


define("DbHost", "app.maitianer.com");
define("DbNm",   "zhangwei");
define("DbRoot", "zhangwei");
define("DbPsw",  "zw1qa2ws");//
define("DbPost", "3306");
define("DbPre",  "akx_");

include('../../mv3c/cc.php');
include('../check.php');
require_once dirname(__FILE__) . '/Classes/PHPExcel.php';

$cc = new cc;
$g = $cc->get();

$rsc = $cc->opsql('user',"rsc");
if($rsc){
	while($rs = $cc->rs($rsc)){
		$arr[] = $rs;
	}
	export_data($arr, '用户信息'.$cc->now().'.xls');
}


function export_data($data = array(), $filename=''){

    $objPHPExcel = new PHPExcel();

    $objPHPExcel->setActiveSheetIndex(0)
        ->setCellValue('A1', 'id')
        ->setCellValue('B1', '微信openid')
        ->setCellValue('C1', '电话')
        ->setCellValue('D1', '登记时间');

    if($data){
        $i =2;
        foreach ($data as $key => $rs) {

            $objPHPExcel->getActiveSheet()->setCellValueExplicit('A'.$i, $rs['id'], PHPExcel_Cell_DataType::TYPE_STRING);
            $objPHPExcel->getActiveSheet()->setCellValueExplicit('B'.$i, $rs['openid'], PHPExcel_Cell_DataType::TYPE_STRING);
            $objPHPExcel->getActiveSheet()->setCellValueExplicit('C'.$i, $rs['tel'], PHPExcel_Cell_DataType::TYPE_STRING);
            $objPHPExcel->getActiveSheet()->setCellValueExplicit('D'.$i, $rs['dates'], PHPExcel_Cell_DataType::TYPE_STRING);

            $i++;
        }
    }

    if(!$filename) $filename = "outexcel.xls";
    header('Content-Type: application/vnd.ms-excel');
    header('Content-Disposition: attachment;filename="'.$filename.'"');
    header('Cache-Control: max-age=0');
// If you're serving to IE 9, then the following may be needed
    header('Cache-Control: max-age=1');
// If you're serving to IE over SSL, then the following may be needed
    header ('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
    header ('Last-Modified: '.gmdate('D, d M Y H:i:s').' GMT'); // always modified
    header ('Cache-Control: cache, must-revalidate'); // HTTP/1.1
    header ('Pragma: public'); // HTTP/1.0

    $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
    $objWriter->save('php://output');


}
?>