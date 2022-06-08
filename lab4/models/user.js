const mongoose = require('mongoose');

var User = mongoose.model('User', {
    name: {type: String},
    surname: {type: String}
}, 'usr');

module.exports = {User};