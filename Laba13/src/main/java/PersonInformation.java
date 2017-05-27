import java.util.Calendar;

/**
 * Created by Anna on 12.05.2017.
 */
public class PersonInformation implements java.io.Serializable {
    private String lastName;
    private String name;

    public String getLastName() {
        return lastName;
    }

    public PersonInformation(){

    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
       this.name = name;
    }

    public String getDate(){
        return Calendar.getInstance().getTime().toString();
    }

    @Override
    public String toString() {
        return "PersonInformation{" +
                "LastName='" + lastName + '\'' +
                ", Name='" + name + '\'' +
                '}';
    }
}
