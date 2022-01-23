<?php
// 1. POSTデータ取得
//$name = filter_input( INPUT_GET, ","name" ); //こういうのもあるよ
//$email = filter_input( INPUT_POST, "email" ); //こういうのもあるよ

$bname = $_POST['bname'];
$burl = $_POST['burl'];
$bcomment = $_POST['bcomment'];

// 2. DB接続します
//tryして成功すればcatch,失敗すればexit.。
try {
  //Password:MAMP='root',XAMPP=''
  $pdo = new PDO('mysql:dbname=nishinosaigon3_gs_db;charset=utf8;host=mysql57.nishinosaigon3.sakura.ne.jp','nishinosaigon3','MC980128');
} catch (PDOException $e) {
  exit('DBConnectError:'.$e->getMessage());
}


// ３．SQL文を用意(データ登録：INSERT)
$stmt = $pdo->prepare(
  "INSERT INTO gs_bm_table(id,bname,burl,bcomment,indate) VALUES(NULL,:bname,:burl,:bcomment,sysdate())"
);

// 4. バインド変数を用意 （SQL Insertハッキング防止策)->上記3も「：」をつける
$stmt->bindValue(':bname', $bname, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':burl', $burl, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':bcomment', $bcomment, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)

// 5. 実行
$status = $stmt->execute();

// 6．データ登録処理後
if($status==false){
  //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
  $error = $stmt->errorInfo();
  exit("ErrorMassage:".$error[2]);
}else{
  //５．index.phpへリダイレクト
  header('Location: index.php');
}
?>
