<script src="jquery-3.6.0.min.js"></script>
<script src="sweetalert2.all.min.js"></script>

<?php
include('userDetails.php');



require "PHPMailer/PHPMailerAutoload.php";

include('controllers/userDetails.php');

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






if (isset($_POST['makeInvestment'])) {

    $plan = $_POST['plan'];
    $amount = $_POST['amount'];
    $percentage = $_POST['percent'];
    $duration = $_POST['duration'];
    $email = $_POST['email'];
    $profit = (($amount / 100) * $percentage);
    $referee = $userDetails['referree'];
 
    $date = date('Y-m-d H:i:s');
    $regD = new DateTime($date);
    $add_maturity = $regD->modify('+1 days');
    $maturity = $add_maturity->format('Y-m-d H:i:s');

    // END DATE
    $endD = new DateTime($date);
    $add_end = $endD->modify("+ $duration");
    $ends_on = $add_end->format('Y-m-d H:i:s');
    if (!empty($amount)) {

        $get_cur_user = mysqli_query($connection, "SELECT * FROM `users` WHERE `id` = '$id'");
        $cur_details = mysqli_fetch_assoc($get_cur_user);
        // var_dump($cur_details);

        if ($amount <= $cur_details['wallet']) {
            // die();
            // echo $amount;
            $new_cur_bal = $cur_details['wallet'] - $amount;
            $deduct_invester = mysqli_query($connection, "UPDATE `users` SET `wallet` = '$new_cur_bal' WHERE `id` = '$id'");

            if ($deduct_invester) {
                // WE FORWARD HERE
               $total_profit = $profit * (intval($duration));
                $invested = mysqli_query($connection, "INSERT INTO `investments`(`id`, `user_id`,`plan`, `amount`,`total`,`email`, `profit`, `date_invested`, `date_to_mature`, `ends_on`, `status`) VALUES ('','$id','$plan','$amount','$total_profit','$email','$profit','$date','$maturity', '$ends_on','0')");

                // PAY THE REFERRE HIS PERCENTAGE
                if ($invested) {
                    if ($userDetails['paid_ref'] == '0') {
                        $get_ref_user = mysqli_query($connection, "SELECT * FROM `users` WHERE `ref_id` = '$referee'");
                        if (mysqli_num_rows($get_ref_user) > 0) {
                            $ref_details = mysqli_fetch_assoc($get_ref_user);
                            $new_ref_bal = $ref_details['wallet'] + ($amount / 100 * 5);
                            $credit_ref = mysqli_query($connection, "UPDATE `users` SET `wallet` = '$new_ref_bal' WHERE `ref_id` = '$referee'");
                            if ($credit_ref) {
                                $deduct_invester = mysqli_query($connection, "UPDATE `users` SET `paid_ref` = '1' WHERE `id` = '$id'");
                            }
                        } else {
                            $deduct_invester = mysqli_query($connection, "UPDATE `users` SET `paid_ref` = '1' WHERE `id` = '$id'");
                        }
                    }
                }
                
                
                $email = $userDetails['email'];
                            $name = $userDetails['name'];

                           
                          
                          
                           
                            $body = "
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
                        <p>We are pleased to inform you that your recent investment transaction has been successfully processed and credited to your Raven Asset Limited account.</p>
                        <ul>
                            <li><strong>Transaction Type:</strong> Investment</li>
                            <li><strong>Amount:</strong> <span style='color:green'>$$amount</span></li>
                            <li><strong>Date:</strong> $date</li>
                        </ul>
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
                    $subj = 'Investment Request';
                    
                     $result = smtpmailer($email, $from, $from_name, $subj, $body); 
                           
                           if($result){
                                 echo "<script>Swal.fire('Investment Made','Your investment have been added successfully','success')</script>";
                                 echo "<script>setTimeout( ()=> {window.location.href = '../profile/investments.php' },1000)</script>";
                           }else{
                                echo "<script>Swal.fire('Investment Failed','Your investment requeest failed ','success')</script>";
                           }
                
                
                
                
                
               
            } else {
                echo "<script> Swal.fire('Error','An Error was encountered','error')</script>";
            }
        } else {
            echo "<script>Swal.fire('Error','Amount Above Wallet Balance','error')</script>";
        }
    } else {
        echo "<script>Swal.fire('Error','Input Error','error')</script>";
    }
}

?>