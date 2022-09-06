import db from "../../utils/test.db.js";
import query from "./query.js";

async function GET_FIRST_SUBJECT(userId) {
  try {
    return await db.fetchAll(query.GET_TESTS, userId);
  } catch (e) {
    console.error(e.message);
  }
}

async function GET_SECOND_SUBJECT(userId) {
  try {
    return await db.fetchAll(query.GET_SECOND_TESTS, userId);
  } catch (e) {
    console.error(e.message);
  }
}

async function CHECK(
  { firstSubjectAnswers, secondSubjectAnswers, ui_id },
  userId
) {
  try {
    let result = {
      user_id: userId,
      first_subject_true_answers: 0,
      second_subject_true_answers: 0,
      first_subject_id: null,
      second_subject_id: null,
      result_score: 0,
    };

    const allAnswers = await db.fetchAll(query.GET_ANSWERS);
    firstSubjectAnswers.forEach((fAnswer) => {
      const findAnswer = allAnswers.find(
        (answer) =>
          answer.test_id == fAnswer.test_id &&
          answer.answer_id == Number(fAnswer.answer_id)
      );
      if (findAnswer.type) {
        result.first_subject_true_answers += 1;
        result.first_subject_id = findAnswer.subject_id;
      }
    });

    secondSubjectAnswers.forEach((sAnswer) => {
      const findAnswer = allAnswers.find(
        (answer) =>
          answer.test_id == sAnswer.test_id &&
          answer.answer_id == Number(sAnswer.answer_id)
      );
      if (findAnswer.type) {
        result.second_subject_true_answers += 1;
        result.second_subject_id = findAnswer.subject_id;
      }
    });

    result.result_score =
      result.first_subject_true_answers * 9 +
      result.second_subject_true_answers * 6 +
      30;

    return await db.fetch(
      query.WRITE_RESULT,
      result.user_id,
      result.first_subject_true_answers,
      result.second_subject_true_answers,
      result.first_subject_id,
      result.second_subject_id,
      result.result_score,
      ui_id
    );
  } catch (e) {
    console.error(e);
  }
}

export default { GET_FIRST_SUBJECT, GET_SECOND_SUBJECT, CHECK };
