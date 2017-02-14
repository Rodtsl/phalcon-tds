{{link_to("user/form", "<i class='add user icon'></i>  Nouvel Utilisateur...") }}
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
            {{link_to("user/form/"~user.getId(), "<button class='ui icon button'><i class='edit icon'></i></button>") }}
            <button>
                <i class="remove icon">

                </i>
            </button>
        </td>
    </tr>
    {% endfor %}
</table>


