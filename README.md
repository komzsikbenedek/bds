# Supreme Bookstore Application

## Overview
The Supreme Bookstore Application is a JavaFX-based desktop application that provides a user-friendly interface for browsing and purchasing books.

---

## Features
- **User Authentication**: Secure sign-in and account creation functionality.
- **Book Search and Browsing**: Search for books by title and view book details.
- **User Profile Management**: Update contact information, address, and view order history.
- **Cart Functionality**: Add and manage book purchases.

---

## Setup Instructions

### Prerequisites
- **Java 11** or higher
- **Maven** 
- **PostgreSQL** 

### Configuration
Update the `resources/app.properties` file with your database credentials:

### Build and Run
1. **Use Maven to build the project:**
    ```bash
    mvn clean install
    ```
2. **Run the application:**
    ```bash
    java -jar .\target\BDS_project_3-1.0.0.jar
    ```

---

## Technologies Used
- **JavaFX**: For building the user interface.
- **PostgreSQL**: As the database for storing information.
- **Maven**: For dependency management and build automation.
- **CSS**: For custom styling of the UI.

---

## Key Functionalities

### Sign In and Sign Up
- Users can create accounts and log in to access their profiles.
- New accounts are validated and stored in the database.

### Bookstore Interface
- Search and browse books with a responsive UI.
- View detailed information about each book.

### Profile Management
- Update email, telephone, address, and other personal details.

### Order Management
- Add books to the cart and view past purchases.