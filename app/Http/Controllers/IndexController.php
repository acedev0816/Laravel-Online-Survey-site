<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class IndexController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {

    }
    public function report()
    {
        $user = auth()->user();
        $data = [];
        $data['organization'] = $user->organization;

        $mat_all = [];
        $mat_right = [];
        $mat_level = [];
        $mat_color = [];
        for($i = 0; $i<5; $i++)
        {
            $y = DB::table('questions')->where('cat1','=', $i+1)->count();
            array_push($mat_all, $y);

            $x = DB::table('questions')->where([ ['cat1','=', $i+1], ['mark', '=' , 1] ])->count();
            array_push($mat_right, $x);

            $p = round( 100.0 * $x/$y,1);    
            array_push($mat_level, round( 100.0 * $x/$y,1) );

            if($p<20)
                $mat_color[$i] = '#ff3023';
            else if($p<40)
                $mat_color[$i] = '#ff6a00';
            else if($p<60)
                $mat_color[$i] = '#e6a000';
            else if($p<80)
                $mat_color[$i] = '#3e9f49';
            else 
                $mat_color[$i] = '#77cb00';

        }

        $data['mat_level'] = $mat_level;
        $data['mat_color'] = $mat_color;

        $dimenstion_text = [
            'Dimension 1: Governane',
            'Dimension 2: Society Awareness & Acculturation',
            'Dimension 3: Cybersecurity Readiness',
            'Dimension 4: Legislative, Regulatory &Enforcemnet',
            'Dimension 5: Technology & Infrastructure',
        ];
        $data['dimension_text'] = $dimenstion_text;

        $dimenstion_title = [
                    'Governane',
                    'Society Awareness & Acculturation',
                    'Cybersecurity Readiness',
                    'Legislative, Regulatory &Enforcemnet',
                    'Technology & Infrastructure',
                ];
        $data['dimension_title'] = $dimenstion_title;

        $which_means_title = [
            'Initial',
            'Formative',
            'Functional(DARURIYYAT)',
            'Tactical & Strategic (Hajiyyat)',
            'Agile (Tahsiniyyat)'
        ];
        $which_means = [];

        $mat_status = [];
        $mat_explain = []; //explanation text
        for($i = 0; $i< 5; $i++)
        {
            $mat_status[$i] = 'Achieved';
            if ($mat_level[$i] != 100)
            {
                $mat_status[$i] = ''.(100 - $mat_level[$i]).'% to reach Agile';
            }
            $level = (int) ($mat_level[$i] /20) ;
            if($level >4 )
                $level = 4;
            $which_means[$i] = $which_means_title [$level];
            $exp = DB::table('mat_explain')->where( [ ['dimension','=', 1+$i], ['level', '=', $level ] ] )->first();
            if($exp != null)
                $mat_explain [$i] = $exp->text;
            else
                $mat_explain [$i] = "";

        }
        $data['which_means'] = $which_means;
        $data['mat_status'] = $mat_status;
        $data['mat_explain'] = $mat_explain;
        $maq = ['Deen', 'Nafs', 'Aql', 'Nasl', 'Mal'];
        $data['maq_text'] = $maq;

        $maq_ret = [];
        $conclusion = [];
        for($i = 0; $i< 5; $i++)
        {
            $d = [ [10,2,3,10,15],[14,12,5,14,20]];

            $con_str = "";
            for($j = 0; $j< 5; $j++)
            {
                $d[1][$j] = DB::table('questions')->where([ ['cat1', '=', ($i+1)], ['ms_element', 'like', '%'.$maq[$j].'%'] ] )->count();
                $d[0][$j] = DB::table('questions')->where([ ['cat1', '=', ($i+1)], ['ms_element', 'like', '%'.$maq[$j].'%'], ['mark','=',1] ] )->count();

                if($d[1][$j] != 0 && $d[0][$j] != $d[1][$j])
                {
                    if($con_str == "") $con_str = $maq[$j];
                    else $con_str = $con_str.", ".$maq[$j];
                }
            }
            array_push($maq_ret, $d);
            array_push($conclusion, $con_str);
        }
        $data['maq_ret'] = $maq_ret;
        $data['conclusion'] = $conclusion;

        //wrong answer explanations

        $question_explain = [];
        for($i = 0; $i<5; $i++) //cat1 : dimension
        {

            $wq = DB::table('questions')->join('question_explain', 'questions.id', '=', 'question_explain.id')->join('cat2', 'questions.cat2', '=', 'cat2.id')
            ->select('questions.id', 'questions.cat1', 'question_explain.text','questions.mark', 'cat2.title')
            ->where( [ ['questions.cat1', '=', $i+1], ['mark','=',0] ]) ->get();

            $dimension_ret = [];
            $prev_title = "-1"; //check for repeating factor
            for( $j = 0; $j < count($wq) ; $j++)
            {
                $question_ret = [];
                $question_ret['title'] = "";
                if ($wq[$j]->title != $prev_title)
                {
                    $question_ret['title'] = ($wq[$j]->title);
                    $prev_title = $wq[$j]->title;
                }
                $question_ret['explain'] = ($wq[$j]->text);

                $dimension_ret[$j] = $question_ret;
            }
            $question_explain[$i] = $dimension_ret;
        }
        $data['question_explain'] = $question_explain;
        return view('report',$data);
    }
    //load chart data
    public function load_chart_data()
    {
        $ret = [];
        $maq = ['Deen', 'Nafs', 'Aql', 'Nasl', 'Mal'];

        for($i = 0; $i < 5; $i++)
        {
            $d = [ [10,2,3,10,15],[14,12,5,14,20]];

            for($j = 0; $j<5; $j++)
            {
                $d[1][$j] = DB::table('questions')->where([ ['cat1', '=', ($i+1)], ['ms_element', 'like', '%'.$maq[$j].'%'] ] )->count();
                $d[0][$j] = DB::table('questions')->where([ ['cat1', '=', ($i+1)], ['ms_element', 'like', '%'.$maq[$j].'%'], ['mark','=',1] ] )->count();

                $d[1][$j] = $d[1][$j] - $d[0][$j];
            }

            array_push($ret, $d);
        }

        echo json_encode($ret);
    }
    //post current answer when press next button
    public function post_answer()
    {
        $ans = $_POST['ans'];
        for($i = 0; $i < count($ans); $i++)
        {
            $one = $ans[$i];
            $name = (int)$one['name'];
            $value = (int)$one['value'];
            DB::table('questions')->where('id','=',$name)->update(['mark' => $value]);
        }
    }
    //get next question list when press next button
    public function next_list()
    {

        $cat2 = $_POST['cat2'];
        $ret = array('last' => false);

        // get sub category count for cat2
        $count = DB::table('cat2')->count();
        //check if last
        if($cat2 == $count)
        {
            $ret['last'] = true;
            echo json_encode($ret);
            return;
        }
        //assign new cat2
        $cat2 ++;
        $ret['cat2'] = $cat2;

        //get titles
        $cat2_record = DB::table('cat2')->where('id',$cat2)->first();
        //var_dump($cat2_record);
        $cat1_record = DB::table('cat1')->where('id', $cat2_record->parent_cat)->first();
        $ret['title'] = 'Dimension'.$cat1_record->id.' : '.$cat1_record->title;
        $ret['subtitle'] = ''.$cat1_record->id.'.'.$cat2_record->child_index.' '.$cat2_record->title;

        //get data
        $options = DB::table('options')
            ->join('questions', 'options.question_id', '=', 'questions.id')
            ->select('options.question_id', 'options.option', 'options.mark','options.label','questions.text')
            ->where('cat2','=',$cat2)
            ->get();
        $data = array();
        for($i = 0; $i< count($options); $i++)
        {
           $id = ''.$options[$i]->question_id;
           if( !array_key_exists($id, $data))
           {
               $data[$id] =  array();
           }
           array_push($data[$id] , $options[$i]);
        }
        $ret['data'] = $data;
        echo json_encode($ret);
    }
}
