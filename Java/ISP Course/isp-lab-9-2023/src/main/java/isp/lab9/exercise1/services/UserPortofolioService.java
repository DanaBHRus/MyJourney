/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package isp.lab9.exercise1.services;

import yahoofinance.Stock;
import yahoofinance.YahooFinance;

import javax.swing.table.AbstractTableModel;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/**
 * Uses https://financequotes-api.com/ (https://github.com/sstrickx/yahoofinance-api) SDK for getting stock financial data.
 *
 * @author mihai.hulea
 */
public class UserPortofolioService extends AbstractTableModel {
    private String[] columns = new String[]{"Symbol", "Quantity", "Price per unit", "Total price"};
    private String[] symbols = new String[]{"INTC", "BABA", "TSLA", "AIR.PA", "MSFT", "AAPL",
            "OHI", "MPW", "MMM", "SWK", "PFE", "ABB", "JNJ", "MDT", "RIO", "EPD", "ET", "USA",
            "BHP", "BP", "BCE", "VZ", "GOOG"};
    private Map<String, Stock> stocks = new HashMap<String, Stock>();
    private ArrayList<StockItem> items = new ArrayList<>();
    private UserPortfolio portfolio;

    public UserPortofolioService(UserPortfolio portfolio) {
        this.portfolio = portfolio;
    }

    /**
     * Retrieves stocks' data through the Yahoo Finance API and refreshes the table.
     *
     * @throws IOException in case of API communication errors
     */
    public void refreshMarketData() throws IOException {
        stocks = YahooFinance.get(symbols);
        items = new ArrayList<>();

        stocks.values().stream().forEach(s -> items.add(new StockItem(s)));
        this.fireTableDataChanged();
    }

    /**
     * Retrieves the price for a single stock symbol.
     *
     * @param symbol the stock symbol (ticker)
     * @return the price
     * @throws IOException in case of API communication errors
     */
    public BigDecimal getStockPrice(String symbol) throws IOException {
        Stock stock = YahooFinance.get(symbol);
        return stock.getQuote().getPrice();
    }

    /**
     * Used to populate drop down button (Combo Box).
     *
     * @return
     */
    public String[] getSymbols() {
        return symbols;
    }

    //--------------------------------------------------------------
    @Override
    public int getRowCount() {
        return stocks.size();
    }

    @Override
    public int getColumnCount() {
        return 4;
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
        StockItem i = items.get(rowIndex);
        int shares;
        if (portfolio.getShares().get(i.getSymbol()) == null)
            shares=0;
        else shares=portfolio.getShares().get(i.getSymbol());
        switch (columnIndex) {
            case 0:
                return i.getSymbol();
            case 1:
                return shares;
            case 2:
                if (i.getPrice() != null) return i.getPrice().toPlainString();
                else return "N/A";
            case 3:
                return i.getPrice().multiply(BigDecimal.valueOf(shares));
            case 4:
                return i.getChange().toPlainString() + "%";
        }
        return "N/A";
    }

    @Override
    public String getColumnName(int index) {
        return columns[index];
    }

}

