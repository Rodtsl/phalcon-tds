<form action="url{{'controller/action'}}"></form>
<div class="ui form">
    <div class="five fields">
            <div class="field">
                <label>Prénom</label>
                <input type="text" value="{{ user.getFirstName() }}">
            </div>
            <div class="field">
                <label>Nom</label>
                <input type="text" value="{{ user.getLastName() }}">
            </div>
            <div class="field">
                <label>Role</label>
                <select class="ui simple dropdown">
                    {% for rol in roles %}
                    <option value="{{ rol.getId() }}">{{ rol.getName() }}</option>
                    {% endfor %}
                </select>
            </div>
            <div class="ui form success">
                <div class="field">
                    <label>E-mail</label>
                    <input type="email" placeholder="joe@schmoe.com" value="{{ user.getEmail() }}" >
                </div>
            <div class="field">
                <label>Mot de passe</label>
                <input type="password" placeholder="******" value="{{ user.getPassword() }}">
            </div>
        </div>
    </div>
</div>
</br>
<button class="ui basic button">
    <i class="icon user"></i>
    Ajouter un utilisateur
</button>