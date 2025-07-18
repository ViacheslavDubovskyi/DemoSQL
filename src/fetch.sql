SELECT *
FROM Homework;

SELECT *
FROM Lesson
         LEFT JOIN Homework ON Lesson.homework_id = Homework.id;

SELECT *
FROM Lesson
         LEFT JOIN Homework ON Lesson.homework_id = Homework.id
ORDER BY updatedat;

SELECT s.name      AS schedule_name,
       s.updatedAt AS schedule_updated,
       l.name      AS lesson_name,
       l.updatedAt AS lesson_updated
FROM schedule s
         LEFT JOIN schedule_lesson sl ON s.id = sl.schedule_id
         LEFT JOIN lesson l ON l.id = sl.lesson_id;


SELECT s.id, s.name, COUNT(sl.lesson_id) AS lesson_count
FROM Schedule s
         LEFT JOIN Schedule_Lesson sl ON s.id = sl.schedule_id
GROUP BY s.id, s.name
ORDER BY lesson_count DESC;