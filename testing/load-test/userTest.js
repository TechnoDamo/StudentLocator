import { check } from 'k6';
import sql from 'k6/x/sql';
import driver from 'k6/x/sql/driver/postgres';
import { randomIntBetween } from 'https://jslib.k6.io/k6-utils/1.2.0/index.js';

// Database connection (change port if not 5432)
const db = sql.open(driver, "postgres://user:mypassword124432!D@EC@89.208.85.211:5432/master?sslmode=disable");

let totalUsers;
export function setup() {
    const countResult = db.query('SELECT COUNT(*) AS count FROM users');
    totalUsers = countResult[0].count;
    return { totalUsers };
}

export const options = {
    scenarios: {
        read_users: {
            executor: 'constant-vus',
            vus: 5,
            duration: '30s',
            exec: 'readTest',
            tags: { test_type: 'read' }
        },
        write_users: {
            executor: 'constant-vus',
            vus: 3,
            duration: '30s',
            exec: 'writeTest',
            tags: { test_type: 'write' }
        }
    }
};

export function readTest(data) {
    const maxOffset = Math.floor(data.totalUsers * 0.9);
    const randomOffset = randomIntBetween(0, maxOffset);

    const users = db.query(
        'SELECT * FROM users ORDER BY id OFFSET $1 LIMIT 5',
        randomOffset
    );

    check(users, {
        'retrieved users successfully': (r) => r.length > 0,
        'correct offset results': (r) => {
            if (r.length === 0) return true;
            return r[0].id >= randomOffset;
        }
    });
}

export function writeTest() {
    const result = db.query(
        `INSERT INTO users (university_id, city_id, first_name, last_name, bio)
         VALUES (1, 1, 'Test', 'User', 'K6 load test user')
         RETURNING id`
    );

    check(result, {
        'user created successfully': (r) => r.length > 0 && r[0].id > 0
    });
}

export function teardown() {
    db.close();
}
