<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login HéraultEvents</title>
    <link rel="icon" href="./img/logo/HE-icon.png" type="image/png">
    <link rel="stylesheet" href="./css/signIn.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway&display=swap" rel="stylesheet">
</head>

<body>
    <header class="">

    </header>
    <main>
        <div class="form">
            <span class="logo">
                <a href="index.php"> <img src="./img/logo/HE-noir.png" alt=""> </a>
            </span>
            <form action="">
                <div class="pseudo">
                    <label for="pseudo">Nom d'utilisateur ou e-mail : </label>
                    <input type="text" name="pseudo" id="pseudo" placeholder="exemple@123.fr">
                </div>
                <div class="password">
                    <label for="password">Mot de passe : </label>
                    <input type="password" name="password" id="password">
                </div>
                <button type="submit" class="btn">Sign In</button>
            </form>
        </div>
        <div class="new-compte">
            <p>Nouveau utilisateur ?<a href="signUp.php">Créer un compte</a></p>
        </div>
    </main>

</body>

</html>