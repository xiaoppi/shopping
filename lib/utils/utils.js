const crypto = require('crypto');

const nodemailer = require('nodemailer');

const SMSClient = require('@alicloud/sms-sdk');

let transporter = nodemailer.createTransport({
  host: 'smtp.163.com',
  port: 25,
  auth: {
    user: 'm13265358199@163.com', //发件邮箱
    pass: 'woaini520' //授权码  
  }
});

const accessKeyId = 'LTAIrQ1pVV8dGcdr';
const secretAccessKey = 'o33T5GuBreAmc4T85AHWInBQAgiVe5';

let smsClient = new SMSClient({accessKeyId, secretAccessKey});

/*
var mailOptions = {
  from: 'kangliuyong@126.com',      // 发件邮箱
  to: '',                           // 接受地址, 可以同时发送多个,以逗号隔开
  subject: '修改密码',              // 邮件主题
  text: '验证码',                   // 邮件文本
  html: ''                          // 邮件主体内容
};
*/

 // PhoneNumbers: '1500000000',
 //    SignName: 'ozil球迷APP',
 //    TemplateCode: 'SMS_108970015',
 //    TemplateParam: '{"code":"12345"}'

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
  
  sendSMS(smsOption,successFn,errorFn){
    smsClient.sendSMS(smsOption)
      .then(successFn,errorFn);


  }
}

module.exports = new Utils();