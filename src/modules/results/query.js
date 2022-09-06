export const GET_RESULTS = `
SELECT
    r.*,
    fs.subject first_subject,
    ss.subject second_subject,
    u.username,
    f.faculty,
    un.university,
    CASE WHEN f.grand_score < r.result_score THEN
        'grand'
    WHEN f.contract_score < r.result_score THEN
        'kontrak'
    ELSE
        'rad etildi'
    END AS result
FROM
    results r
    JOIN users u ON u.user_id = r.user_id
    JOIN subjects fs ON fs.subject_id = r.first_subject_id
    JOIN subjects ss ON ss.subject_id = r.second_subject_id
    JOIN user_info ui ON ui.ui_id = r.ui_id
    JOIN faculties f ON f.faculty_id = ui.faculty_id
    JOIN universities un ON un.university_id = f.university_id
WHERE
    CASE WHEN $1 > 0 THEN
        r.result_id = $1
    ELSE
        TRUE
    END
    AND CASE WHEN $2 > 0 THEN
        r.user_id = $2
    ELSE
        TRUE
    END
ORDER BY
    r.result_score DESC
`;
