# 🚀 ExampleApp - Ruby on Rails Sample Project

## 📖 Overview
**ExampleApp** is a **Ruby on Rails** application demonstrating **best practices** in API development, database management, and background jobs.  
This app showcases my skills in **RESTful API design, ActiveRecord associations, service objects, and background jobs**.

## 🔥 Features
✅ **Projects & Tasks Management** (CRUD operations)  
✅ **Background Jobs** (Using ActiveJob for async processing)  
✅ **Service Objects** (Separating business logic)  
✅ **RESTful API** (JSON responses)  
✅ **Database Migrations & Validations** (ActiveRecord Best Practices)  

---

## 🛠️ **Project Structure**
```bash
ExampleApp/
│── app/
│   ├── controllers/
│   │   ├── projects_controller.rb  # Handles project API requests
│   │   ├── tasks_controller.rb     # Handles task API requests
│   │
│   ├── models/
│   │   ├── user.rb    # User model with has_many :projects
│   │   ├── project.rb # Project model with has_many :tasks
│   │   ├── task.rb    # Task model with belongs_to :project
│   │
│   ├── services/
│   │   ├── project_report_service.rb # Business logic for generating reports
│   │
│   ├── jobs/
│   │   ├── task_notification_job.rb # Background job for task notifications
│
│── config/
│   ├── routes.rb  # Defines API routes
│
│── db/
│   ├── migrate/   # Database migrations
│
│── Gemfile        # Required gems
│── README.md      # Project documentation
```

---

## ⚙️ **Installation & Setup**
### **1️⃣ Clone the Repository**
```bash
git clone [YOUR_GITHUB_REPO_LINK]
cd ExampleApp
```

### **2️⃣ Install Dependencies**
```bash
bundle install
```

### **3️⃣ Setup the Database**
```bash
rails db:create db:migrate db:seed
```

### **4️⃣ Start the Server**
```bash
rails server
```
Now, access the API at: `http://localhost:3000`

---

## 📡 **API Endpoints**
### 🔹 **Projects API**
| Method | Endpoint            | Description            |
|--------|---------------------|------------------------|
| GET    | `/projects`         | List all projects      |
| POST   | `/projects`         | Create a new project   |
| GET    | `/projects/:id`     | Get a specific project |
| PUT    | `/projects/:id`     | Update a project      |
| DELETE | `/projects/:id`     | Delete a project      |

### 🔹 **Tasks API**
| Method | Endpoint             | Description         |
|--------|----------------------|---------------------|
| POST   | `/projects/:id/tasks` | Add task to project |
| PUT    | `/tasks/:id`         | Update a task      |
| DELETE | `/tasks/:id`         | Delete a task      |

---

## ⚡ **Code Explanation**
### **1️⃣ Models**
- **`User`** → Has many `projects`
- **`Project`** → Belongs to `User`, has many `tasks`
- **`Task`** → Belongs to `Project`

### **2️⃣ Controllers**
- **`ProjectsController`**  
  - `index` → Lists all projects of the user  
  - `show` → Shows a specific project  
  - `create` → Creates a new project  
  - `update` → Updates a project  
  - `destroy` → Deletes a project  

- **`TasksController`**  
  - `create` → Adds a task to a project  
  - `update` → Updates a task  
  - `destroy` → Deletes a task  

### **3️⃣ Background Jobs**
- **`TaskNotificationJob`** (Runs asynchronously when a task is created)  
  - Sends a notification when a new task is added.  
  - Improves performance by handling heavy tasks in the background.

---

## 🛠️ **Tests & Notes**
- **Remarque:** J'ai fait les tests avec `User.first`.  
- Si vous ajoutez l'authentification avec Devise ou JWT, remplacez `User.first` par `current_user`.  
