package com.king;

import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;

public class Products {

	public String getProducts() {
		List<Item> list = new ArrayList<Item>();
		list.add(new Item("0", "Paint pots", "Pots full of paint", "3.95"));
		list.add(new Item("1", "Polka dots", "Dots with that polka groove", "12.95"));
		list.add(new Item("2", "Pebbles", "Just little rocks, really", "6.85"));

		JSONArray jsonarray = JSONArray.fromObject(list);

		return jsonarray.toString();
	}

	public static void main(String[] args) {
		System.out.println(new Products().getProducts());
	}
}
