/*
 author: joefche
 date  : 2016-04-01
 site  : nodejs.macaubus.com
 QQ    : 75189343
 QQ群  : 470721481
 */

var knex = require('knex')({
    client: 'mysql',
    //debug: true,  //显示查询的 sql 语句
    connection: {
        host     : '127.0.0.1',
        user     : 'root',
        password : '123456',
        database : 'node'
    }
});
module.exports=knex;