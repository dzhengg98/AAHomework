// Phase I: Callbacks

let titleize = function(names, callback) {
  let new_sent = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
  return callback(new_sent);
};

let callback = (arr) => {
  arr.forEach(el => {
    console.log(el);
  });
};

// console.log(titleize(["Mary", "Brian", "Leo"], callback));

// Phase II: Constructors, Prototypes, and this

function Elephant(name, height) {
  this.name = name;
  this.height = height;
  this.tricks = [];
};

Elephant.prototype.trumpet = function() {
  console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`);
};

Elephant.prototype.grow = function() {
  this.height += 12;
  return `${this.name} grew 12 inches`
};

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
  return `${this.name} learned ${trick}`
};

Elephant.prototype.play = function() {
  return this.tricks[Math.floor(Math.random() * this.tricks.length)];
};

// Phase III: Function Invocation
let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

let paradeHelper = function(eleph) {
  return `${eleph.name} is trotting by!`
}

herd.forEach(elephant => {
  console.log(paradeHelper(elephant));
});

// Phase IV: Closures

let dinerBreakfast = function() {
  let order = ['cheesy scrambled eggs and bacon'];
  if (order.length === 1) {
    console.log(`I'd like ${order} please.`)
  };
  return (food) => {
    order.push(food);
    console.log (`I'd like ${order.join(" and ")} please.`);
  };
};