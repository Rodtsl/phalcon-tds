<form method="post" action="url{{'controller/action'}}"></form>
<div class="ui form">
    <div class="three fields">
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
                <select class="ui simple dropdown item">
                    <div class="menu">
                    {% for role in roles %}
                        <option value="{{ role.getId() }}" {% if(user.getId()!=null) %}
                                {% if(user.getRole().getId()==role.getId()) %}selected{% endif %}
                                {% endif %}>{{ role.getName() }}
                        </option>
                    {% endfor %}
                    </div>
                </select>
               </div>
            </br>
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
<button class="ui basic button" type="submit">
    <i class="icon user"></i>
    Ajouter un utilisateur
</button>
</form>