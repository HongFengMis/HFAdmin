<?php
class mv3c_page2{

    public function index(){
        $this->m();
    }

///////////////////////////////////
    private function conf(&$cc){

        $para = $cc->setPara();

        $g = $cc->get();
        ($g->pid)?$pid = $g->pid : $pid = 1;

        $tp = array(
            1 => '工业电器',
            2 => '建筑电器',
            3 => '汽车电器',
            4 => '通讯电子'
        );

        $cc->Val["pnm"] = $tp[$pid];
        $cc->Val["pid"] = $pid;

        $conf = array(
            'nm' => 'page2',//关键字
            //bread;
            'bread' => array(
                'm' => '解决方案',
                'page_add' => '解决方案增加',
                'page_edit' => '解决方案修改'
            ),
            'para' => $para,
            'pid' => $pid,
            'pnm' => $cc->Val["pnm"]
        );

        ////////
        $cc->Val['C'] = C.'.php';

        return (object)$conf;
    }

    public function m(){
        $cc = new ccv;
        $c = $this->conf($cc);

        $cc->order = "seat";
        $cc->where = "pid=".$c->pid;
        $cc->For['list'] = $cc->pagei("page2",15);
        //code

        $cc->Val['bot'] = $cc->pagei_bot('/'.C.'.php/'.M."/m");

        ///code end

        $cc->view_inc("{$c->nm}/index.html", 'main');
        $this->view_inc($cc, $c);
    }

    public function page_add(){
        $cc = new ccv;
        $c = $this->conf($cc);

        $cc->view_inc("{$c->nm}/page_add.html", 'main');
        $this->view_inc($cc, $c);
    }

    public function page_add_op(){
        $cc = new cc;
        $up = new pekeUpload;
        $c = $this->conf($cc);

        $g = $cc->get();

        $cc->sqli("pid", $c->pid);
        $cc->sqli("tit", $g->tit);
        $cc->sqli("tit_en", $g->tit_en);

        $cc->sqli("img", $g->img);
        $cc->sqli("pic", $g->pic);

        $cc->sqli("info1", $g->info1);
        $cc->sqli("info2", $g->info2);
        $cc->sqli("info3", $g->info3);
        $cc->sqli("info1_en", $g->info1_en);
        $cc->sqli("info2_en", $g->info2_en);
        $cc->sqli("info3_en", $g->info3_en);

        $cc->sqli("seat", $g->seat);

        $cc->opsql("page2", 'add');

        if($g->img) $up->moveFile("/uploads/cache/".$g->img , "/uploads/page2/".$g->img);
        if($g->pic) $up->moveFile("/uploads/cache/".$g->pic , "/uploads/page2/".$g->pic);

        $cc->go('/'.C.'.php/'.M."/m?pid=".$c->pid);
    }

    public function page_edit(){
        $cc = new ccv;
        $c = $this->conf($cc);

        $g = $cc->get();
        $id = $g->id;
        if(!$id) $cc->go( -1 , "ID错误");

        $cc->where = "id = ".$id;
        $cc->val("page2");


        $cc->view_inc("{$c->nm}/page_edit.html", 'main');
        $this->view_inc($cc, $c);
    }

    public function page_edit_op(){
        $cc = new cc;
        $up = new pekeUpload;
        $c = $this->conf($cc);

        $g = $cc->get();
        $id = $g->id;
        if(!$id) $cc->go( -1 , "ID错误");

        $cc->where = "id=".$id;
        $rs = $cc->opsql("page2");

        $cc->where = "id=".$id;

        $up->sqliCache($g->img, "img", "page2", $rs, $cc, "strs");
        $up->sqliCache($g->pic, "pic", "page2", $rs, $cc, "strs");

        $cc->sqli("tit", $g->tit);
        $cc->sqli("tit_en", $g->tit_en);

        $cc->sqli("info1", $g->info1, "strs");
        $cc->sqli("info2", $g->info2, "strs");
        $cc->sqli("info3", $g->info3, "strs");
        $cc->sqli("info1_en", $g->info1_en, "strs");
        $cc->sqli("info2_en", $g->info2_en, "strs");
        $cc->sqli("info3_en", $g->info3_en, "strs");

        $cc->sqli("seat", $g->seat, "nums");

        $cc->opsql("page2", 'edit');

        $cc->go('/'.C.'.php/'.M."/m?pid=".$c->pid.$c->para);
    }

    public function page_del_op(){
        $cc = new cc;
        $up = new pekeUpload;
        $c = $this->conf($cc);

        $g = $cc->get();
        $id = $g->id;
        if(!$id) $cc->go( -1 , "ID错误");

        $cc->where = "id='{$id}'";
        $cc->opsql("page2", 'del');

        $cc->go('/'.C.'.php/'.M."/m?pid=".$c->pid.$c->para);
    }


    public function ImgUpload(){

        $cc = new cc;
        $g = $cc->get();

        $up = new pekeUpload;
        echo $up->upImg($g->filename , '/uploads/cache/');

    }

    public function Mp3Upload(){

        $cc = new cc;
        $g = $cc->get();

        $up = new pekeUpload;
        echo $up->upMp3($g->filename , '/uploads/cache/');

    }

    public function DelCache(){
        $cc = new cc;
        $g = $cc->get();

        $up = new pekeUpload;
        $up->delFile('/uploads/cache/', $g->file);
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