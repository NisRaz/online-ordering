package io.sky.orderingbackend.dao;

import java.util.List;
import io.sky.orderingbackend.dto.Category;

public interface CategoryDAO {

	public List<Category> list();

	Category get(int id);

	boolean add(Category category);

	boolean update(Category category);

	boolean delete(Category category);
}
