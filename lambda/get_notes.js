'use strict';
 
var AWS = require('aws-sdk'),
	documentClient = new AWS.DynamoDB.DocumentClient(); 
 
exports.readAllNotes = function(event, context, callback) {
	var params = {
		TableName: process.env.TABLE_NAME
	};
	
	var cb = function(data) {
		callback(null, {
				"data": data.Items,
		    	"statusCode": 200,
    			 "headers": { 
        		 "Access-Control-Allow-Origin": "*" 
    			}
		    })
	}
	
	documentClient.scan(params, function(err, data) {
		if(err) {
		    callback(err, null);
		} 
		else {
			cb(data);
		}
	});
}
