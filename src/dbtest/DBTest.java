package dbtest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class DBTest {

    public static void main(String[] args) {
        
        String dbUrl = "jdbc:derby://localhost:1527/Cars";
        
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        
        Scanner scanner = new Scanner(System.in);
        
        try{
            
            conn = DriverManager.getConnection(dbUrl);
            stmt = conn.createStatement();
            
            boolean running = true;
            
            while(running){
                
                System.out.println("Menu:");
                System.out.println("1. Display all car make");
                System.out.println("2. Find oldest model");
                System.out.println("3. Total value of all cars");
                System.out.println("4. Most expnsive car");
                System.out.println("5. Least expensive car");
                System.out.println("6. Exit");
                System.out.println("Choose an option: ");
                int choice = scanner.nextInt();
                
                rs = stmt.executeQuery("SELECT * FROM CARS");
                
                switch(choice){
                    case 1:
                        displayAllCarMake(rs);
                        break;
                    case 2:
                        findOldestModel(rs);
                        break;
                    case 3:
                        calaculateTotalValue(rs);
                        break;
                    case 4:
                        findMostExpensiveCar(rs);
                        break;
                    case 5:
                        findLeastExpensiveCar(rs);
                        break;
                    case 6:
                        running = false;
                        System.out.println("Existing...");
                        break;
                    default:
                        System.out.println("Invalid option. Please choose a valid option.");
                        break;
                }
                System.out.println();
                
            }
            
        }catch(SQLException ex){
            
        }finally{
            try{
                if(rs != null) rs.close();
                if(stmt != null) stmt.close();
                if(conn != null) conn.close();
            }catch(SQLException ex){
                ex.printStackTrace();
            }
        }
        scanner.close();
    }
    
    private static void displayAllCarMake(ResultSet rs) throws SQLException{
        System.out.println("List of Car Makes:");
        while(rs.next()){
            String make = rs.getString("make");
            System.out.println(make);
        }
        
    }
    
    private static void findOldestModel(ResultSet rs) throws SQLException{
        int oldestYear = Integer.MAX_VALUE;
        String oldestCar = "";
        
        while(rs.next()){
            int year = rs.getInt("manufacture_year");
            if(year < oldestYear){
                oldestYear = year;
                oldestCar = rs.getString("make") + " " + rs.getString("model");
            }
        }
        System.out.println("Oldest Car: " + oldestCar + " (" + oldestYear + ")");
    }
    
    private static void calaculateTotalValue(ResultSet rs) throws SQLException{
        double totalValue = 0;
        
        while(rs.next()){
            totalValue += rs.getDouble("price");
        }
        System.out.println("Total value of all cars: R" + totalValue);
    }
    
    private static void findMostExpensiveCar(ResultSet rs) throws SQLException{
        double maxPrice = Double.MAX_VALUE;
        String expensiveCar = "";
        
        while(rs.next()){
            double price = rs.getDouble("price");
            if(price > maxPrice){
                maxPrice = price;
                expensiveCar = rs.getString("make") + " " + rs.getString("model");
            }
        }
        System.out.println("Most Expensive Car: " + expensiveCar + "(R" + maxPrice + ")");
    }
    
    private static void findLeastExpensiveCar(ResultSet rs) throws SQLException{
        
        double minPrice = Double.MIN_VALUE;
        String cheapCar = "";
        
        while(rs.next()){
            double price = rs.getDouble("price");
            if(price < minPrice){
                minPrice = price;
                cheapCar = rs.getString("make") + " " + rs.getString("model");
            }
        }
        System.out.println("Least Expensive Car: " + cheapCar + " (R" + minPrice + ")");
    }
    
}