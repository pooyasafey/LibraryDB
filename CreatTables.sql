-- Create the Books table
CREATE TABLE Books (
  book_id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  author VARCHAR(255),
  isbn VARCHAR(13),
  genre VARCHAR(50),
  published_year INT
);

-- Create the Members table
CREATE TABLE Members (
  member_id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE
);

-- Create the Loans table with foreign keys
CREATE TABLE Loans (
  loan_id SERIAL PRIMARY KEY,
  book_id INT NOT NULL REFERENCES Books(book_id),
  member_id INT NOT NULL REFERENCES Members(member_id),
  borrowed_on DATE NOT NULL,
  due_date DATE NOT NULL,
  returned_on DATE
);
