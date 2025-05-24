# 🚀 Proyecto Deploy Automático en Heroku con GitHub Actions

Este proyecto demuestra cómo automatizar el despliegue continuo (CI/CD) en Heroku utilizando GitHub Actions.

## 🛠 Tecnologías utilizadas

- Node.js
- GitHub Actions
- Heroku
- npm

## 🔄 Despliegue Automático

Cada vez que haces un `push` a la rama `main`, GitHub Actions:

1. Instala las dependencias.
2. Ejecuta el build si es necesario.
3. Autentica con Heroku.
4. Despliega la app en Heroku automáticamente.

## 🌐 Enlace de la App

[https://distri.herokuapp.com](https://distri.herokuapp.com) 

## 📂 Estructura

/
├── public/
├── src/
├── .github/workflows/deploy.yml
├── package.json
└── README.md
