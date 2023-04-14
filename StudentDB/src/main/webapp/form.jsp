<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <form action="saveStudent">
        <label for="" style="color: burlywood">Enter Student id: </label>
        <input type="text" name="sid" placeholder="Enter your Id"><br>
        <label for="" style="color: burlywood">Enter your name: </label>
        <input type="text" name="name" placeholder="Enter your Name"><br>
        <label for="" style="color: burlywood">Email:</label>
        <input type="text" name="email" placeholder="Enter your Email"><br>
        <label for="" style="color: burlywood">Phone Number: </label>
        <input type="text" name="phno" placeholder="Enter your PhoneNumber"><br>
        <input type="submit">

    </form>
    <h1 style="color: blue;">please enter sid for details</h1>
    <form action="detailsById">
        <input type="text" name="sid" placeholder="StudentId"><br>
        <input type="submit">
    </form>
    <h1 style="color: blanchedalmond;">please enter sid for deletion</h1>
    <form action="deleteById">
        <input type="text" name="sid" placeholder="Student id">
        <input type="submit">
    </form>
    <h1 style="color: blue;">${message}</h1>
</body>

</html>