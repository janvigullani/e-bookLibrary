package com.DAO;

import java.util.List;

import com.entity.BookDtls;

public interface BookDAO {
	public boolean addBooks(BookDtls b);
	public List<BookDtls> getAllBook();
	public BookDtls getBookID(int id);
	public boolean updateEditBook(BookDtls b);
	public boolean deleteBooks(int id);
	public List<BookDtls> getNewBook();
	public List<BookDtls> getRecentBook();
	public List<BookDtls> getOldBook();
	public List<BookDtls> getAllOldBook();
	public List<BookDtls> getAllNewBook();
	public List<BookDtls> getAllRecentBook();
	public List<BookDtls> getBookByOld(String email, String Cate);
	public boolean getOldBookDelete(String email, String Cate, int id);
}
