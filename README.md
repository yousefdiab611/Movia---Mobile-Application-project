# movia

<div>
  <h1 align="center">Getting Started with Flutter 🚀 </h1>
  <strong>
    Made with ❤️ by Swift Minds | Team Leader  : Eng / Yousef Diab
  </strong>
  <p>
    This is the documentation of Flutter Applications.
    It contains all the information you need to get started with
    and make changes to your App
  </p>
</div>

### System Requirements

Dart SDK Version 2.17.0 or greater.  
Flutter SDK Version 3.0.0 or greater.

### 🚀 Steps to Run the Project

1. **Install Flutter SDK**  
   تأكد إن Flutter متثبت على جهازك. لو مش متثبت:
   - روح للموقع الرسمي: [flutter.dev](https://flutter.dev/docs/get-started/install)
   - اتبع الخطوات المناسبة لنظامك (Windows / macOS / Linux)

2. **Run Flutter Doctor**  
   بعد ما تثبت Flutter، شغّل الأمر ده عشان تتأكد إن كل حاجة تمام:
   ```bash
   flutter doctor
   ```
   هيعرضلك حالة الأدوات المطلوبة (مثل Android Studio, SDK, Device وغيرها). تأكد إن كلهم عليهم ✔️، لو فيه ❌ أو ⚠️ حاول تصلحهم حسب التعليمات اللي بيعرضها.

3. **Clone the Repository**  
   ```bash
   git clone https://github.com/yousefdiab611/Movia---Mobile-Application-project.git
   cd movia
   ```

4. **Install Dependencies**  
   ```bash
   flutter pub get
   ```

5. **Run the App on Emulator or Device**  
   - شغّل المحاكي (Android Emulator) أو وصّل موبايلك بالكمبيوتر  
   - بعد كده شغّل المشروع:
     ```bash
     flutter run
     ```

6. **Run Tests (اختياري)**  
   لو عايز تتأكد إن كل حاجة شغالة كويس:
   ```bash
   flutter test
   ```

### App Navigations

Check your app's UI from the AppNavigation screen of your app.

### Project Structure
After successful build, your application structure should look like this:
    
```
.
├── main.dart                   - starting point of the application
├── core
│   ├── app_export.dart         - contains commonly used file imports                
│   ├── constants               - contains static constant class file
│   └── utils                   - contains common files and utilities of project
├── presentation               
    └── screens                 - contains all screens
```

### How you can do code formatting?

- if your code is not formatted then run following command in your terminal to format code
  ```
  dart format .
  ```

### How you can improve the readability of code?

Resolve the errors and warnings that are shown in the application.

### Support

If you have problems or questions go to our Website, we will then try to help you as quickly as possible: Eng:Diab -  godiab072@gamil.com - Leader Team Swift Minds

---

## 📱 Movia App - Team Structure

### 🎨 Design Team
1. *Hany* – UI/UX Layout Designer  
2. *Ziad* – Icons, Branding & Colors  
3. *Omar* – Navigation Flow & Wireframes  
4. *Osama* – Prototyping & Animations  

---

### 📄 Documentation Team
1. *Aisha* – Project Overview, Introduction, Tools  
2. *Nour* – Use Cases, Screenshots, App Flow  
3. *Heba* – Features Description, Team Contribution, Conclusion  

---

### 🧪 Testing Team
1. *Mohsen* – Functional Testing, Bug Reporting  
2. *Aboelkhier* – UI Testing, Test Cases Writing  

---

### 💻 Development Team (Code)

*Project Structure:*
- UI Screens
- State Management
- API Integration
- Models
- Services & Repositories
- Reusable Widgets
- Navigation

*Team Members & Responsibilities:*

1. *Diab* – API Integration & Models  
   - Handles API communication (api_service.dart)  
   - Creates data models (movie_model.dart, genre_model.dart)  
   - Ensures correct JSON parsing  

2. *Yousef Saleh* – Home Screen & Movie Cards  
   - Develops HomeScreen layout  
   - Displays Now Playing / Popular / Top Rated movies  
   - Uses MovieCard widget (Poster, Title, Rating)  

3. *Abdo Ali* – Movie Details Screen  
   - Builds MovieDetailsScreen  
   - Shows full movie info (poster, overview, rating, release date, etc.)  
   - Designs layout with back navigation  

4. *Mohamed Saleh* – Search & Categories  
   - Develops SearchScreen  
   - Calls search API and displays results  
   - Creates CategoryScreen (Action, Drama, etc.)  

5. *Yousef Marey* – App Theme, Routing & Reusable Widgets  
   - Defines app theme (Colors, Fonts, Buttons)  
   - Manages routes.dart for navigation  
   - Builds reusable widgets (CustomButton, RatingStars, MovieImage)

```   
movia/
├── lib/
│   ├── models/                          # Diab
│   │   ├── movie_model.dart
│   │   └── genre_model.dart
│   ├── services/                        # Diab + Yousef Saleh
│   │   └── api_service.dart
│   ├── screens/
│   │   ├── home_screen.dart             # Yousef Saleh
│   │   ├── movie_details_screen.dart    # Abdo Ali
│   │   ├── search_screen.dart           # Mohamed Saleh
│   │   └── category_screen.dart         # Mohamed Saleh
│   ├── widgets/                         # Yousef Marey
│   │   ├── custom_button.dart
│   │   ├── rating_stars.dart
│   │   └── movie_image.dart
│   ├── theme/                           # Yousef Marey
│   │   └── app_theme.dart
│   └── routes/                          # Yousef Marey
│       └── routes.dart
├── test/
│   ├── ui_tests/                        # Mohsen
│   │   ├── home_screen_test.dart
│   │   ├── movie_details_test.dart
│   │   └── search_screen_test.dart
│   ├── api_tests/                       # Aboelkhier
│   │   └── api_service_test.dart
│   ├── functional_tests/               # Aboelkhier
│   │   ├── movie_search_functional_test.dart
│   │   └── favorite_movie_functional_test.dart
│   └── test_report/                    # Heba
│       ├── test_report.md
│       └── bug_report.md
├── docs/
│   ├── ui_documentation.md             # Aisha
│   ├── api_documentation.md            # Nour
│   └── testing_documentation.md        # Heba
├── assets/
│   └── designs/                        # Hany - Ziad - Omar - Osama
│       ├── home_ui.png
│       ├── details_ui.png
│       ├── search_ui.png
│       └── category_ui.png
├── README.md                           # يوسف - إدارة وتنسيق المشروع
└── pubspec.yaml
```

