'use strict';

var AWS = require('aws-sdk'),
	uuid = require('uuid'),
	documentClient = new AWS.DynamoDB.DocumentClient();

exports.writeNote = function(event, context, callback){
	var params = {
		Item : {
			"Id" : uuid.v1(),
			"Description" : event.description,
			"Tag" : event.tag
		},
		TableName : process.env.TABLE_NAME
	};
	documentClient.put(params, function(err, data){
		callback(err, data);
	});
}
