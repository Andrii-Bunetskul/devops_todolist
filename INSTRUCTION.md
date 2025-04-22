# Інструкції для запуску ToDo-застосунку за допомогою Docker

Цей файл містить докладні інструкції з отримання, побудови (за потреби) та запуску ToDo-застосунку, запакованого у Docker-контейнер.

## 🐳 Посилання на Docker Hub

Ви можете знайти попередньо зібраний образ застосунку в моєму репозиторії на Docker Hub:

[![Docker Hub Link](https://img.shields.io/badge/Docker%20Hub-andreybunetskul%2Ftodoapp-blue?logo=docker)](https://hub.docker.com/r/andreybunetskul/todoapp)

## 🛠️ Локальна побудова Docker-образу (за потреби)

Якщо ви бажаєте самостійно побудувати Docker-образ з наданого `Dockerfile`, виконайте наступні кроки:

1.  **Переконайтеся, що Docker встановлено** на вашій машині. Ви можете перевірити його версію за допомогою команди:

    ```bash
    docker --version
    ```

2.  **Перейдіть до директорії проєкту**, яка містить файл `Dockerfile` вашого ToDo-застосунку.

3.  **Виконайте команду для побудови Docker-образу:**

    ```bash
    docker build -t andreybunetskul/todoapp:1.0.0 .
    ```

    або, якщо ви не плануєте завантажувати образ на Docker Hub:

    ```bash
    docker build -t todoapp:1.0.0 .
    ```

    ⚠️ **Важливо:** Переконайтеся, що у вашій директорії також присутній файл `requirements.txt` зі списком Python-залежностей, якщо ваш застосунок використовує Python.

## 🚀 Запуск Docker-контейнера

Щоб запустити ToDo-застосунок з Docker-образу (`andreybunetskul/todoapp:1.0.0` з Docker Hub або `todoapp:1.0.0` локально), скористайтеся наступною командою:

```bash
docker run -p 8080:8080 andreybunetskul/todoapp:1.0.0
