const LOGIN = `
    SELECT * FROM users WHERE username = $1 and password = crypt($2, password);
`;

const REGISTER = `
    INSERT INTO users (fullname, email_or_phone, username, region, PASSWORD, gender)
        VALUES ($1, $2, $3, $4, crypt($5, gen_salt('bf')), $6) RETURNING *;
`;

const CHECK = `
    SELECT u.* FROM users AS u WHERE u.username = $1; 
`;

export const ADD_INFO = `
    INSERT INTO user_info (user_id, first_subject_id, second_subject_id, faculty_id)
        VALUES ($1, $2, $3, $4)
    RETURNING
        *; 
`;

export default {
  LOGIN,
  REGISTER,
  CHECK,
  ADD_INFO
};
