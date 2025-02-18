// Singleton class
class Database {
    // Private static instance of the class
    private static Database instance;
    
    // Private constructor to prevent instantiation from outside
    private Database() {
        System.out.println("Database instance created");
    }
    
    // Public method to provide access to the instance
    public static Database createDatabase() {
        if (instance == null) {
            instance = new Database();
        }
        return instance;
    }
}

// Client class to test the Singleton pattern
public class Client {
    public static void main(String[] args) {
        // Attempt to create two instances
        Database db1 = Database.createDatabase();
        Database db2 = Database.createDatabase();
        
        // Check if both instances are the same
        if (db1 == db2) {
            System.out.println("Both instances are the same. Singleton pattern applied correctly.");
        } else {
            System.out.println("Instances are different. Singleton pattern not applied correctly.");
        }
    }
}
