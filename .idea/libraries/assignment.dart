class Book {
  String title;
  String author;
  int publicationYear;
  int pagesRead = 0;


  Book(this.title, this.author, this.publicationYear, this.pagesRead);


  void read(int pages) {
    pagesRead += pages;
  }

  int getPagesRead (){
    return pagesRead;
  }

  String getTitle(){
    return title;
  }
  String getAuthor(){
    return author;
  }
  int getPublicationYear(){
    return publicationYear;
  }


  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }


  static int totalBooksCount = 0;


  static void incrementTotalBooks() {
    totalBooksCount++;
  }

  static void displayTotalBooks() {
    print('Total Books: $totalBooksCount');
  }
}

void main() {
  Book book1 = Book('Flutter for Beginners', 'Prottoy', 2022, 30);
  Book book2 = Book('Dart Programming', 'Kumar', 2023, 40);
  Book book3 = Book('Advanced Flutter', 'Turja', 1999, 50);
  Book.incrementTotalBooks();
  Book.incrementTotalBooks();
  Book.incrementTotalBooks();
  book1.read(10);
  book2.read(20);
  book3.read(40);
  print('Book 1:');
  print('Title: ${book1.title}');
  print('Author: ${book1.author}');
  print('Publication Year: ${book1.publicationYear}');
  print('Pages Read: ${book1.pagesRead}');
  print('Book Age: ${book1.getBookAge()} years');
  print('');

  print('Book 2:');
  print('Title: ${book2.title}');
  print('Author: ${book2.author}');
  print('Publication Year: ${book2.publicationYear}');
  print('Pages Read: ${book2.pagesRead}');
  print('Book Age: ${book2.getBookAge()} years');
  print('');

  print('Book 3:');
  print('Title: ${book3.title}');
  print('Author: ${book3.author}');
  print('Publication Year: ${book3.publicationYear}');
  print('Pages Read: ${book3.pagesRead}');
  print('Book Age: ${book3.getBookAge()} years');
  print('');

  Book.displayTotalBooks();
}
