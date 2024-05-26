const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    port: '3306',
    password: '1234',
    database: 'webproje'
});

connection.connect(err => {
    if (err) {
        console.error('Veritabanına bağlanılamadı:', err);
    } else {


        console.log('Veritabanına başarıyla bağlandı');

    }
});

module.exports = connection;