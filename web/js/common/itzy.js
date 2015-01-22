/**
 * @class ITZY对象全局名称空间
 * @constructor
 */
var ITZY = window.ITZY || {};

/**
 * Returns the namespace specified and creates it if it doesn't exist
 *
 * ITZY.namespace("property.package");
 * ITZY.namespace("ITZY.property.package");
 *
 * Either of the above would create egova.property, then
 * ITZY.property.package
 * @method 
 * @param  {String} ns The name of the namespace
 * @return {Object} A reference to the namespace object
 */
ITZY.namespace = function(ns) {

    if (!ns || !ns.length) {
        return null;
    }

    var levels = ns.split(".");
    var nsobj = ITZY;

    for (var i=(levels[0] == "ITZY") ? 1 : 0; i<levels.length; i=i+1) {
        nsobj[levels[i]] = nsobj[levels[i]] || {};
        nsobj = nsobj[levels[i]];
    }

    return nsobj;
};

ITZY.namespace("util");
ITZY.namespace("widget");
ITZY.namespace("page");