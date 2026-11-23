# 💻 Compiladores y Lenguajes | Grupo 3

**Escuela Politécnica Nacional**  
**Carrera:** Ciencia de Datos e Inteligencia Artificial  
**Asignatura:** Compiladores y Lenguajes  
**Período académico:** 2026-B  
**Grupo:** 3

---

## 📌 Descripción

Este repositorio contiene los laboratorios y ejercicios prácticos desarrollados durante el semestre académico en la asignatura de **Compiladores y Lenguajes**.

Su propósito es organizar y documentar la implementación de los programas realizados en clase, incluyendo el código fuente, los archivos de entrada y salida, las evidencias de ejecución y los informes correspondientes.

Los trabajos se encuentran distribuidos según los dos bimestres del semestre.

## 📂 Organización del repositorio

| Directorio | Descripción |
|---|---|
| **[1B](./1B)** | Laboratorios y ejercicios correspondientes al primer bimestre. |
| **2B** | Laboratorios y ejercicios del segundo bimestre. Se incorporarán conforme avance el semestre. |

## 📁 Contenido de los ejercicios

Cada ejercicio se organiza en una carpeta independiente que contiene los archivos necesarios para su revisión y ejecución.

| Archivo | Descripción |
|---|---|
| `nombre.l` | Código fuente desarrollado en Lex/Flex. |
| `entrada.txt` | Datos utilizados para probar el analizador. |
| `salida.txt` | Resultados obtenidos durante la ejecución. |
| `lex.yy.c` | Código fuente C generado automáticamente por Lex/Flex. |
| `a.out` | Archivo ejecutable generado mediante GCC. |
| `Informe.pdf` | Miniinforme con la explicación del código, compilación, ejecución y evidencias. |

Los nombres de los archivos pueden variar según el ejercicio.

## ⚙️ Requisitos para la ejecución

Los programas se desarrollan y prueban en un entorno Linux, utilizando las siguientes herramientas:

- **Ubuntu:** sistema operativo utilizado para las prácticas.
- **Lex/Flex:** generación de analizadores léxicos.
- **GCC:** compilación del código C generado.
- **Terminal de Linux:** ejecución y comprobación de resultados.

### Instalación de herramientas

En Ubuntu se pueden instalar las herramientas necesarias mediante:

```bash
sudo apt update
sudo apt install flex gcc libfl-dev
```

## ▶️ Compilación y ejecución

Para ejecutar un ejercicio, primero se debe descargar el repositorio y acceder a la carpeta correspondiente.

Por ejemplo, para el ejercicio 05:

**1. Acceder al directorio:**

```bash
cd 1B/CINCO
```

**2. Generar el código C mediante Lex:**

```bash
lex cinco.l
```

**3. Compilar utilizando GCC:**

```bash
gcc lex.yy.c -lfl
```

**4. Ejecutar el programa:**

```bash
./a.out < entrada.txt > salida.txt
```

**5. Visualizar los resultados:**

```bash
cat salida.txt
```

Este procedimiento se adapta al nombre del archivo `.l` correspondiente a cada ejercicio.

Se recomienda compilar nuevamente el código fuente en el equipo donde se ejecute, para evitar posibles incompatibilidades con el archivo `a.out` incluido.

## 📥 Descarga del repositorio

Para descargar todos los laboratorios:

1. Ingresar a la página principal del repositorio.
2. Seleccionar el botón **Code**.
3. Hacer clic en **Download ZIP**.
4. Extraer el archivo descargado.
5. Acceder a la carpeta `1B` o `2B`, según el laboratorio que se desee revisar.

También es posible descargar el repositorio utilizando Git:

```bash
git clone https://github.com/errzk/compiladores-y-lenguajes-grupo3.git
```

## 👥 Integrantes del grupo

- Chávez Valeria
- Páez Erick
- Tituaña Emily

---

**Escuela Politécnica Nacional | Compiladores y Lenguajes | Grupo 3**

*Repositorio académico destinado al desarrollo, documentación y entrega de las prácticas realizadas durante el semestre.*
