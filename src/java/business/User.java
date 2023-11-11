package business;

import java.io.Serializable;
import java.time.LocalDate;
import javax.persistence.Column;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public class User implements Serializable {

    @Column(columnDefinition = "varchar(100)")
    private String name;
    private LocalDate dateofBirth;
    @Column(columnDefinition = "varchar(100)")
    private String password;
    @Column(columnDefinition = "varchar(100)")
    private String email;
    @Column(columnDefinition = "varchar(20)")
    private String phoneNumber;
    @Column(columnDefinition = "varchar(100)")
    private String address;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    
    public LocalDate getLocalDateofBirth() {
        return dateofBirth;
    }

    public void setLocalDateofBirth(LocalDate dateofBirth) {
        this.dateofBirth = dateofBirth;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
