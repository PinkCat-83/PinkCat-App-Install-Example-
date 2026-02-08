# Pink Cat App (Installer Example)

![Pink Cat App Icon](rsc/rosa.ico)

## 📋 Descripción

Pink Cat App es un **programa educativo** diseñado para enseñar a estudiantes las mejores prácticas al instalar software en Windows. El programa en sí es muy simple (muestra una imagen aleatoria de un gato con un mensaje de felicitación), pero el valor educativo está en el **proceso de instalación**.

## 🎯 Objetivo Educativo

Este proyecto enseña a los alumnos a:

- ✅ **Leer completamente** los términos y condiciones antes de aceptar
- ✅ **Identificar software basura** que intentan colar los instaladores
- ✅ **Reconocer publicidad engañosa** durante instalaciones
- ✅ **Respetar licencias Creative Commons** y derechos de autor
- ✅ **Instalar y desinstalar programas correctamente** en Windows

## 🚀 Características del Instalador

El instalador incluye varias pantallas educativas:

1. **Pantalla de Bienvenida**: Introducción al programa
2. **Créditos y Atribuciones**: Enseña la importancia de respetar las licencias CC
3. **Términos y Condiciones**: Con un mensaje oculto al final que advierte sobre la siguiente trampa
4. **Publicidad Molesta**: Ejemplo de publicidad que aparece en muchos instaladores
5. **Software Basura (Trampa)**: Checkbox pre-marcado para instalar "SuperOptimizer Pro" (falso)
6. **Selección de Carpeta**: Donde se instalará el programa
7. **Instalación**: Barra de progreso
8. **Finalización**: Opción de ejecutar el programa

## 🛠️ Historia del Desarrollo

### Primera Versión: AutoHotkey ❌

Inicialmente, el programa fue desarrollado en **AutoHotkey** por su simplicidad y facilidad de uso. Sin embargo, esta versión fue descartada por los siguientes problemas:

#### Problemas con AutoHotkey:
- **Alto índice de falsos positivos**: 13 de 70 antivirus detectaban el ejecutable como malware
- **Detecciones específicas**:
  - `Bkav Pro`: W32.AIDetectMalware
  - `DeepInstinct`: MALICIOUS
  - `Cynet`: Malicious (score: 100)
  - `Sangfor Engine Zero`: Trojan.Win32.Save.a
  - Y otros 9 más...

#### Razones de las detecciones:
- AutoHotkey es frecuentemente usado por creadores de malware
- Los antivirus usan detección heurística que confunde scripts AHK legítimos con malware
- El ejecutable incluye el intérprete completo de AHK, lo que genera sospechas

### Versión Final: Python + PyInstaller ✅

Se recreó completamente el programa en **Python** usando:
- **Tkinter**: Para la interfaz gráfica
- **Pillow (PIL)**: Para manejo de imágenes
- **PyInstaller**: Para crear el ejecutable
- **Inno Setup**: Para crear el instalador profesional

#### Resultados de Seguridad:
- **Instalador**: 1 de 70 detecciones (98.6% de confianza) ✅
- **Ejecutable**: 3 de 70 detecciones (95.7% de confianza) ✅

**Mejora del 77% en falsos positivos** comparado con AutoHotkey.

## 📦 Estructura del Proyecto

```
PinkCat App (Install Example)/
├── pinkcatapp.py                      # Código fuente principal en Python
├── pinkcatapp.iss                     # Script de Inno Setup para el instalador
├── README.md                          # Este archivo
├── gatos/                             # Carpeta con imágenes de gatos
│   ├── 0.jpg
│   ├── 1.jpg
│   ├── ...
│   └── 9.jpg
├── rsc/                              # Recursos del instalador
│   ├── rosa.ico                      # Icono del programa
│   ├── URL.txt                       # Enlace donde se encontró el icono de la rosa
│   ├── fake.bmp                      # Imagen del software falso
│   └── ad.bmp                        # Imagen de publicidad
└── Output/
    ├── PinkCat App.exe               # Programa final ejecutable               
    └── PinkCatApp_Setup.exe          # Instalador
```

## 📥 Descarga
Puedes encontrar las descargas en la sección "releases"

## 🎓 Uso en el Aula

### Recomendaciones para Profesores:

1. **Antes de la instalación**: Explicar qué es un instalador y por qué hay que tener cuidado
2. **Durante la instalación**: Dejar que los alumnos descubran las trampas por sí mismos
3. **Después de la instalación**: 
   - Discutir quién leyó completamente los términos
   - Quién cayó en la trampa del "SuperOptimizer Pro"
   - Practicar la desinstalación correcta

### Puntos de Discusión:

- ¿Por qué es peligroso hacer clic en "Siguiente" sin leer?
- ¿Cómo identificar software basura en instaladores reales?
- ¿Qué son las licencias Creative Commons?
- ¿Cómo desinstalar programas correctamente?

## 📜 Créditos y Licencias

### Icono del Programa
- **Fuente**: [Flaticon - Rosa](https://www.flaticon.es/icono-gratis/rosa_774122)
- **Licencia**: Creative Commons
- **Autor**: Flaticon

### Código
- **Lenguaje**: Python 3.x
- **Librerías**: Tkinter (incluida), Pillow
- **Herramientas**: PyInstaller, Inno Setup

## ⚠️ Advertencia

Este programa es **completamente seguro** y fue creado con fines educativos. Las detecciones de algunos antivirus son **falsos positivos** causados por la forma en que PyInstaller empaqueta los ejecutables de Python.

El código fuente está disponible para verificación y es completamente transparente.

## 🤝 Contribuciones

Este es un proyecto educativo. Si tienes sugerencias para mejorarlo o detectas algún problema, no dudes en reportarlo.

## 📧 Contacto

Proyecto creado para fines educativos en la enseñanza de instalación segura de software.

---

**Versión**: 1.0  
**Fecha**: Febrero 2026  
**Autor**: Ayax González Suárez
