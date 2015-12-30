/**
 * Created by VICTOR on 02.05.2015.
 */

    // --------- Класс-Родитель ------------
    // Конструктор родителя пишет свойства конкретного объекта
function Animal(name) {
    this.name = name;
    this.speed = 0;
}

// Методы хранятся в прототипе
Animal.prototype.run = function () {
    alert(this.name + " бежит!")
};

// --------- Класс-потомок -----------
// Конструктор потомка
function Rabbit(name) {
    Animal.apply(this, arguments);
}

// Унаследовать
Rabbit.prototype = Object.create(Animal.prototype);

// Желательно и constructor сохранить
Rabbit.prototype.constructor = Rabbit;

// Методы потомка
Rabbit.prototype.run = function () {
    // Вызов метода родителя внутри своего
    Animal.prototype.run.apply(this);
    alert(this.name + " подпрыгивает!");
};

// Готово, можно создавать объекты
var rabbit = new Rabbit('Кроль');
rabbit.run();