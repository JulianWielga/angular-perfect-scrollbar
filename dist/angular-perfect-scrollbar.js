angular.module('angular-perfect-scrollbar', []).directive('perfectScrollbar', [
  '$parse', '$timeout', function($parse, $timeout) {
    var psOptions;
    psOptions = ['wheelSpeed', 'wheelPropagation', 'swipePropagation', 'minScrollbarLength', 'maxScrollbarLength', 'useBothWheelAxes', 'useKeyboard', 'suppressScrollX', 'suppressScrollY', 'scrollXMarginOffset', 'scrollYMarginOffset'];
    return {
      restrict: 'EA',
      link: function(scope, element, attrs) {
        var init, options, update;
        options = {};
        update = function() {
          return scope.$evalAsync(function() {
            return Ps.update(element[0]);
          });
        };
        init = function() {
          var i, len, option;
          for (i = 0, len = psOptions.length; i < len; i++) {
            option = psOptions[i];
            if (attrs[option] != null) {
              options[option] = $parse(attrs[option])(scope);
            }
          }
          if ((typeof window !== "undefined" && window !== null ? typeof window.getComputedStyle === "function" ? window.getComputedStyle(element[0]).position : void 0 : void 0) === 'static') {
            element.css({
              position: 'relative'
            });
          }
          return Ps.initialize(element[0], options);
        };
        scope.$evalAsync(init);
        element.on('mouseenter', update);
        scope.$on('$updatePrefectScrollbar', update);
        return scope.$on('$destroy', function() {
          return Ps.destroy(element);
        });
      }
    };
  }
]);

//# sourceMappingURL=maps/angular-perfect-scrollbar.js.map