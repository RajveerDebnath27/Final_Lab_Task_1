package dev.domain;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.time.LocalDate;
import java.util.SimpleTimeZone;

@Entity
@Table(name = "students")
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NotNull
    @Size(max = 100)
    private String name;

    @NotNull
    @Email
    @Size(max = 100)
    private String email;

    @NotNull
    @Temporal(TemporalType.DATE)
    @Past
    //@Column(name = "date")
    private Date dateOfBirth;

    @NotNull
    @Enumerated(EnumType.STRING)
    private Gender gender;

    @NotNull
    @Size(max = 10)
    private String quota = "yes";


    @NotNull
    @Size(max = 100)
    private String country = "Bangladesh";

    // getters and setters

    public static String convertDateToString(Date dateOfBirth)
    {
        SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd");
        return dateFormat.format(dateOfBirth);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getDateOfBirth() {

        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public String getQuota() {
        return quota;
    }

    public void setQuota(String quota) {
        this.quota = quota;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
    public Student(){

    }
    public Student(int id,String name, String email, Date dateOfBirth, Gender gender, String country)
    {
        this.name=name;
        this.email=email;
        this.dateOfBirth=dateOfBirth;
        this.gender=gender;
        this.country=country;
    }
}
