// Singleton class
class Database {
    private static Database instance;

    private Database() {
        System.out.println("Database instance created");
    }

    public static Database createDatabase() {
        if (instance == null) {
            instance = new Database();
        }
        return instance;
    }
}

public class Client {
    public static void main(String[] args) {
        
        Database db1 = Database.createDatabase();
        Database db2 = Database.createDatabase();

        if (db1 == db2) {
            System.out.println("Both instances are the same. Singleton pattern applied correctly.");
        } else {
            System.out.println("Instances are different. Singleton pattern not applied correctly.");
        }
    }
}

