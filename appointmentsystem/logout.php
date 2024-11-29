<?php
if(isset($_GET['logout'])) {
        // Start the session 
        session_start(); 
        
        // Unset all session variables 
        $_SESSION = array(); 
    
        // Destroy the session 
        session_destroy();
    
        //Page that you will be taken to after clicking the logout button
        header('Location: login.php');
    }
    
    
    
    
    
    
    
    
    ?>