package com.mkpp.bookstore.model;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;

@EnableAutoConfiguration
@Entity
@Table(name = "customer")
public class Customer implements UserDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "customer_id")
    private long id;

    @NotNull
    private String firstName;

    @NotNull
    private String lastName;

    @OneToOne
    private Role role;

    private boolean person;

    private String address;

    private String postCode;

    private String city;

    private int country;

    private int state;


    private String telephoneNumber;

    private boolean newsletter;

    @NotNull
    private boolean regulations;

    @NotNull
    private boolean usingCustomerData;


    private String email;

    @NotNull
    private String password;

    private boolean isEnabled;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "customer_role", joinColumns = @JoinColumn(name = "customer_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles;

    @Transient
    private int nrRole;


    public long getId() {
        return id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEnabled(boolean enabled) {
        isEnabled = enabled;
    }

    public boolean getPerson() {
        return person;
    }

    public void setPerson(boolean person) {
        this.person = person;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getCountry() {
        return country;
    }

    public void setCountry(int country) {
        this.country = country;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public String getTelephoneNumber() {
        return telephoneNumber;
    }

    public void setTelephoneNumber(String telephoneNumber) {
        this.telephoneNumber = telephoneNumber;
    }

    public boolean isNewsletter() {
        return newsletter;
    }

    public void setNewsletter(boolean newsletter) {
        this.newsletter = newsletter;
    }

    public boolean isRegulations() {
        return regulations;
    }

    public void setRegulations(boolean regulations) {
        this.regulations = regulations;
    }

    public boolean isUsingCustomerData() {
        return usingCustomerData;
    }

    public void setUsingCustomerData(boolean usingCustomerData) {
        this.usingCustomerData = usingCustomerData;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return Collections.singleton(new SimpleGrantedAuthority(role.getRole()));
    }

    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return email;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return isEnabled;
    }

    public boolean isPerson() {
        return person;
    }

    public int getNrRole() {
        return nrRole;
    }

    public void setNrRole(int nrRoli) {
        this.nrRole = nrRoli;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    public Customer() {
    }

    public Customer(@NotNull String firstName, @NotNull String lastName, boolean person, @NotNull String adress, @NotNull String postCode, @NotNull String city, int country, int state, String telephoneNumber, boolean newsletter, @NotNull boolean regulamin, @NotNull boolean usingCustomerData, String email, @NotNull String password) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.person = person;
        this.address = adress;
        this.postCode = postCode;
        this.city = city;
        this.country = country;
        this.state = state;
        this.telephoneNumber = telephoneNumber;
        this.newsletter = newsletter;
        this.regulations = regulamin;
        this.usingCustomerData = usingCustomerData;
        this.email = email;
        this.password = password;
    }

    @Override
    public String toString() {
        return "Customer{" +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", person=" + person +
                ", adress='" + address + '\'' +
                ", postCode='" + postCode + '\'' +
                ", city='" + city + '\'' +
                ", country=" + country +
                ", state=" + state +
                ", telephoneNumber='" + telephoneNumber + '\'' +
                ", newsletter=" + newsletter +
                ", regulations=" + regulations +
                ", usingCustomerData=" + usingCustomerData +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +

                '}';
    }
}
