const GET = `
SELECT
    u.*,
    json_agg(f.*) faculties
FROM
    universities u
    JOIN (
        SELECT
            f.*
        FROM
            added_subjects a
            JOIN faculties f ON f.added_subjects_id = a.as_id
        WHERE
            first_subject_id = $1
            AND second_subject_id = $2) f ON f.university_id = u.university_id
GROUP BY
    u.university_id;
`;

const GET_FAC = `
SELECT
    f.*,
    u.university
FROM
    faculties f
    JOIN universities u ON u.university_id = f.university_id
WHERE
    f.faculty_id = $1;
`;

export default { GET, GET_FAC };
