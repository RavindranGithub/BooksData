using System.ComponentModel.DataAnnotations;

namespace BookData.Models
{
    public class BookModel
    {
        [Key]
        public int BookId { get; set; }
        public string Publisher { get; set; }
        public string Title { get; set; }
        public string AuthorLastName { get; set; }
        public string AuthorFirstName { get; set; }
        public decimal Price { get; set; }
        public int YearOfPublication { get; set; }
        public string FootNotes { get; set; }
        public string GetMLACitation()
        {
            return $"{AuthorLastName}, {AuthorFirstName}. {Title}. {Publisher}, {YearOfPublication}.";
        }
        public string GetChicagoCitation()
        {
           
            return $"{AuthorFirstName} {AuthorLastName}, {Title}, {Publisher},{FootNotes}, {YearOfPublication}.";
        }
    }

    public class SortedBookResult
    {
        [Key]
        public int BookId { get; set; }
        public string Publisher { get; set; }
        public string Author { get; set; }
        public string Title { get; set; }
        public int YearOfPublication { get; set; }
    }
}
