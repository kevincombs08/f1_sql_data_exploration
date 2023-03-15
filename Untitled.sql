SELECT * FROM f1_wc.races;

INSERT INTO f1_wc.races
(raceId, year, round, circuitId, name, date, time, url, fp1_date, fp1_time, fp2_date, fp2_time, fp3_date, fp3_time, quali_date, quali_time, sprint_date, sprint_time)
VALUES 
(1061, 2021, 10, 9, 'British Grand Prix', '07/18/2021', '14:00:00', 'http://en.wikipedia.org/wiki/2021_British_Grand_Prix', '07/16/2021', '\N', '07/17/2021', '\N', '\N', '\N', '07/16/2021', '\N', '07/17/2021', '\N');

delete from f1_wc.races
where raceId = 1061
and date = '07/18/2021';