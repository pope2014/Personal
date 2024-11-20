namespace MyFirstBlazorApp.Data.Models;

public class ToDoItem {
    public string? Title { get; set; }
    public DateTime? DueDate { get; set;}
    public bool IsDone { get; set; }
}