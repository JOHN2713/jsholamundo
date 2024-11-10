# **JAVASCRIPT HOLA MUNDO**

Este repositorio contiene una implementación simple de "Hola Mundo" en JavaScript, diseñada para ejecutarse tanto en Node.js como en un contenedor Docker.

## Descripción
El programa consiste en un script simple que imprime "Hola, Mundo" en la consola, demostrando la configuración básica de un proyecto JavaScript y su containerización con Docker.

## Requisitos
- **Runtime**: Node.js 18 o superior
- **Docker**: (opcional) para ejecutar en contenedor

## Estructura del Proyecto
```
javascript-hola-mundo/
│
├── hola_mundo.js    # Script principal
├── Dockerfile       # Configuración de Docker
└── README.md        # Este archivo
```

## Contenido de los Archivos

### hola_mundo.js
```javascript
console.log("Hola, Mundo");
```

### Dockerfile
```dockerfile
# Usa la imagen oficial de Node.js como base
FROM node:18

# Crea un directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia el archivo `app.js` al contenedor
COPY hola_mundo.js .

# Configura el comando por defecto para ejecutar el script
CMD ["node", "hola_mundo.js"]
```

## Cómo Clonar y Ejecutar
Para clonar este repositorio en tu máquina local, usa los siguientes comandos:
```bash
git clone https://github.com/<tu-usuario>/javascript-hola-mundo.git
cd javascript-hola-mundo
```

### Ejecución con Node.js
```bash
node hola_mundo.js
```

### Ejecución con Docker
**Paso 1: Construir la Imagen Docker**
```bash
docker build -t javascript-hola-mundo .
```

**Paso 2: Ejecutar el Contenedor**
```bash
docker run javascript-hola-mundo
```

## Dockerización y Publicación
Para publicar la imagen en Docker Hub:

**Paso 1: Etiquetar la Imagen**
```bash
docker tag javascript-hola-mundo <tu-usuario>/javascript-hola-mundo:latest
```

**Paso 2: Subir la Imagen a Docker Hub**
```bash
docker push <tu-usuario>/javascript-hola-mundo:latest
```

## Desarrollo

### Prerrequisitos
1. Node.js 18 o superior instalado
2. Docker instalado (opcional)
3. Git instalado

### Configuración del Entorno de Desarrollo
1. Clona el repositorio
2. No se requieren dependencias adicionales para este proyecto básico
3. Puedes modificar el mensaje en `hola_mundo.js` según tus necesidades

## Mejores Prácticas
- El código sigue las convenciones de estilo de JavaScript
- El Dockerfile está optimizado para un despliegue mínimo
- Se utiliza la versión LTS de Node.js para mayor estabilidad

## Contribuir
1. Haz fork del proyecto
2. Crea una nueva rama (`git checkout -b feature/nueva-caracteristica`)
3. Haz commit de tus cambios (`git commit -am 'Agrega nueva característica'`)
4. Haz push a la rama (`git push origin feature/nueva-caracteristica`)
5. Crea un Pull Request

## Licencia
Este proyecto está bajo la Licencia MIT.

---
*Recuerda reemplazar `<tu-usuario>` con tu nombre de usuario de GitHub o Docker Hub.*
