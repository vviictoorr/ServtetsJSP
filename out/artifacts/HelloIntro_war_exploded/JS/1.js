/**
 * Created by VICTOR on 02.05.2015.
 */
function Person(name) {
    this.name = name;
}

// All instances of Person create reference methods to it's prototype.
// These references are not deletable (but they can be overwritten).
Person .prototype= {
    speak: function(){
        return this.name + ' says: "Hello world!"';
    }
};

var Mary = new Person('Mary');
//    Mary.speak(); // alerts 'Mary says: "Hello world!"'