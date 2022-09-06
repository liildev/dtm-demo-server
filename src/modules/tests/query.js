const GET_TESTS = `
  select 
  t.*,
  json_agg(a.*) answers
  from tests t 
  left join  (select answer_id, answer, test_id from answers) a
  on t.test_id = a.test_id 
  join (select * from user_info where user_id = $1 order by created_at desc limit 1) ui on true
  where ui.first_subject_id = t.subject_id
  group by t.test_id
`;


const GET_SECOND_TESTS = `
  select 
  t.*,
  json_agg(a.*) answers
  from tests t 
  left join  (select answer_id, answer, test_id from answers) a
  on t.test_id = a.test_id 
  join (select * from user_info where user_id = $1 order by created_at desc limit 1) ui on true
  where ui.second_subject_id = t.subject_id
  group by t.test_id
`;

const GET_ANSWERS = `
  select
   a.*,
   t.subject_id 
  from answers a 
  join tests t 
  on t.test_id = a.test_id
`;

const WRITE_RESULT = `
  insert into 
  results (user_id, first_subject_true_answers, second_subject_true_answers,first_subject_id, second_subject_id, result_score, ui_id)
  values 
  ($1, $2, $3, $4, $5, $6, $7) returning result_id
`;


export default {
  GET_TESTS,
  GET_SECOND_TESTS,
  GET_ANSWERS,
  WRITE_RESULT
};
