const DB = require('./byTagDynamo');
const Dynamo = new DB();

exports.handler = async (event) => {
    let response = await listNotesByTag(event);
    return done(response);
};

const done = response => {
    return {
        "statusCode": 200,
        "isBase64Encoded": false,
        "body": JSON.stringify(response),
        "headers": {
            'Content-Type': 'application/json',
            'Access-Control-Allow-Methods': '*',
            'Access-Control-Allow-Origin': '*'
        }
    }
}

const listNotesByTag = async event => {
    let tag = event.pathParameters.tag;
    let data = await Dynamo.scan('Tag', tag, 'notefuls' );
    return data.Items;
}
