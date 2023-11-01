using BookData.Data;
using BookData.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace BookData.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class BooksController : ControllerBase
    {
        private readonly BookContext _context;

        public BooksController(BookContext context)
        {
            _context = context;
        }

        // GET: api/Books
        [HttpGet]
        public async Task<ActionResult<IEnumerable<BookModel>>> GetBooks()
        {
            var books = await _context.Book.ToListAsync();
            return books;
        }

        [HttpGet("sortedbypublisher")]
        public ActionResult<IEnumerable<object>> GetSortedBooks()
        {
            try
            {
                
                var sortedBooks = _context.Book.OrderBy(b => b.Publisher)
                            .ThenBy(b => b.AuthorLastName)
                            .ThenBy(b => b.Title)
                            .Select(b => new
                            {
                                Publisher = b.Publisher,
                                Author = $"{b.AuthorLastName}, {b.AuthorFirstName}",
                                Title = b.Title,
                                Book_MLACitation = b.GetMLACitation(),
                                Book_ChicagoCitation=b.GetChicagoCitation()
                            }).ToList();
                return sortedBooks;
            }
            catch (Exception ex)
            {
                return BadRequest("An error occurred while fetching books data." + ex.Message);
            }
        }
        [HttpGet("sortedbyauthor")]
        public ActionResult<IEnumerable<object>> GetSortedBooksbyAuthor()
        {
            try
            {
                var sortedBooks = _context.Book.OrderBy(b => b.AuthorLastName)
                            .ThenBy(b => b.Title)
                            .Select(b => new
                            {
                                Publisher = b.Publisher,
                                Author = $"{b.AuthorLastName}, {b.AuthorFirstName}",
                                Title = b.Title,
                                YearOfPublication=b.YearOfPublication
                            }).ToList();
                return sortedBooks;
            }
            catch (Exception ex)
            {
                return BadRequest("An error occurred while fetching books data." + ex.Message);
            }
        }

        [HttpGet("totalprice")]
        public async Task<ActionResult<decimal>> GetTotalPrice()
        {
            try
            {
                var totalPrice = await _context.Book.SumAsync(book => book.Price);
                return totalPrice;
            }
            catch (Exception ex)
            {
                return BadRequest("An error occurred while calculating the total price." + ex.Message);
            }
        }

        [HttpPost("bulk-insert")]
        public IActionResult BulkInsertBooks(List<BookModel> books)
        {
            try
            {
                if (books != null && books.Any())
                {
                    _context.Book.AddRange(books);
                    _context.SaveChanges();
                    return Ok("Books inserted successfully.");
                }
                else
                {
                    return BadRequest("No books provided for insertion.");
                }
            }
            catch (Exception ex)
            {
                return BadRequest("An error occurred during insertion: " + ex.Message);
            }
        }

        [HttpGet("sortedbypublisherwithsp")]
        public ActionResult<IEnumerable<object>> GetSortedBooks_SP()
        {
            try
            {
                var sortedBooks = _context.SortedBookResult.FromSqlRaw("EXEC SP_GetSortedBooks").ToList();

                return sortedBooks;
            }
            catch (Exception ex)
            {
                return BadRequest("An error occurred while fetching books data: " + ex.Message);
            }
        }

        [HttpGet("sortedbyauthorwithsp")]
        public ActionResult<IEnumerable<object>> GetSortedBooksByAuthor_SP()
        {
            try
            {
                var sortedBooks = _context.SortedBookResult.FromSqlRaw("EXEC SP_GetSortedBooksByAuthor").ToList();

                return sortedBooks;
            }
            catch (Exception ex)
            {
                return BadRequest("An error occurred while fetching books data: " + ex.Message);
            }
        }
    }
}
