# 📚 Books To-Do App

A simple **Book Management App** built with Ruby on Rails to help users organize their reading lists, track reading progress, and manage their personal book collections.

## ✨ Features

* 🔐 **User Authentication** — Sign up, log in, and log out.
* 📖 **Book Management** — Add, view, edit, and delete books.
* 👤 **Personal Library** — Each user can manage their own books.
* 🔍 **Search Books** — Search books by title.
* 🏷️ **Filter by Status** — Filter books by reading status.
* 📊 **Reading Dashboard** — View total books, books currently being read, and completed books.
* ✅ **Validations** — Validate book details and user information.
* 💬 **Flash Messages** — Display success and error messages.
* 🎨 **Responsive UI** — A clean interface styled with Tailwind CSS utility classes.

## 🛠️ Tech Stack

* **Ruby** — Programming language
* **Ruby on Rails** — Web application framework
* **MySQL** — Database
* **HTML & ERB** — Views and templates
* **Tailwind CSS** — Styling
* **Sessions** — User authentication

## 🚀 Getting Started

### Prerequisites

Make sure you have Ruby, Rails, Bundler, and MySQL installed.

### Installation

1. Clone the repository:

   ```bash
   git clone <your-repository-url>
   cd store
   ```

2. Install dependencies:

   ```bash
   bundle install
   ```

3. Configure your MySQL credentials in `config/database.yml`.

4. Create and migrate the database:

   ```bash
   bin/rails db:create
   bin/rails db:migrate
   ```

5. Start the server:

   ```bash
   bin/rails server
   ```

6. Open `http://localhost:3000` in your browser.

## 📂 Project Structure

```text
store/
├── app/
│   ├── controllers/
│   ├── models/
│   └── views/
├── config/
│   ├── routes.rb
│   └── database.yml
├── db/
│   └── migrate/
├── Gemfile
└── README.md
```

## 🎯 Learning Goals

This project is part of my journey to learn Ruby on Rails and Ruby fundamentals, including:

* MVC architecture
* Routes, controllers, models, and views
* CRUD operations
* Active Record associations and validations
* Authentication using sessions
* Database migrations and MySQL
* Search and filtering with query parameters

## 👩‍💻 Author

**Vaishnavi Shaw**

Built with ❤️ while learning Ruby on Rails.

---

⭐ If you find this project useful, feel free to explore the code and share feedback!
