package fr.esgi.potter;

import java.util.ArrayList;
import java.util.HashSet;

public class Parcel {
    final static int PRICE_BOOK = 8;
    final double discounts[] = {0, 0, 0.05, 0.1, 0.2, 0.25};

    public double getPrice(ArrayList<Book> books) {
        double price = 0;

        while (books.size() != 0) {
            final HashSet<Book> distinctBooks = new HashSet<>(books);

            price += PRICE_BOOK * distinctBooks.size() * (1 - discounts[distinctBooks.size()]);

            for (Book book : distinctBooks) {
                if (books.contains(book)) books.remove(book);
            }
        }

        return price;
    }
}
