// Initialize the replica set
rs.initiate({
    _id: 'rs0',
    members: [
        { _id: 0, host: 'mongodb:27017' }
        // Add more members here if you want to set up additional nodes
    ]
});

// Use admin then create user root
var adminDB = db.getSiblingDB('admin');
adminDB.createUser({
    user: 'admin',
    pwd: '1',
    roles: [{ role: 'root', db: 'admin' }]
});

// Authenticate as the root user
adminDB.auth('admin', '1');

var dbName = 'events';
// Create a new user in the target database
adminDB.createUser({
    user: 'ashkan',
    pwd: '1',
    roles: [{ role: 'readWrite', db: dbName }]
});