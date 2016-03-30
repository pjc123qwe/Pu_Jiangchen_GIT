<?php
	function redirect_to($location) {
		if($location != NULL) {
			header("Location: {$location}");
			exit;
		}
	}
	
	function submitMessage($direct, $name, $email, $message) {
			$to = "address";
			$subj = "Message From Customer submitted via site.com";
			$extra = $email."\r\nReply-To: ".$email."\r\n";			
			$msg = "Name: ".$name."\n\nEmail address: ".$email."\n\nComments: ".$message;
			$go = mail($to,$subj,$msg,$extra);
			$direct = $direct."?name={$name}";
			redirect_to($direct);
	}
?>