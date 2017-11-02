const crypto = require('crypto');

const nodemailer = require('nodemailer');

let transporter = nodemailer.createTransport({
  host: 'smtp.163.com',
  port: 25,
  auth: {
    user: 'm13265358199@163.com', //发件邮箱
    pass: 'woaini520' //授权码  
  }
});

/*
var mailOptions = {
  from: 'kangliuyong@126.com',      // 发件邮箱
  to: '',                           // 接受地址, 可以同时发送多个,以逗号隔开
  subject: '修改密码',              // 邮件主题
  text: '验证码',                   // 邮件文本
  html: ''                          // 邮件主体内容
};
*/

class Utils {
	constructor () {}

	addCrypto (o, field) {
		let md5 = crypto.createHash('md5');
		md5.update(o[field]);
		o[field] = md5.digest('hex');
	}

	sendMail(mailOptions, fn) {
		transporter.sendMail(mailOptions, fn);
	}

}

module.exports = new Utils();