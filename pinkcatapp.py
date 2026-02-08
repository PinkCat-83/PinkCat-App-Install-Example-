import tkinter as tk
from tkinter import font
from PIL import Image, ImageTk
import random
import os
import sys

def cerrar():
    ventana.destroy()

# Obtener la ruta correcta tanto para desarrollo como para ejecutable
def resource_path(relative_path):
    """ Get absolute path to resource, works for dev and for PyInstaller """
    try:
        # PyInstaller crea una carpeta temporal y guarda la ruta en _MEIPASS
        base_path = sys._MEIPASS
    except Exception:
        base_path = os.path.abspath(".")
    
    return os.path.join(base_path, relative_path)

# Crear la ventana principal
ventana = tk.Tk()
ventana.title("Instalaste el programa de prueba correctamente.")
ventana.geometry("700x700")
ventana.resizable(False, False)

# Generar un número aleatorio entre 0 y 9
ultimo_digito = random.randint(0, 9)
ruta_imagen = resource_path(os.path.join("gatos", f"{ultimo_digito}.jpg"))

# Crear y configurar el texto "BIEN HECHO"
fuente_titulo = font.Font(family="Arial", size=50)
label_titulo = tk.Label(ventana, text="BIEN HECHO", font=fuente_titulo)
label_titulo.place(x=0, y=50, width=700, height=100)

# Cargar y mostrar la imagen
try:
    imagen = Image.open(ruta_imagen)
    imagen = imagen.resize((500, 500), Image.Resampling.LANCZOS)
    foto = ImageTk.PhotoImage(imagen)
    label_imagen = tk.Label(ventana, image=foto)
    label_imagen.image = foto  # Mantener referencia
    label_imagen.place(x=100, y=150, width=500, height=500)
except FileNotFoundError:
    label_error = tk.Label(ventana, text=f"No se encontró: {ruta_imagen}", fg="red")
    label_error.place(x=100, y=400)

# Crear el botón OK
fuente_boton = font.Font(family="Arial", size=20)
boton_ok = tk.Button(ventana, text="OK", font=fuente_boton, command=cerrar)
boton_ok.place(x=250, y=550, width=200, height=50)

# Ejecutar la aplicación
ventana.mainloop()