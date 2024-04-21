package isp.lab9.exercise1.ui;

import isp.lab9.exercise1.services.UserPortfolio;

import javax.swing.*;
import java.awt.*;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * todo: implement - it should look similar to the 'sell' panel
 */
public class SellJPanel extends JPanel {
    private StockMarketJFrame mainFrame;
    private static final String ERROR = "Error";

    public SellJPanel(StockMarketJFrame mainFrame) {
        this.mainFrame = mainFrame;
        initComponents();
    }

    private void initComponents() {
        setLayout(new GridLayout(2, 2));

        JPanel sellPanel = new JPanel();
        sellPanel.setLayout(new GridLayout(10, 2));

        JLabel availableFundsLabel = new JLabel("Available funds:");
        JTextField availableFundsTextField = new JTextField(mainFrame.getPortfolio().getCash().toPlainString() + " $");
        availableFundsTextField.setEditable(false);

        JLabel symbolLabel = new JLabel("Symbol:");
        JComboBox<String> symbolComboBox = new JComboBox<>();
        symbolComboBox.setModel(new DefaultComboBoxModel(mainFrame.getMarketService().getSymbols()));

        JLabel quantityLabel = new JLabel("Quantity:");
        JTextField quantityTextField = new JTextField();

        JLabel costLabel = new JLabel("Total cost:");
        JTextField costTextField = new JTextField();
        costTextField.setEditable(false);

        JButton sellButton = new JButton("Sell");
        // todo: add event listener to 'sell' button
        sellButton.addActionListener(e -> sellShares(symbolComboBox, quantityTextField, availableFundsTextField));

        JButton costButton = new JButton("Get cost");
        costButton.addActionListener(e ->
                calculateTotalCostActionPerformed(symbolComboBox, quantityTextField, costTextField));

        sellPanel.add(availableFundsLabel);
        sellPanel.add(availableFundsTextField);
        sellPanel.add(new JPanel()); // empty cell in the grid
        sellPanel.add(new JPanel()); // empty cell in the grid
        sellPanel.add(symbolLabel);
        sellPanel.add(symbolComboBox);
        sellPanel.add(new JPanel()); // empty cell in the grid
        sellPanel.add(new JPanel()); // empty cell in the grid
        sellPanel.add(quantityLabel);
        sellPanel.add(quantityTextField);
        sellPanel.add(new JPanel()); // empty cell in the grid
        sellPanel.add(new JPanel()); // empty cell in the grid
        sellPanel.add(costLabel);
        sellPanel.add(costTextField);
        sellPanel.add(new JPanel()); // empty cell in the grid
        sellPanel.add(new JPanel()); // empty cell in the grid
        sellPanel.add(costButton);
        sellPanel.add(sellButton);
        add(sellPanel);
        add(new JPanel()); // empty cell in the grid
        add(new JPanel()); // empty cell in the grid
        add(new JPanel()); // empty cell in the grid

    }

    private void sellShares(JComboBox<String> symbolComboBox, JTextField quantityTextField, JTextField availableFundsTextField) {

        String symbol = (String) symbolComboBox.getSelectedItem();
        try {
            int quantity = Integer.parseInt((quantityTextField.getText()));
            BigDecimal stockPrice = mainFrame.getMarketService().getStockPrice(symbol);
            BigDecimal total = stockPrice.multiply(new BigDecimal(quantity));
            UserPortfolio portfolio = mainFrame.getPortfolio();
            BigDecimal cash = portfolio.getCash();

            if (mainFrame.getPortfolio().getShares().get(symbol) == null)
                JOptionPane.showMessageDialog(this,
                        "Insufficient stocks",
                        ERROR,
                        JOptionPane.ERROR_MESSAGE);
            else if (mainFrame.getPortfolio().getShares().get(symbol).compareTo(Integer.valueOf(quantityTextField.getText())) < 0) {
                JOptionPane.showMessageDialog(this,
                        "Insufficient stocks",
                        ERROR,
                        JOptionPane.ERROR_MESSAGE);
            } else {
                int currentQuantity;
                if (portfolio.getShares().get(symbol) == null)
                    currentQuantity = 0;
                else currentQuantity = portfolio.getShares().get(symbol);
                portfolio.setCash(cash.add(total));
                portfolio.getShares().put(symbol, currentQuantity - quantity);
                availableFundsTextField.setText(portfolio.getCash().toString() + "$");
            }
        } catch (NumberFormatException | IOException ex) {
            JOptionPane.showMessageDialog(this,
                    ex.getMessage(),
                    ERROR,
                    JOptionPane.ERROR_MESSAGE);
        }
    }

    /**
     * Calculates the total transaction cost
     */
    private void calculateTotalCostActionPerformed(JComboBox<String> symbolComboBox,
                                                   JTextField quantityTextField,
                                                   JTextField totalCostTextField) {
        try {
            String symbol = (String) symbolComboBox.getSelectedItem();
            BigDecimal stockPrice = mainFrame.getMarketService().getStockPrice(symbol);

            try {
                int quantity = Integer.parseInt(quantityTextField.getText());
                DecimalFormat formatter = new DecimalFormat("#,##0.##");
                totalCostTextField.setText(
                        formatter.format(stockPrice.multiply(new BigDecimal(quantity))));
            } catch (NumberFormatException e) {
                totalCostTextField.setText("Invalid quantity value!");
            }
        } catch (IOException ex) {
            JOptionPane.showMessageDialog(this,
                    ex.getMessage(),
                    ERROR,
                    JOptionPane.ERROR_MESSAGE);
            Logger.getLogger(StockMarketJFrame.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
