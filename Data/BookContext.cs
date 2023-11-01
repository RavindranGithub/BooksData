using BookData.Models;
using Microsoft.EntityFrameworkCore;
namespace BookData.Data
{
    public class BookContext : DbContext
    {
        public BookContext(DbContextOptions<BookContext> options): base(options)
        {
        }

        public DbSet<BookModel> Book { get; set; }
        public DbSet<SortedBookResult> SortedBookResult { get; set; }
    }
}
