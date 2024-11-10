# Usa la imagen oficial de Node.js como base
FROM node:18

# Crea un directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia el archivo `app.js` al contenedor
COPY hola_mundo.js .

# Configura el comando por defecto para ejecutar el script
CMD ["node", "hola_mundo.js"]