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
         LEFT JOIN lesson l ON s.lesson_id = l.id
         LEFT JOIN homework h ON l.homework_id = h.id
         LEFT JOIN schedule_lesson ON schedule_id = schedule_lesson.lesson_id;

SELECT Schedule.name, COUNT(sl.lesson_id) AS lesson_count
FROM Schedule
         LEFT JOIN Schedule_Lesson sl ON Schedule.id = sl.schedule_id
GROUP BY Schedule.name
ORDER BY lesson_count DESC;