<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'phpmailer/src/Exception.php';
require 'phpmailer/src/PHPMailer.php';
require 'phpmailer/src/SMTP.php';

if(isset($_POST["send"])){
    $mail = new PHPMailer(true);

    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com';
    $mail->SMTPAuth = true;
    $mail->Username = '';   
    $mail->Password = 'jihhxcrfsoacepnl';
    $mail->SMTPSecure = 'ssl';
    $mail->Port = 465;

    $mail->setFrom('emzomatewere@gmail.com');

    $mail->addAddress($_POST["email"]);

    $mail->isHTML(true);
    $mail->Body = $_POST["message"];
    $mail->send();

    echo
    "
    <script>
    alert('Sent Succesfully');
    document.location=href = 'index.php';
    </script>
    ";
}




?>