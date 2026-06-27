## Quick Start
**Prerequisites:** PHP 8.5+, MySQL 8.0+, Composer

### Clone the Repository
```bash
git clone https://github.com/kolodochka-dev/lindencms-demo.git
cd lindencms-demo
```

### Install Dependencies
```bash
composer install
npm install
```

### Environment Configuration
Copy the example environment file and generate an application key:
```bash
cp .env.example .env
php artisan key:generate
```

Configure your database .env:
```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=lindencms_demo
DB_USERNAME=root
DB_PASSWORD=
```

### Import the Demo Database
We've included a pre-filled database dump with sample content in database/hyperion.sql.

### Build Frontend Assets
```bash
npm run build
```

### Link Storage
Create a symbolic link to make uploaded files publicly accessible:
```bash
php artisan storage:link
```

### Access the Application
- Public Website	`http://localhost:8000`
- Admin Panel	`http://localhost:8000/lindencms`

### Login Credentials
**Email:** admin@example.com

**Password:** 12345678
