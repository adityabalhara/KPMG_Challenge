With using Lodash library in JavaScript, we can achieve desired output as shown below:

var object = { 'a': [{ 'b': { 'c': d } }] };
_.get(object, 'a[0].b.c');


// => d
