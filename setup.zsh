#!/bin/zsh

# Nombre del proyecto
PROJECT_NAME="EnviroZsh"

# Ruta de la carpeta de configuración en el home del usuario
CONFIG_DIR="$HOME/.config/$PROJECT_NAME"

# Crear carpeta del proyecto si no existe
if [[ ! -d $CONFIG_DIR ]]; then
  echo "Creando directorio $CONFIG_DIR..."
  mkdir -p $CONFIG_DIR
fi

# Copiar el script a la carpeta del proyecto
echo "Copiando el script a $CONFIG_DIR..."
cp ./crear_activar_venv.zsh $CONFIG_DIR/envirozsh.zsh

# Dar permisos de ejecución al script
echo "Dando permisos de ejecución al script..."
chmod +x $CONFIG_DIR/envirozsh.zsh

# Añadir alias al .zshrc si aún no existe
ALIAS_CMD="alias enviro='$CONFIG_DIR/envirozsh.zsh'"
if grep -q "$ALIAS_CMD" ~/.zshrc; then
  echo "El alias 'enviro' ya existe en .zshrc."
else
  echo "Añadiendo alias 'enviro' a .zshrc..."
  echo $ALIAS_CMD >> ~/.zshrc
fi

echo "Instalación completada. Reinicia tu terminal o ejecuta 'source ~/.zshrc' para usar el alias 'enviro'."
