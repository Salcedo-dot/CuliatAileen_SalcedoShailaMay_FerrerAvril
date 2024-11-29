
function w3_open() {
    document.getElementById("main").style.marginLeft = "25%";
    document.getElementById("mySidebar").style.width = "500px"
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("openNav").style.display = 'none';
  }
  function w3_close() {
    document.getElementById("main").style.marginLeft = "0%";
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("openNav").style.display = "inline-block";
  }
  
    const logoutButton = document.querySelector("#logout-button");
    const logoutModal = document.querySelector("#logout-modal");
    const confirmLogoutButton = document.querySelector("#confirm-logout-button");
    const cancelLogoutButton = document.querySelector("#cancel-logout-button");
  
    function logout() {
        logoutModal.style.display = "flex";
    }
  
    cancelLogoutButton.addEventListener("click", function() {
        logoutModal.style.display = "none";
  
      });
  
    // Log out user on confirm button click
    // confirmLogoutButton.addEventListener("click", function() {
    //  location.href="localhost:8080/bcwbms/index.php";
    // //  document.write("<?php $_SESSION["status"] = "logout"; exit;?>")
    // });
    var dropdown = document.getElementsByClassName("dropdown-btn");
    var i;

  for (i = 0; i < dropdown.length; i++) {
    dropdown[i].addEventListener("click", function() {
      // Close all other open dropdowns first
      var openDropdowns = document.getElementsByClassName("active");
      for (var j = 0; j < openDropdowns.length; j++) {
        var openDropdownContent = openDropdowns[j].nextElementSibling;
        openDropdownContent.style.display = "none";
        openDropdowns[j].classList.remove("active");
      }

      this.classList.toggle("active");
      var dropdownContent = this.nextElementSibling;
      
      if (dropdownContent.style.display === "block") {
        dropdownContent.style.display = "none";
      } else {
        dropdownContent.style.display = "block";
      }
    });
  }
    
    // document.addEventListener("DOMContentLoaded", function() {
    //   // Get all the input elements on the page
    //   var inputs = document.querySelectorAll("input:not([type=submit])");
    
    //   // Loop through each input element and add an event listener to save its value in localStorage
    //   for (var i = 0; i < inputs.length; i++) {
    //     // Add an event listener to save the input value to localStorage when it changes
    //     if (inputs[i].type === "checkbox") {
    //       inputs[i].addEventListener("change", function() {
    //         localStorage.setItem(this.id, this.checked);
    //       });
    //     } else {
    //       inputs[i].addEventListener("change", function() {
    //         if (this.value.trim() !== "") {
    //           localStorage.setItem(this.id, this.value);
    //         } else {
    //           localStorage.removeItem(this.id);
    //         }
    //       });
    //     }
    
    //     // Retrieve the saved value from localStorage and set it as the input value if it exists
    //     var savedValue = localStorage.getItem(inputs[i].id);
    //     if (savedValue) {
    //       if (inputs[i].type === "checkbox") {
    //         inputs[i].checked = savedValue === "true";
    //       } else {
    //         inputs[i].value = savedValue;
    //       }
    //     }
    //   }
    // });

   
    
    
    
    