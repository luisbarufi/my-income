/**
 * Minified by jsDelivr using Terser v5.3.5.
 * Original file: /npm/alpine-turbo-drive-adapter@1.0.4/dist/alpine-turbo-drive-adapter.js
 *
 * Do NOT use SRI with dynamically generated files! More information: https://www.jsdelivr.com/using-sri-with-dynamic-files
 */
 !function(e){"function"==typeof define&&define.amd?define(e):e()}((function(){"use strict";function e(e,t){for(var n=0;n<t.length;n++){var i=t[n];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(e,i.key,i)}}var t,n=function(){function t(){!function(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}(this,t)}var n,i,r;return n=t,(i=[{key:"init",value:function(){document.body.querySelectorAll("[x-cloak]").forEach((function(e){var t;e.setAttribute("data-alpine-was-cloaked",null!==(t=e.getAttribute("x-cloak"))&&void 0!==t?t:"")})),this.configureEventHandlers()}},{key:"setMutationObserverState",value:function(e){if(!window.Alpine.version||!function(e,t){for(var n=e.split("."),i=t.split("."),r=0;r<n.length;r++)if(!i[r]||i[r]<n[r])return!1;return!0}("2.4.0",window.Alpine.version))throw new Error("Invalid Alpine version. Please use Alpine 2.4.0 or above");window.Alpine.pauseMutationObserver=e}},{key:"configureEventHandlers",value:function(){var e=this,t=function(){window.Alpine.discoverUninitializedComponents((function(e){window.Alpine.initializeComponent(e)})),requestAnimationFrame((function(){e.setMutationObserverState(!1)}))},n=function(e){(e.data?e.data.newBody:e.detail.newBody).querySelectorAll("[data-alpine-generated-me],[x-cloak]").forEach((function(e){var t;e.hasAttribute("x-cloak")&&e.setAttribute("data-alpine-was-cloaked",null!==(t=e.getAttribute("x-cloak"))&&void 0!==t?t:""),e.hasAttribute("data-alpine-generated-me")&&(e.removeAttribute("data-alpine-generated-me"),void 0===e.__x_for_key&&void 0===e.__x_inserted_me&&e.remove())}))},i=function(){e.setMutationObserverState(!0),document.body.querySelectorAll("[x-for],[x-if],[data-alpine-was-cloaked]").forEach((function(e){var t;if(e.hasAttribute("data-alpine-was-cloaked")&&(e.setAttribute("x-cloak",null!==(t=e.getAttribute("data-alpine-was-cloaked"))&&void 0!==t?t:""),e.removeAttribute("data-alpine-was-cloaked")),e.hasAttribute("x-for"))for(var n=e.nextElementSibling;n&&void 0!==n.__x_for_key;){var i=n;n=n.nextElementSibling,i.setAttribute("data-alpine-generated-me",!0)}else if(e.hasAttribute("x-if")){var r=e.nextElementSibling;r&&void 0!==r.__x_inserted_me&&r.setAttribute("data-alpine-generated-me",!0)}}))};document.addEventListener("turbo:load",t),document.addEventListener("turbolinks:load",t),document.addEventListener("turbo:before-render",n),document.addEventListener("turbolinks:before-render",n),document.addEventListener("turbo:before-cache",i),document.addEventListener("turbolinks:before-cache",i),document.addEventListener("turbo:submit-end",(function(){requestAnimationFrame((function(){requestAnimationFrame((function(){requestAnimationFrame((function(){t()}))}))}))}))}}])&&e(n.prototype,i),r&&e(n,r),t}();window.Alpine&&console.error("Alpine-turbo-drive-adapter must be included before AlpineJs"),Object.getOwnPropertyDescriptor(NodeList.prototype,"forEach")||Object.defineProperty(NodeList.prototype,"forEach",Object.getOwnPropertyDescriptor(Array.prototype,"forEach")),t=function(){(new n).init()},"loading"===document.readyState?document.addEventListener("readystatechange",(function(){"interactive"===document.readyState&&t()})):t()}));
 //# sourceMappingURL=/sm/a3ef357d2b0462255dbc582c2e150f448107824f81a59669257616a67ab5028d.map