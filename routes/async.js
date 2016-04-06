/*
 author: joefche
 date  : 2016-04-01
 site  : nodejs.macaubus.com
 QQ    : 75189343
 QQ群  : 470721481
 */

var knex = require('../db');
var async = require('async');

async.parallel({
    total:function (callback) {
        knex('article')
            .count('* as total')
            .then(function (data) {
                callback(null, data[0].total);
            })
            .catch(function (err) {
                callback(err);
            });
    },
    rows:function (callback) {
        knex('article')
            .orderBy('id', 'desc')
            .limit(10)
            .offset(1)
            .then(function (models) {
                callback(null, models);
            })
            .catch(function (err) {
                callback(err);
            });
    }

}, function (err, result) {
    var total = 0;
    for (var footers in result.rows) {
        total += result.rows[footers].id;
    }
    result.footer = [{id:total}];
    console.log(result);

});