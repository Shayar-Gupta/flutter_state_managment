# 🧠 Flutter State Management Showcase

This Flutter project demonstrates **three popular state management approaches**: `setState`, `Provider`, and `GetX`.  
Each approach is implemented in a separate **Git branch** for clear and easy comparison.

---

## 🔀 Branches Overview

| Branch Name        | State Management Technique                    |
|--------------------|-----------------------------------------------|
| `setState_branch`  | Uses Flutter’s built-in `setState()` method   |
| `provider_branch`  | Uses the [Provider](https://pub.dev/packages/provider) package |
| `getX_branch`      | Uses the [GetX](https://pub.dev/packages/get) package         |

---

## 📂 Project Structure

Each branch contains a **basic counter app** where the user can increment a number.  
The goal is to demonstrate **how state is handled differently** in each approach — using the same UI layout.


---

## 🚀 Getting Started

### 1️⃣ Clone the repository

```bash
git clone https://github.com/Shayar-Gupta/flutter_state_managment.git
cd flutter_state_managment
```

### 2️⃣ Switch to a branch
```bash
git checkout setState_branch    # or provider_branch / getX_branch
```

### 3️⃣ Run the app
```bash
flutter pub get
flutter run
```

# 💡 Why Compare These Approaches?
## 🔹 setState

✅ Simple and native to Flutter.
⚠️ Best for small apps or prototypes.
🛠️ No external dependencies.

## 🔸 Provider

✅ Well-structured and scalable.
🚀 Encourages clean separation of UI and business logic.
🧩 Good for medium to large applications.

## 🔸 GetX

✅ Minimal boilerplate with maximum output.
⚡ Extremely reactive and efficient.
🧠 Ideal for clean architecture and performance-critical apps.
