<?php
//1.  DB接続します
// try {
//   //Password:MAMP='root',XAMPP=''
//   $pdo = new PDO('mysql:dbname=gs_db;charset=utf8;host=localhost','root','root');
// } catch (PDOException $e) {
//   exit('DBConnectError:'.$e->getMessage());
// }
require_once('funcs.php');
$pdo = db_conn();

//２．SQL文を用意(データ取得：SELECT)
$stmt = $pdo->prepare("SELECT * FROM gs_bm_table");

//3. 実行
$status = $stmt->execute();

//4．データ表示
// $view="";
// if($status==false) {
//     //execute（SQL実行時にエラーがある場合）
//   $error = $stmt->errorInfo();
//   exit("ErrorQuery:".$error[2]);

// }else{
//   //Selectデータの数だけ自動でループしてくれる
//   //FETCH_ASSOC=http://php.net/manual/ja/pdostatement.fetch.php
//   //FETCH_ASSOC: 使いやすい形に変えてくれる(?)
//   while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){ 
//     $view .= "<p>";
//     $view .= $result['indate'].':'.$result['bname'].':'.$result['burl'].':'.$result['bcomment'].':';
//     $view .= "</p>";
//   }
// }
$view = "";
if ($status == false) {
    sql_error($status);
} else {
    while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
        //GETデータ送信リンク作成
        // <a>で囲う。
        $view .= '<p>';
        $view .='<a href="bm_list_view.php?id='.$result['id'].'">';
        $view .= $result["indate"] . "：" . $result["bname"];
        $view .= '</a>';
        $view .='<a href="bm_delete.php?id='.$result['id'].'">';
        $view .= '[削除]';
        $view .= '</a>';
        $view .= '</p>';
    }
}
?>

<!-- $view .= '<tr>';
        $view .='<a href="bm_list_view.php?id='.$result['id'].'">';
        $view .= $result["indate"] . "：" . $result["bname"];
        $view .= '</a>';
        $view .='<a href="bm_delete.php?id='.$result['id'].'">';
        $view .= '[削除]';
        $view .= '</a>';
        $view .= '</tr>'; -->
<!-- <table border="1">
    <tr>
      <th>書籍名</th>
      <th>URL</th>
      <th>コメント</th>
    </tr>
    <tr>
      <td>あああ</td>
      <td>aaa.com</td>
      <th>コメント</th>
    </tr>
    <tr>
      <td>いいい</td>
      <td>bbb.com</td>
      <th>コメント</th>
    </tr>
  </table> -->

?>


<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>書籍一覧</title>
<link rel="stylesheet" href="css/range.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>div{padding: 10px;font-size:16px;}</style>
</head>
<body id="main">
<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
      <a class="navbar-brand" href="index.php">データ登録</a>
      </div>
    </div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<div>
    <div class="container jumbotron">
            <a href="bm_list_view.php"></a>
            <?= $view ?>
        </div>

</div>
<!-- Main[End] -->

</body>
</html>
