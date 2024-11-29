<?php


require 'db_con.php';









function checkUsernameIfExist($username,$pdo) {
    $sql = "SELECT * FROM users_table WHERE username= :username";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(['username'=> $username]);

    if($stmt->rowCount() > 0) {
        return true;
        
    } else {
        return false;
       
    }
}


// functions.php

// Function to update the appointment status
function updateAppointmentStatus($pdo, $app_id, $status) {
    // Ensure the status is valid
    if ($status != 'accepted' && $status != 'rejected') {
        return "Invalid status!";
    }

    // Prepare SQL to update the status in the database
    $sql = "UPDATE appointment_tbl SET status = :status WHERE app_id = :app_id AND status = 'pending'";

    try {
        // Prepare and execute the statement
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':status', $status, PDO::PARAM_STR);
        $stmt->bindParam(':app_id', $app_id, PDO::PARAM_INT);
        $stmt->execute();

        // Check if the update was successful
        if ($stmt->rowCount() > 0) {
            return "Appointment status successfully updated to '{$status}'.";
            header(Location:'tables.php');
        } else {
            return "No pending appointment found or status already updated.";
            header(Location:'tables.php');
        }
    } catch (PDOException $e) {
        return "Error updating status: " . $e->getMessage();
    }
}
?>



