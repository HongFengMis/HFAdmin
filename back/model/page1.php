<?php
class mv3c_page1{

    public function index(){
        $this->m();
    }

///////////////////////////////////
    private function conf(&$cc){

        $para = $cc->setPara();

        $g = $cc->get();
        ($g->pid)?$pid = $g->pid : $pid = 1;

        $tp = array(
            1 => '颗粒及纤维增强电接触材料',
            2 => '层状复合电接触材料',
            3 => '一体化电接触组件',
            4 => '焊接材料',
            5 => '热双金属',
            6 => '硬质合金'
        );

        $cc->Val["pnm"] = $tp[$pid];
        $cc->Val["pid"] = $pid;

        $conf = array(
            'nm' => 'page1',//关键字
            //bread;
            'bread' => array(
                'm' => '产品管理',
                'page_add' => '产品增加',
                'page_edit' => '产品修改'
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
        $cc->For['list'] = $cc->pagei("page1",15);
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


        $cc->sqli("menu", $g->menu);
        $cc->sqli("img", $g->img);
        $cc->sqli("pic", $g->pic);
        $cc->sqli("pic_en", $g->pic_en);

        $cc->sqli("seat", $g->seat);

        $cc->opsql("page1", 'add');

        if($g->menu) $up->moveFile("/uploads/cache/".$g->menu , "/uploads/page1/".$g->menu);
        if($g->img) $up->moveFile("/uploads/cache/".$g->img , "/uploads/page1/".$g->img);
        if($g->pic) $up->moveFile("/uploads/cache/".$g->pic , "/uploads/page1/".$g->pic);
        if($g->pic_en) $up->moveFile("/uploads/cache/".$g->pic_en , "/uploads/page1/".$g->pic_en);

        $cc->go('/'.C.'.php/'.M."/m?pid=".$c->pid);
    }

    public function page_edit(){
        $cc = new ccv;
        $c = $this->conf($cc);

        $g = $cc->get();
        $id = $g->id;
        if(!$id) $cc->go( -1 , "ID错误");

        $cc->where = "id = ".$id;
        $cc->val("page1");


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
        $rs = $cc->opsql("page1");

        $cc->where = "id=".$id;

        $up->sqliCache($g->menu, "menu", "page1", $rs, $cc, "strs");
        $up->sqliCache($g->img, "img", "page1", $rs, $cc, "strs");
        $up->sqliCache($g->pic, "pic", "page1", $rs, $cc, "strs");
        $up->sqliCache($g->pic_en, "pic_en", "page1", $rs, $cc, "strs");

        $cc->sqli("tit", $g->tit);
        $cc->sqli("tit_en", $g->tit_en);

        $cc->sqli("seat", $g->seat, "nums");

        $cc->opsql("page1", 'edit');

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
        $cc->opsql("page1", 'del');

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