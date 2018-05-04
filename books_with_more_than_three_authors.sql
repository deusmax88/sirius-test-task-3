SELECT b.title

FROM book AS b
    INNER JOIN author_book AS ab ON b.id = ab.book_id
    INNER JOIN author AS a ON a.id = ab.author_id

GROUP BY
  b.id

HAVING COUNT(a.id) > 3