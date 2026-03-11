/*â€‹
â€‹
A sensor captures the room temperature each minute. The records also have a marker, which every time that the temperature changes, this marker is increased regarding the last capture. When the sensor store 15 records it prepares a message to send it to the central computer. To reduce the size of the message, the sensor compact the near temperature records and add the number of records that was compacted. Build a query to solve this problem, showing the temperature and the number of matching records.

â€‹
â€‹*/

SELECT 
    temperature, 
    COUNT(*) AS number_of_records
FROM records
GROUP BY mark, temperature
ORDER BY MIN(id);