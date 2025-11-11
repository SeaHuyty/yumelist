# Professional Flutter App Folder Structure Guide

## Recommended Folder Structure for Minimal Diary App

```
lib/
├── main.dart                           # App entry point
├── core/                              # Core app functionality
│   ├── constants/                     # App-wide constants
│   │   ├── app_constants.dart         # General constants (routes, keys, etc.)
│   │   ├── firebase_constants.dart    # Firebase collection names
│   │   └── api_constants.dart         # API endpoints (if any)
│   ├── theme/                         # App theming
│   │   ├── app_theme.dart            # Light & dark themes
│   │   ├── app_colors.dart           # Color constants
│   │   └── text_styles.dart          # Typography styles
│   ├── utils/                         # Utility functions
│   │   ├── date_helper.dart          # Date formatting utilities
│   │   ├── validation_helper.dart    # Input validation
│   │   └── string_extensions.dart    # String helper methods
│   └── error/                         # Error handling
│       ├── exceptions.dart           # Custom exceptions
│       └── error_handler.dart        # Global error handling
├── features/                          # Feature-based architecture
│   ├── auth/                         # Authentication feature
│   │   ├── data/                     # Data layer
│   │   │   ├── models/              # Data models
│   │   │   │   └── user_model.dart
│   │   │   ├── repositories/        # Repository implementations
│   │   │   │   └── auth_repository_impl.dart
│   │   │   └── datasources/         # Data sources (Firebase, local)
│   │   │       ├── auth_remote_datasource.dart
│   │   │       └── auth_local_datasource.dart
│   │   ├── domain/                   # Business logic layer
│   │   │   ├── entities/            # Business entities
│   │   │   │   └── user_entity.dart
│   │   │   ├── repositories/        # Repository interfaces
│   │   │   │   └── auth_repository.dart
│   │   │   └── usecases/            # Use cases (business rules)
│   │   │       ├── login_usecase.dart
│   │   │       ├── register_usecase.dart
│   │   │       └── logout_usecase.dart
│   │   └── presentation/            # UI layer
│   │       ├── pages/               # Screen widgets
│   │       │   ├── login_page.dart
│   │       │   ├── register_page.dart
│   │       │   └── forgot_password_page.dart
│   │       ├── widgets/             # Reusable UI components
│   │       │   ├── custom_text_field.dart
│   │       │   ├── auth_button.dart
│   │       │   └── social_login_button.dart
│   │       └── providers/           # State management
│   │           └── auth_provider.dart
│   ├── diary/                        # Diary entries feature
│   │   ├── data/
│   │   │   ├── models/
│   │   │   │   └── diary_entry_model.dart
│   │   │   ├── repositories/
│   │   │   │   └── diary_repository_impl.dart
│   │   │   └── datasources/
│   │   │       ├── diary_remote_datasource.dart
│   │   │       └── diary_local_datasource.dart
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   │   └── diary_entry_entity.dart
│   │   │   ├── repositories/
│   │   │   │   └── diary_repository.dart
│   │   │   └── usecases/
│   │   │       ├── get_entries_usecase.dart
│   │   │       ├── add_entry_usecase.dart
│   │   │       ├── update_entry_usecase.dart
│   │   │       └── delete_entry_usecase.dart
│   │   └── presentation/
│   │       ├── pages/
│   │       │   ├── diary_home_page.dart
│   │       │   ├── add_entry_page.dart
│   │       │   ├── edit_entry_page.dart
│   │       │   └── entry_detail_page.dart
│   │       ├── widgets/
│   │       │   ├── entry_card.dart
│   │       │   ├── mood_selector.dart
│   │       │   ├── photo_picker.dart
│   │       │   └── entry_search_bar.dart
│   │       └── providers/
│   │           └── diary_provider.dart
│   ├── profile/                      # User profile feature
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   └── settings/                     # App settings feature
│       ├── data/
│       ├── domain/
│       └── presentation/
├── shared/                           # Shared across features
│   ├── widgets/                      # Common UI components
│   │   ├── loading_widget.dart
│   │   ├── error_widget.dart
│   │   ├── custom_app_bar.dart
│   │   ├── bottom_nav_bar.dart
│   │   └── confirmation_dialog.dart
│   ├── services/                     # External services
│   │   ├── firebase_service.dart
│   │   ├── local_storage_service.dart
│   │   ├── image_service.dart
│   │   └── notification_service.dart
│   ├── providers/                    # Global state management
│   │   ├── theme_provider.dart
│   │   └── connectivity_provider.dart
│   └── routing/                      # App navigation
│       ├── app_router.dart
│       └── route_constants.dart
└── app.dart                          # Main app widget

assets/                               # Static assets
├── images/                          # App images
│   ├── logo.png
│   ├── onboarding/
│   └── placeholders/
├── icons/                           # Custom icons
│   └── mood_icons/
└── fonts/                           # Custom fonts (if any)

docs/                                # Documentation
├── folder_structure.md              # This file
├── setup_guide.md                   # Setup instructions
└── feature_requirements.md          # Feature specifications
```

## 🏗️ Architecture Explanation

### **Core Layer**

- **Constants**: App-wide configuration and constants
- **Theme**: Centralized theming system
- **Utils**: Helper functions used across the app
- **Error**: Centralized error handling

### **Features Layer** (Clean Architecture)

Each feature follows the **Clean Architecture** pattern with three layers:

1. **Data Layer**:

   - Models (JSON serialization)
   - Repository implementations
   - Data sources (Firebase, local storage)

2. **Domain Layer**:

   - Entities (business objects)
   - Repository interfaces
   - Use cases (business logic)

3. **Presentation Layer**:
   - Pages (screens)
   - Widgets (UI components)
   - Providers (state management)

### **Shared Layer**

- Common widgets used across features
- Services for external integrations
- Global state management
- App routing configuration

## 🎯 Benefits of This Structure

### 1. **Scalability**

- Easy to add new features
- Clear separation of concerns
- Modular architecture

### 2. **Maintainability**

- Easy to find and modify code
- Clear dependencies
- Testable components

### 3. **Team Collaboration**

- Clear ownership of features
- Parallel development possible
- Consistent patterns

### 4. **Testing**

- Each layer can be tested independently
- Mock implementations easy to create
- Clear test boundaries

## 📱 Diary App Specific Features

### **Authentication Feature**

- Login/Register screens
- Password reset
- Social login integration
- User session management

### **Diary Feature**

- Entry creation/editing
- Entry listing with search
- Mood tracking
- Photo attachments
- Date-based organization

### **Profile Feature**

- User profile management
- Statistics and insights
- Export functionality

### **Settings Feature**

- Theme selection
- Backup settings
- Privacy controls
- About/Help sections

## 🚀 Getting Started

1. **Start Small**: Begin with basic folder structure
2. **Add Gradually**: Create folders as you need them
3. **Stay Consistent**: Follow the established patterns
4. **Refactor When Needed**: Don't be afraid to reorganize

## 📋 Implementation Order

1. Set up core structure (constants, theme, utils)
2. Implement authentication feature
3. Build basic diary functionality
4. Add shared services (Firebase integration)
5. Expand with additional features
6. Polish with settings and profile features

This structure will keep your diary app organized, professional, and ready for future growth!
