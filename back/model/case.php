<?php
class mv3c_case{

    public function index(){
        $this->m();
    }

///////////////////////////////////
    private function conf(&$cc){

        $para = $cc->setPara();

        $g = $cc->get();
        if(!$g->cid) $cc->go( -1 , "CID错误");

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
        $cc->Val["cid"] = $g->cid;

        $conf = array(
            'nm' => 'case',//关键字
            //bread;
            'bread' => array(
                'm' => '应用领域',
                'case_add' => '应用领域增加',
                'case_edit' => '应用领域修改'
            ),
            'parent' => array(
                '产品管理' => 'page1/m?pid='.$pid
            ),
            'para' => $para,
            'pid' => $pid,
            'pnm' => $cc->Val["pnm"],
            'cid' => $g->cid
        );

        ////////
        $cc->Val['C'] = C.'.php';

        return (object)$conf;
    }

    public function m(){
        $cc = new ccv;
        $c = $this->conf($cc);

        $cc->order = "seat";
        $cc->where = "cid=".$c->cid;
        $cc->For['list'] = $cc->pagei("page1_case",15);
        //code

        $cc->Val['bot'] = $cc->pagei_bot('/'.C.'.php/'.M."/m");

        ///code end

        $cc->view_inc("{$c->nm}/index.html", 'main');
        $this->view_inc($cc, $c);
    }

    public function case_add(){
        $cc = new ccv;
        $c = $this->conf($cc);

        $cc->view_inc("{$c->nm}/case_add.html", 'main');
        $this->view_inc($cc, $c);
    }

    public function case_add_op(){
        $cc = new cc;
        $up = new pekeUpload;
        $c = $this->conf($cc);

        $g = $cc->get();

        $cc->sqli("pid", $c->pid);
        $cc->sqli("cid", $c->cid);

        $cc->sqli("pic", $g->pic);

        $cc->sqli("seat", $g->seat);

        $cc->opsql("page1_case", 'add');

        if($g->pic) $up->moveFile("/uploads/cache/".$g->pic , "/uploads/page1_case/".$g->pic);

        $cc->go('/'.C.'.php/'.M."/m?pid=".$c->pid."&cid=".$c->cid);
    }

    public function case_edit(){
        $cc = new ccv;
        $c = $this->conf($cc);

        $g = $cc->get();
        $id = $g->id;
        if(!$id) $cc->go( -1 , "ID错误");

        $cc->where = "id = ".$id;
        $cc->val("page1_case");


        $cc->view_inc("{$c->nm}/case_edit.html", 'main');
        $this->view_inc($cc, $c);
    }

    public function case_edit_op(){
        $cc = new cc;
        $up = new pekeUpload;
        $c = $this->conf($cc);

        $g = $cc->get();
        $id = $g->id;
        if(!$id) $cc->go( -1 , "ID错误");

        $cc->where = "id=".$id;
        $rs = $cc->opsql("page1_case");

        $cc->where = "id=".$id;

        $up->sqliCache($g->pic, "pic", "page1_case", $rs, $cc, "strs");

        $cc->sqli("seat", $g->seat, "nums");

        $cc->opsql("page1_case", 'edit');

        $cc->go('/'.C.'.php/'.M."/m?pid=".$c->pid."&cid=".$c->cid.$c->para);
    }

    public function case_del_op(){
        $cc = new cc;
        $up = new pekeUpload;
        $c = $this->conf($cc);

        $g = $cc->get();
        $id = $g->id;
        if(!$id) $cc->go( -1 , "ID错误");

        $cc->where = "id='{$id}'";
        $cc->opsql("page1_case", 'del');

        $cc->go('/'.C.'.php/'.M."/m?pid=".$c->pid."&cid=".$c->cid.$c->para);
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