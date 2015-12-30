/**
 * Created by VICTOR on 02.05.2015.
 */
var Person = Class({

    username: 'John',
    role: 'Employee',

    __construct: function(name, role) {
        this.username = name;
        this.role = role;
    },

    getNameAndRole: function() {
        return this.username + ' - ' + this.role;
    }

});

var Manager = Class({ extends: Person }, {

    __construct: function(name)
    {
        this.super('__construct', name, 'Manager');
    }

});

var m = new Manager('John');
//console.log(m.getNameAndRole()); // Prints: "John - Manager"
document.getElementById("demo").innerHTML =
    "My mother's last name is " ;