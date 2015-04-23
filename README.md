angular-perfect-scrollbar
=========================

This is a small directive to allow the use of [perfect-scrollbar](https://github.com/noraesae/perfect-scrollbar) in angular.

You can just use the file (in the *src* directory) as is - you only need to pay attention to the other stuff for further development.  It is also available on [Bower](http://bower.io) as 'angular-perfect-scrollbar'.

Installation
=========================

Install via Bower:

````
$ bower install ng-perfect-scrollbar --save
```

Include the angular-perfect-scrollbar files in your index.html:

````
<link href="bower_components/perfect-scrollbar/css/perfect-scrollbar.min.css" rel="stylesheet">
<script src="bower_components/perfect-scrollbar/js/min/perfect-scrollbar.min.js"></script>
<script src="bower_components/ng-perfect-scrollbar/dist/angular-perfect-scrollbar.js"></script>
```

Add it as module to your app.js:

````
['angular-perfect-scrollbar']
````

Use it wherever you want:

````
<perfect-scrollbar wheel-propagation="true" ...>
  // your content
</perfect-scrollbar>

<div perfect-scrollbar wheel-propagation="true" ...>
  // your content
</div>
````

Further installation and usage hints can be found here:

https://github.com/noraesae/perfect-scrollbar

You can find an example in the *examples* folder in this repository.  Much respect to [Hyunje Alex Jun](https://github.com/noraesae) for his great scrollbar library.

License
-------

The MIT License (MIT) Copyright (c) 2013, 2014 Drew Miller and other contributors.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.