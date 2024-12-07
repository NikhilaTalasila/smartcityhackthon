<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Contact Us</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
body {
	margin: 0;
	font-family: Arial, sans-serif;
	background-color: #f5f5f5;
}

@import
	url("https://fonts.googleapis.com/css2?family=Reggae+One&family=Source+Sans+Pro&family=Oleo+Script&family=Dela+Gothic+One&family=Atma&display=swap")
	;

/* ----- RESET ----- */
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

body {
	font-size: 16px;
	background-color: #e2efff;
	display: flex;
	flex-direction: column;
	align-items: center;
}

body, select, option, button {
	font-family: "Source Sans Pro", sans-serif;
}

header {
	background-color: #1a1a1c;
	text-shadow: 0 -1px #0a0a0a;
	width: 100%;
	padding: 1.8rem 2.2rem;
	display: grid;
	justify-content: start;
	align-items: center;
}

#brand-name {
	color: #ededed;
	font-family: "Reggae One", cursive;
	flex-shrink: 1;
}

.tagline {
	color: #b3b3b3;
	font-family: "Oleo Script", cursive;
	flex-shrink: 1;
}

header svg {
	fill: #ededed;
	width: 3.2rem;
	margin-left: 1.4rem;
	grid-row: 1/span 2;
	grid-column: 2/span 1;
}

h2, .category-description {
	background-image: linear-gradient(90deg, #f2bc18, #fffc2e);
	width: calc(100% - calc(2.2rem * 2));
	max-width: 640px;
	padding: 2.8rem;
	transform: translateY(2.2rem);
}

h2 {
	color: rgba(0, 0, 0, 0.8);
	font-family: "Dela Gothic One", cursive;
	font-size: 2rem;
	padding-bottom: 1.5rem;
	margin-bottom: 0;
	border-radius: 2.7rem 2.7rem 0 0;
}

.category-description {
	color: rgba(0, 0, 0, 0.45);
	font-family: "Atma", cursive;
	font-size: 1.25rem;
	padding-top: 0;
	padding-bottom: 6.5rem;
	margin-top: 0;
	border-radius: 0 0 2.7rem 2.7rem;
}

.item {
	background-color: rgba(255, 255, 255, 0.5);
	width: calc(100% - calc(4.8rem * 2));
	max-width: 480px;
	padding: 2.8rem;
	margin-bottom: 2.2rem;
	display: flex;
	flex-direction: column;
	border-radius: 1.7rem;
	box-shadow: 0 1.5rem 3rem rgba(0, 0, 0, 0.2);
	transform: translateY(-1rem);
	backdrop-filter: blur(1.5rem);
}

.item:last-child {
	margin-bottom: 0.5rem;
}

.item h3 {
	font-size: 1.75rem;
	font-weight: bold;
	height: 2.8rem;
	margin-bottom: 0.5rem;
}

.item figure {
	width: 100%;
	margin-bottom: 1.5rem;
	display: flex;
	justify-content: center;
	align-items: center;
	overflow: hidden;
	border-radius: 1.5rem;
}

.item figure img {
	height: 320px;
	display: block;
}

.description {
	color: rgba(255, 255, 255, 0.7);
	background-color: rgba(0, 0, 0, 0.5);
	width: calc(100% - calc(2.8rem * 2));
	height: 320px;
	line-height: 1.75rem;
	padding: 2.5rem;
	position: absolute;
	top: calc(2.8rem + 3.3rem);
	left: 2.8rem;
	overflow: auto;
	opacity: 0;
	border-radius: 1.5rem;
	transition: opacity 200ms ease-out;
}

.item figure:hover+.description, .description:hover {
	opacity: 1;
}

.item button {
	width: 100%;
	color: #d99904;
	font-size: 1.5rem;
	font-weight: bold;
	text-shadow: 0 -1px #ffc233;
	background-image: linear-gradient(#ffe46e 0%, #ffd936 30% 80%, #ffcd19 100%);
	padding: 1.4rem;
	border: solid 1px #c98d00;
	outline: none;
	border-radius: 2.5rem/50%;
	transition: filter 500ms ease-out;
}

.item button:hover {
	filter: brightness(90%);
}

.item button:active {
	filter: brightness(80%);
}

.price {
	font-size: 1.4rem;
	font-weight: bold;
	margin-bottom: 1.5rem;
}

.special {
	margin-bottom: 0.5rem;
}

select {
	padding: 0.8rem 1.2rem;
	border: solid 1px #efefef;
	margin-bottom: 1.2rem;
	outline: none;
	border-radius: 0.75rem;
	transition: box-shadow 200ms ease-out;
}

select:focus, select:active {
	box-shadow: 0 0 0 0.25rem rgba(43, 153, 255, 0.5);
}

/* Style for labels */
label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

/* Style for text inputs and textarea */
input[type="text"], input[type="email"], textarea {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-bottom: 10px;
}

/* Style for select dropdown */
select {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-bottom: 10px;
}

/* Style for submit button */
input[type="submit"] {
	padding: 10px 20px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
<span class="blink">
<h3 align=center  style="color : red " >${message }</h3>
</span>
	<h2>Contact Us / Register Complaint</h2>
	<p class="category-description">
		<strong>Fill The below form if you have any complaints or
			post your queries by filling the below form </strong>
	</p>
	<div class="item">

		<figure>
			<img src="images/contact.png"	 alt="contact">
			<!-- full size image at: https://images.unsplash.com/photo-1560072810-1cffb09faf0f -->


		</figure>
		<form method="post" action="contact?city=${cityname}">

			<label for="name">Name:</label> <input type="text" name="name"
				id="name" required>
				 <label for="email">Email:</label>
				 <input	type="email" name="email" id="email" required>
				  <label	for="comment">Comment:</label>
			<textarea name="comment" id="comment" rows="4" required></textarea>
			<button type="submit">Submit</button>
		</form>
	</div>
</body>
</html>