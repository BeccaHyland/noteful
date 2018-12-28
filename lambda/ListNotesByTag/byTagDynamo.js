const AWS = require('aws-sdk');

let documentClient = new AWS.Dynamo.DB.DocumentClient({
    'region': 'us-east-2'
});

module.exports = class DB {

    get(key, value, table) {
        if (!table) throw 'table needed';
        if (typeof key !== 'string') throw `key was not string and was ${JSON.stringify(key)} on table ${table}`;
        if (typeof value !== 'string') throw `value was not string and was ${JSON.stringify(value)} on table ${table}`;
        return new Promise((resolve, reject) => {
            let params = {
                TableName: table,
                Key: {[key]: value}
            };
            documentClient.get(params, function(err, data) {
                if (err) {
                    console.log(`There was an error fetching the data for ${key} ${value} on table ${table}`, err);
                    return reject(err);
                }
                return resolve(data.Item);
            });
        });
    }

    scan(key, value, table) {
        return new Promise((resolve, reject) => {
            let params = {
                TableName: table,
                FilterExpression: `${key} = :value`,
                ExpressionAttributeValues: { ':value': value }
            };
            documentClient.scan(params, function(err, data) {
                if (err) reject(err);
                resolve(data);
            });
        });
    }
}
