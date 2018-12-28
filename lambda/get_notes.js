'use strict';
 
var AWS = require('aws-sdk'),
	documentClient = new AWS.DynamoDB.DocumentClient(); 
 
exports.readAllNotes = function(event, context, callback) {

	var params = {
		TableName: process.env.TABLE_NAME
	};
	
	var cb = function(data) {
		callback(null, {
		    	"statusCode": 200,
		    	"headers": {
		    		"Content-Type": "application/json"
		    	},
		    	"body": JSON.stringify(data.Items),
		    	"isBase64Encoded": false
		    });
	};
	
	documentClient.scan(params, function(err, data) {
		if(err) {
		    callback(err, null);
		} 
		else {
			cb(data);
		}
	});
}
