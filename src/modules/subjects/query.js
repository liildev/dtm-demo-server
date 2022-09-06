const GET = `
SELECT
    s.*
FROM
    subjects AS s
    JOIN added_subjects AS ads ON s.subject_id = ads.first_subject_id
GROUP BY
    s.subject_id;
`;

const GET_OTHER = `
SELECT
    s.*
FROM
    added_subjects AS ads
    JOIN subjects AS s ON s.subject_id = ads.second_subject_id
WHERE
    ads.first_subject_id = $1;
`;

export default { GET, GET_OTHER };
