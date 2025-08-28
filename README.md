# Secure Banking Web Application

This project is a full-stack, service-oriented web application that simulates a secure banking system. Developed using **ASP.NET (Framework)**, the application is built on a robust **4-tier architecture** with distinct layers for presentation, local components, remote services, and data management.

The application includes a secure login and registration system, member and staff dashboards, and a suite of core banking functionalities.

---

## Features

* **User-Friendly Interface**: The application features an intuitive GUI with **5 distinct ASPX pages** for seamless user interaction.
* **Core Banking Functions**: Implements **7 core banking operations**, including:
    * Account creation
    * Balance checks
    * Deposits
    * Withdrawals
    * Fund transfers
* **Secure Authentication**: A custom **SHA256 hashing function** is used to secure user passwords, which are stored in an **XML file**.
* **Access Control**: Features separate member and staff dashboards with a built-in authorization and authentication system. Access to the staff page is granted by an administrator, while new members can self-register.
* **CAPTCHA Validation**: New user registration requires **CAPTCHA validation**  to prevent automated sign-ups.

---

## Technical Architecture

[cite_start]The application is structured around a modular, multi-layered architecture[cite: 52]:

* **Presentation Layer (GUI)**: Built with ASP.NET server controls to handle user interactions.
* **Local Component Layer**: Includes components like DLL class libraries for functions such as encryption and hashing.
* **Remote Service Layer**: Core banking operations are handled by a custom WCF (Windows Communication Foundation) service.
* **Data Management Layer**: Utilizes **XML files** for storing user credentials and account data.

---

## Getting Started

### Prerequisites

* ASP.NET Framework
* Visual Studio

### Installation and Setup

1.  Clone the repository: `git clone [repository URL]`
2.  Open the project in Visual Studio.
3.  Build the solution to restore all dependencies.
4.  Run the application locally.

### Usage

1.  Navigate to the default page to access the login and registration options.
2.  Register as a new member using the self-subscribe feature, which includes CAPTCHA validation.
3.  Log in as a member to manage your accounts (create, deposit, withdraw, transfer funds).
4.  Log in as a staff member with administrator-provided credentials to manage all user accounts.
