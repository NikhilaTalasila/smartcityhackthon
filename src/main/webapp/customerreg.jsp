<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Registration</title>
    <style>
        /* Set the background image for the entire page */
        body {
            background-image: url('images/image3.jpeg'); /* Image relative to webapp folder */
            background-repeat: no-repeat; /* Image will not repeat */
            background-size: cover; /* Makes the image cover the entire background */
            margin: 0;
            padding: 0;
        }

        /* Create a container for the form and center it */
        .container {
            background-color: skyblue; /* Set a skyblue background for the form area */
            margin: 50px auto; /* Center the form */
            padding: 20px;
            border-radius: 10px;
            width: 50%; /* Adjust width to suit your design */
        }

        /* Optional: Style the form labels and inputs */
        label, input {
            width: 100%;
            margin-bottom: 10px;
        }

        /* Style the form submit and reset buttons */
        input[type="submit"], input[type="reset"] {
            width: 48%; /* Adjust button width */
            margin-right: 2%; /* Space between buttons */
        }

        input[type="submit"]:last-child, input[type="reset"]:last-child {
            margin-right: 0; /* Remove margin on the last button */
        }

        /* Image container styling */
        .image-container {
            width: 100%;
            height: auto;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 20px;
        }

        .image-container img {
            max-width: 100%;
            height: auto;
            border-radius: 10px; /* Optional: Adds rounded corners */
        }

        /* Modal Popup Styling */
        #errorModal {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            display: none;
            justify-content: center;
            align-items: center;
            z-index: 1000;
        }

        #errorModal > div {
            background: white;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }
    </style>
</head>
<body>
    <%@ include file="navbar.jsp" %>
    <h3 align="center">Customer Registration Form</h3><br/>
    <div class="container">
        <form id="registrationForm" method="post" action="insertcustomer">
            <label>Enter Name</label>
            <input type="text" name="cname" id="cname" class="form-control" required/>
            <br/>
            <label>Select Gender</label>
            <input type="radio" name="cgender" value="Male" required/>Male
            <input type="radio" name="cgender" value="Female" required/>Female
            <input type="radio" name="cgender" value="Others" required/>Others
            <br/>
            <label>Select Date of Birth</label>
            <input type="date" name="cdob" class="form-control" required/>
            <br/>
            <label>Enter Email ID</label>
            <input type="email" name="cemail" id="cemail" class="form-control" required/>
            <br/>
            <label>Enter Password</label>
            <input type="password" name="cpwd" id="cpwd" class="form-control" required/>
            <br/>
            <label>Enter Location</label>
            <input type="text" name="clocation" class="form-control" required/>
            <br/>
            <label>Enter Contact</label>
            <input type="text" name="ccontact" id="ccontact" class="form-control" required/>
            <br/>
            <input type="submit" value="Register" class="btn btn-success"/>
            <input type="reset" value="Clear" class="btn btn-success"/>
        </form>
    </div>

    

    <!-- Modal Popup for Error Messages -->
    <div id="errorModal">
        <div>
            <span id="errorMessage"></span>
            <button onclick="closeModal()">Close</button>
        </div>
    </div>

    <script>
        document.getElementById('registrationForm').addEventListener('submit', function(event) {
            event.preventDefault(); // Prevent form submission

            const email = document.getElementById('cemail').value;
            const contact = document.getElementById('ccontact').value;
            const password = document.getElementById('cpwd').value;

            // Validate the inputs
            if (!validateEmail(email)) {
                showModal('Email must be a valid Gmail address (e.g., user@gmail.com).');
                return;
            }
            if (!validatePhone(contact)) {
                showModal('Phone number must be exactly 10 digits.');
                return;
            }
            if (!validatePassword(password)) {
                showModal('Password must contain at least one special character, one number, one alphabet, and be at least 8 characters long.');
                return;
            }

            // If validation passes, submit the form
            this.submit(); // Submit the form after validation
        });

        function validateEmail(email) {
            const emailPattern = /^[a-zA-Z0-9._%+-]+@gmail\.com$/;
            return emailPattern.test(email);
        }

        function validatePhone(phone) {
            // Phone number should be exactly 10 digits
            return phone.length === 10 && /^[0-9]{10}$/.test(phone);
        }

        function validatePassword(password) {
            // Password should have at least one special character, one number, one letter, and be at least 8 characters long
            const passwordPattern = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[!@#$%^&*()_+={}\[\]|;:'",<>\./?\\~`]).{8,}$/;
            return passwordPattern.test(password);
        }

        function showModal(message) {
            document.getElementById('errorMessage').innerText = message;
            document.getElementById('errorModal').style.display = 'flex';
        }

        function closeModal() {
            document.getElementById('errorModal').style.display = 'none';
        }
    </script>
</body>
</html>
