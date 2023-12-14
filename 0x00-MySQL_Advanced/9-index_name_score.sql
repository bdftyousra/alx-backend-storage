-- This SQL script creates an index named 'idx_name_first_score' on the 'name' and 'score' columns of the 'names' table. The index will be created on the first character of the name column, and the score column, so it allows for faster search and sorting operation on those columns.

CREATE INDEX idx_name_first_score ON names(name(1), score);
