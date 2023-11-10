import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class JavaJDBC {

	public static void main(String[] args) {
	   String informacion;
	   
	   System.out.println("MENU");
	   
	   System.out.println("1.Seleccionar cantidad de usuarios apuntados en 1 evento");
	   System.out.println("2.Seleccionar cantidad de usuarios en 2 o mas eventos");
	   System.out.println("3.Seleccionar cantidad de usuarios apuntados unicamente a los eventos seleccionados");
	   
	   System.out.println("Seleccione lo que desea hacer ingresando un numero");
	   Scanner scanner = new Scanner(System.in);
		
	   int respuesta = scanner.nextInt();
	   
		if(respuesta == 1 )
		try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection connection = DriverManager.getConnection(
	                    "jdbc:mysql://localhost:3306/euskultura", "root", ""
	            );
	            Statement statement = connection.createStatement();
	            ResultSet resultSet = statement.executeQuery("SELECT * FROM `usuario` WHERE ReyLeon = 'on'");
	            while (resultSet.next()) {
	                System.out.println(resultSet.getInt(1) + " " + resultSet.getString(2)+ " " + resultSet.getString(3)+ " " + resultSet.getInt(4)+ " " + resultSet.getDate(5)+ " " + resultSet.getString(6)+ " " + resultSet.getString(7)+ " " + resultSet.getString(8)+ " " + resultSet.getString(9)+ " " + resultSet.getString(10)+ " " + resultSet.getString(11)+ " " + resultSet.getString(12)+ " " + resultSet.getString(13));
	                ;

	            }
	            connection.close();
	        } catch (Exception e) {
	            System.out.println(e);
	        }
		
		
		if(respuesta == 2 )
			try {
		            Class.forName("com.mysql.cj.jdbc.Driver");
		            Connection connection = DriverManager.getConnection(
		                    "jdbc:mysql://localhost:3306/euskultura", "root", ""
		            );
		            Statement statement = connection.createStatement();
		            ResultSet resultSet = statement.executeQuery("SELECT * FROM `usuario` WHERE ReyLeon = 'on' or Motociclismo = 'on'");
		            while (resultSet.next()) {
		                System.out.println(resultSet.getInt(1) + " " + resultSet.getString(2)+ " " + resultSet.getString(3)+ " " + resultSet.getInt(4)+ " " + resultSet.getDate(5)+ " " + resultSet.getString(6)+ " " + resultSet.getString(7)+ " " + resultSet.getString(8)+ " " + resultSet.getString(9)+ " " + resultSet.getString(10)+ " " + resultSet.getString(11)+ " " + resultSet.getString(12)+ " " + resultSet.getString(13));
		                ;

		            }
		            connection.close();
		        } catch (Exception e) {
		            System.out.println(e);
		        }
			
		if(respuesta == 3 )
			try {
		            Class.forName("com.mysql.cj.jdbc.Driver");
		            Connection connection = DriverManager.getConnection(
		                    "jdbc:mysql://localhost:3306/euskultura", "root", ""
		            );
		            Statement statement = connection.createStatement();
		            ResultSet resultSet = statement.executeQuery("SELECT * FROM `usuario` WHERE ReyLeon = 'on' and Motociclismo = 'on'");
		            while (resultSet.next()) {
		                System.out.println(resultSet.getInt(1) + " " + resultSet.getString(2)+ " " + resultSet.getString(3)+ " " + resultSet.getInt(4)+ " " + resultSet.getDate(5)+ " " + resultSet.getString(6)+ " " + resultSet.getString(7)+ " " + resultSet.getString(8)+ " " + resultSet.getString(9)+ " " + resultSet.getString(10)+ " " + resultSet.getString(11)+ " " + resultSet.getString(12)+ " " + resultSet.getString(13));
		                ;

		            }
		            connection.close();
		        } catch (Exception e) {
		            System.out.println(e);
		        }
		
	    }
	}

//Seleccionar cantidad de usuarios apuntados en 1 evento.
//"SELECT * FROM `usuario` WHERE ReyLeon = 'on'"


//Seleccionar cantidad de usuarios en 2 o mas eventos
//"SELECT * FROM `usuario` WHERE ReyLeon = 'on' or Motociclismo = 'on'"


//Seleccionar cantidad de usuarios apuntados unicamente a los eventos seleccionados
//"SELECT * FROM `usuario` WHERE ReyLeon = 'on' and Motociclismo = 'on'"

