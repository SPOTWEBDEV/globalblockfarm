<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);


require "PHPMailer/PHPMailerAutoload.php";
include('../config/config.php');
include('userDetails.php');

$user_identity = $userDetails['id'];



 function smtpmailer($to, $from, $from_name, $subject, $body)
  {
    $mail = new PHPMailer();
    $mail->IsSMTP();
    $mail->SMTPAuth = true;

    $mail->SMTPSecure = 'ssl'; // Using 'ssl' with port 465 as per your original configuration
    $mail->Host = 'mail.ravenassetlimited.com';
    $mail->Port = 465; // Or 587 if using 'tls'
    $mail->Username = 'support@ravenassetlimited.com';
    $mail->Password = 'support@ravenassetlimited.com'; // Use your actual email password

    $mail->IsHTML(true);
    $mail->From = $from;
    $mail->FromName = $from_name;
    $mail->Sender = $from;
    $mail->AddReplyTo($from, $from_name);
    $mail->Subject = $subject;
    $mail->Body = $body;
    $mail->AddAddress($to);

    // Enable SMTP debugging
    // $mail->SMTPDebug = 2; // 0 = off, 1 = client messages, 2 = client and server messages
    // $mail->Debugoutput = 'html'; // Output format for debugging

    if (!$mail->Send()) {
      // Log error or handle failure
      error_log('Email sending failed: ' . $mail->ErrorInfo);
      return false;
    }

    return true;
  }
?>

 <!DOCTYPE html>
 <html lang="en">
    
 <head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script src="./jquery-3.6.0.min.js"></script>
     <script src="./sweetalert2.all.min.js"></script>
 </head>
 <body>

     <?php
        if (isset($_POST['make_depo'])) {
            $amount = mysqli_real_escape_string($connection, $_POST['amount']);
            $method = mysqli_real_escape_string($connection, $_POST['method']);
            $user = mysqli_real_escape_string($connection, $_POST['user']);
           

            if (!empty($amount)) {
                $date = date('Y-m-d H:i:s'); 
                
                    $deposit = mysqli_query($connection, "INSERT INTO `deposits`(`id`, `user_id`, `wallet_addr`, `amount`, `snapshot`, `method`, `date_deposited`, `status`) 
                                                                     VALUES ('','$user','--','$amount', '--', '$method','$date','0')");

                    
                    if ($deposit) {
                        // echo "<script> Swal.fire('Deposit Succesful','Deposit recieved and will be validated','success') </script>";
                        $email = $userDetails['email'];
                            $name = $userDetails['name'];

                               
                           
                           
                           
                           
                           $body= "
                        <html>
                        <body style='margin: 0; padding: 0; font-family: Roboto, sans-serif; background: #131722;'>
                        <section style='width: 100%; background-color: #f1f2f3; color: #333;'>
                        <div style='width: 100%; max-width: 600px; margin: 0 auto;'>
                        <div style='padding: 20px; background-color: #131722; text-align: center;'>
                        <img src='https://ravenassetlimited.com/assets/RALblack.png' alt='Raven Asset Limited' style='height: 80px; width: auto; max-width: 100%; margin-bottom: 20px;'>
                        <h2 style='color: #fff; font-size: 24px;'>Welcome aboard, $name!</h2> 
                        </div>
                        <div style='padding: 20px; background: #fff; border-radius: 0 0 8px 8px;'>
                        <p>Dear $name,</p>
                        <p>You have successfully made a deposit request of <span style='font-weight: 800; color:green;'> $$amount </span> in usdt. Kindly deposit the equivalent amount requested earlier into the selected address.</p>
                        <p>Thank you for joining Raven Asset Limited, your gateway to seamless investment exchange trading. We are delighted to have you as part of our community.</p>
                        <p style='margin-top:20px'>For any inquiries or assistance, feel free to reach out to our support team at <a href='mailto:support@ravenassetlimited.com'>support@ravenassetlimited.com</a>.</p>
                        <p>Welcome once again to Raven Asset Limited!</p>
                        <p>Best regards,</p>
                        <p>The Raven Asset Limited Team</p>
                        </div>
                        <div style='text-align: center; color: #666; margin-top: 20px; font-size: 12px;'>
                        &copy; 2020 Raven Asset Limited. All rights reserved.
                        </div>
                        </div>
                        </section>
                        </body>
                        </html>";
                
                    $to = $email;
                    $from = 'support@ravenassetlimited.com';
                    $from_name = 'Raven Asset Limited';
                    $subj = 'Deposit Request';
                    $result = smtpmailer($to, $from, $from_name, $subj, $body);
                
                    if ($result) {
                         echo "<script> 
                         Swal.fire('Depsoit Request', 'You have successfully place a depsoit request', 'success')
                         setTimeout(()=>{  window.location.href = '../deposits.php' },1000) </script>";
                    } else {
                        echo "<script>
                           Swal.fire('Depsoit Error', 'Failed to place deposit request', 'error')
                         setTimeout(()=>{  window.location.href = '../deposit.php' },1000);
                        </script>";
                       
                    }
                           
                           
                           
                           
                           
                           
                           
                           
                           
                           
                           
                           
                           
                           
                           
                           
                           
                           
                    } else {
                        echo "<script> Swal.fire('Deposit Error','Error making deposit','error') </script>";
                    }
                
            } else {
                echo "<script> Swal.fire('Error','You have an input error','error') </script>";
            }
        }

        ?>

 </body>

 </html>