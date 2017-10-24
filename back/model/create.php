<?php
class mv3c_create{

    public function index(){
        $this->m();
    }

///////////////////////////////////
    private function conf(&$cc){

        $para = $cc->setPara();

        $conf = array(
            'nm' => 'page',//关键字
            //bread;
            'bread' => array(
                'm' => '页面生成'
            ),
            'para' => $para
        );

        ////////
        $cc->Val['C'] = C.'.php';

        return (object)$conf;
    }

    public function m(){

        $up = new pekeUpload;
        $cc = new cc;

        $p1_1 = $this->page1(1, $cc);
        $p1_2 = $this->page1(2, $cc);
        $p1_3 = $this->page1(3, $cc);
        $p1_4 = $this->page1(4, $cc);
        $p1_5 = $this->page1(5, $cc);
        $p1_6 = $this->page1(6, $cc);

        $p2_1 = $this->page2(1, $cc);
        $p2_2 = $this->page2(2, $cc);
        $p2_3 = $this->page2(3, $cc);
        $p2_4 = $this->page2(4, $cc);


        $json = '
{
    "date": "'.$cc->now().'",
    "page1":{
        "p1_1":['.$p1_1.'],
        "p1_2":['.$p1_2.'],
        "p1_3":['.$p1_3.'],
        "p1_4":['.$p1_4.'],
        "p1_5":['.$p1_5.'],
        "p1_6":['.$p1_6.']
    },
    "page2":{
        "p2_1":['.$p2_1.'],
        "p2_2":['.$p2_2.'],
        "p2_3":['.$p2_3.'],
        "p2_4":['.$p2_4.']
    },
    "download_finish": 0
}';

        $up->createJson("/uploads/", "base.json", $json);

        $cc->go(-1,"更新完成");
    }

    private function page1($id , &$cc){
        $cc->order = "seat";
        $cc->where = "pid=".$id;
        $rsc = $cc->opsql("page1", "rsc");

        $json = "";
        while($rs = $cc->rs($rsc)){

            $cc->order = "seat";
            $cc->where = "cid=".$rs["id"];
            $rsc_case = $cc->opsql("page1_case", "rsc");
            $case = "";
            $case_size = "";
            while($rs_case = $cc->rs($rsc_case)){
                $case .= '"'.$rs_case["pic"].'",';
                $case_size .= '"'.$this->imgs("page1_case",$rs_case["pic"]).'",';
            }
            if($case) $case = substr($case,0,strlen($case)-1);
            if($case_size) $case_size = substr($case_size,0,strlen($case_size)-1);

            $json .='{
                "tit":"'.$this->txt($rs["tit"]).'",
                "tit_en":"'.$this->txt($rs["tit_en"]).'",
                "menu":"'.$rs["menu"].'",
                "menu_size":"'.$this->imgs("page1",$rs["menu"]).'",
                "case":['.$case.'],
                "case_size":['.$case_size.'],
                "img":"'.$rs["img"].'",
                "img_size":"'.$this->imgs("page1",$rs["img"]).'",
                "pic":"'.$rs["pic"].'",
                "pic_size":"'.$this->imgs("page1",$rs["pic"]).'",
                "pic_en":"'.$rs["pic_en"].'",
                "pic_en_size":"'.$this->imgs("page1",$rs["pic_en"]).'"
            },';

        }
        if($json) $json = substr($json,0,strlen($json)-1);

        return $json;
    }

    private function page2($id , &$cc){

        $cc->order = "seat";
        $cc->where = "pid=".$id;
        $rsc = $cc->opsql("page2", "rsc");

        $json = "";
        while($rs = $cc->rs($rsc)){

            $json .='{
                "tit": "'.$this->txt($rs["tit"]).'",
                "tit_en": "'.$this->txt($rs["tit_en"]).'",
                "img_size": "'.$this->imgs("page2",$rs["img"]).'",
                "img": "'.$rs["img"].'",
                "info1": "'.$this->txt($rs["info1"]).'",
                "info1_en": "'.$this->txt($rs["info1_en"]).'",
                "info2": "'.$this->txt($rs["info2"]).'",
                "info2_en": "'.$this->txt($rs["info2_en"]).'",
                "info3": "'.$this->txt($rs["info3"]).'",
                "info3_en": "'.$this->txt($rs["info3_en"]).'",
                "pic": "'.$rs["pic"].'",
                "pic_size": "'.$this->imgs("page2",$rs["pic"]).'"
            },';

        }
        if($json) $json = substr($json,0,strlen($json)-1);

        return $json;
    }

    private function imgs($folder, $file){
        return filesize(Root."/uploads/{$folder}/{$file}");
    }

    private function txt($txt){
        return str_replace('"', "'", $txt);
    }

    private function view_inc(&$cc, $c){
        $cc->Val['Admin_nm'] = $_SESSION['admin_nm'];
        $cc->Val['Admin_pic'] = 'user'.$_SESSION['admin_tp'];

        $bread = $c->bread;
        foreach($bread as $k=>$v){
            $cc->Val['menu_'.$k] = $v;
        }
        $bread = $bread[A];
        $bread_html = '<li class="active"> '.$bread.'</li>';

        $bread_parent = "";
        if($c->parent){
            foreach($c->parent as $k=>$v){
                $bread_parent.= '<li><a href="'.D.'/'.C.'.php/'.$v.'">'.$k.'</a></li>';
            }
        }

        $cc->Val['Bread'] = $bread_parent.$bread_html;

        $cc->view_inc('frame/menu.html');
        $cc->view('frame/main.html');
    }
}
?>