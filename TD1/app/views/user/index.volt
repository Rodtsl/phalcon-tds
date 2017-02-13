<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/1.11.8/semantic.min.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/1.11.8/semantic.min.js"></script>
</head>
<body>
<table class="ui celled table">
    <thead>
    <tr>
        <td>Prénom</td>
        <td>Nom</td>
        <td>Login</td>
        <td>Email</td>
        <td>Role</td>
        <td>Boutton</td>
    </tr>

    </thead>
    {% for user in users %}
    <tr>
        <td>{{user.getFirstName()}}</td>
        <td>{{user.getLastName()}}</td>
        <td>{{user.getLogin()}}</td>
        <td>{{user.getEmail()}}</td>
        <td>{{user.getRole().getName()}}</td>
        <td>
            <button>
                <i class="edit icon">

                </i>
            </button>
            <button>
                <i class="delete icon">

                </i>
            </button>
        </td>
    </tr>
    {% endfor %}
</table>





</body>