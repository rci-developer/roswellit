<?php
  
if (isset($_REQUEST['formtype']) && $_REQUEST['formtype'] == 'form') {
	if (isset($_REQUEST['formname'])) {
		
	}
} elseif (isset($_REQUEST['formtype']) && $_REQUEST['formtype'] == 'widget') {
	if (isset($_REQUEST['formname'])) {
		$formname = $_REQUEST['formname'];
		$field_002 = $_REQUEST['field_002'];
		$field_003 = $_REQUEST['field_003'];
		$field_004 = $_REQUEST['field_004'];
		
		$mailAddress = 'info@roswellit.com';
		$subject = 'Website Quick Contact';
		$msg = "From: $field_002 \r\n $field_003 \r\n Message: $field_004";
		$headers = 'From: webmaster@roswellit.com' . "\r\n" . 'Reply-To:' . $field_003 . "\r\n" .'X-Mailer: PHP/' . phpversion();
		
		mail($mailAddress, $subject, $msg, $headers);
	}
} elseif (isset($_REQUEST['formtype']) && $_REQUEST['formtype'] == 'contactf') {
	if (isset($_REQUEST['formname'])) {
		$formname = $_REQUEST['formname'];
		$contact_name = $_REQUEST['contact_name'];
		$contact_email = $_REQUEST['contact_email'];
		$contact_url = $_REQUEST['contact_url'];
		$contact_subject = $_REQUEST['contact_subject'];
		$contact_message = $_REQUEST['contact_message'];
		
		$mailAddress = 'info@roswellit.com';
		$subject = 'Website Contact';
		$msg = "$contact_name\r\n $contact_email\r\n $contact_url\r\n $contact_subject\r\n $contact_message";
		$headers = 'From: webmaster@roswellit.com' . "\r\n" . 'Reply-To:' . $contact_email . "\r\n" .'X-Mailer: PHP/' . phpversion();
		
		mail($mailAddress, $subject, $msg, $headers);
	}
}
?>