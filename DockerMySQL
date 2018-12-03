import java.sql.*;
import java.util.Scanner;
import java.Console;

public class DockerMySQL {
   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:mysql://10.0.10.3:3306/mydatabase";
   static final String USER = "AMykhailenko";
   static final String PASS = "password";
   
   public static void main(String[] args) {
   Connection conn = null;
   Statement stmt = null;
   try{
    Class.forName("com.mysql.jdbc.Driver");
    System.out.println("Connecting to database...");
    Boolean connect = false;
    while(!connect){
      try{
        conn = DriverManager.getConnection(DB_URL,USER,PASS);
        connect = true;
        }
       catch(Exception e){
        System.out.println("Connecting to database...");
        Thread.sleep(1000);
        }
      }
      stmt = conn.createStatement();
      String dropTable, createTable, initInsert, insert, sql;
      
      System.out.println("Droping table...");
      dropTable= "DROP TABLE IF EXISTS Studenci";
      stmt.executeUpdate(dropTable);
      
      System.out.println("Creating table...");
      createTable= "CREATE TABLE Studenci (Id int, imie varchar(255), nazwisko varchar(255))";
      stmt.executeUpdate(createTable);
      
      System.out.println("Filling table...");
      initInsert= "INSERT INTO Studenci (Id, imie, nazwisko) VALUES (1,'Katarzyna','Wisniewska')"+",(2,'Jan','Kowalski'),(3,'Michal','Wozniak');";
      stmt.executeUpdate(initInsert);
      
      sql = "SELECT * FROM Studenci";
      insert = "INSERT INTO Studenci (Id, imie, nazwisko) VALUES";
      
      int id;
      String imie, nazwisko;
      Boolean = false;
      while(!exit){
      System.out.println("Wybierz jedną z możliwych opcji:");
      System.out.println("[1] Wyświetl zawartość bazy danych");
      System.out.println("[2] Dodaj dane do bazy");
      System.out.println("[3] Wyjdź");
      
      int option = input.nextInt();
      switch(option){
      case 1:
        ResultSet rs = stmt.executeQuery(sql);
        while(rs.next()){
          System.out.println("Id: "+rs.getInt(1)+",Imie: "+rs.getString(2)+",Nazwisko: "+rs.getString(3));
          }
          rs.close();
          break;
       case 2:
         System.out.println("Podaj id: ");
         id=intput.nextInt();
         System.out.println("Podaj imie: ");
         imie=intput.next();
         System.out.println("Podaj nazwisko: ");
         nazwisko=intput.next();
         
         insert+="("+_id+",'"+imie+"','"+nazwisko+"');";
         stmt.executeUpdate(insert);
         break;
       case 3:
         exit = true;
         break;
       default:
       System.out.println("Nie ma takiej opcji!");
        }
      }
      stmt.close();
      conn.close();
      }
      catch(SQLException se){
        se.printStackTrace();
      }
      catch(SQLException e){
        e.printStackTrace();
      }
      finally{
        try{
          if(stmt!=null)
            stmt.close();
         }
         catch(SQLException se2){
         }
         try{
         if(conn!=null)
            conn.close();
         }
         catch(SQLException se){
         se.printStackTrace();
         }
       }
    }
}
         
      
       
       
    
