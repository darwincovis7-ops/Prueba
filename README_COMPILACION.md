# Estado Privado - Proyecto Android Nativo (Jetpack Compose)

Aplicación Android instalable para visualizar estados de WhatsApp almacenados localmente en el teléfono sin abrir WhatsApp.

## Características Técnicas
- **100% Local y Offline**: No requiere permisos de red, no sube archivos a ningún servidor.
- **Storage Access Framework (SAF)**: Utiliza `ACTION_OPEN_DOCUMENT_TREE` y permisos persistentes oficiales de Android.
- **Sin Root ni Hacking**: Cumple todas las políticas de seguridad de Android y Google Play.
- **Jetpack Compose + Material3**: Interfaz reactiva fluida, moderna con paleta Turquesa (`#00C9A7`) y Azul Marino (`#0B132B`).
- **Media3 / ExoPlayer**: Reproducción de videos de estados con control de audio, tiempo y navegación.
- **Coil 2.7**: Carga instantánea de miniaturas en memoria y disco.

---

## 🛠️ Instrucciones para Compilar el APK

### Opción A: Desde Android Studio (Recomendado)
1. Descarga el archivo ZIP del proyecto con el botón **"Descargar Proyecto Android (.ZIP)"** de esta app.
2. Descomprime el archivo en tu computadora.
3. Abre **Android Studio** (versión Hedgehog, Iguana, Jellyfish, Koala o superior).
4. Selecciona **File > Open** y elige la carpeta descomprimida `EstadoPrivado`.
5. Espera a que Gradle sincronice las dependencias automáticamente (`Sync Project with Gradle Files`).
6. Conecta tu teléfono Android con depuración USB habilitada (o inicia un emulador Android 13+).
7. Haz clic en el botón verde **Run (▶)** o en el menú superior selecciona:
   **Build > Build Bundle(s) / APK(s) > Build APK(s)**.
8. Android Studio generará el archivo APK listo para instalar en:
   `app/build/outputs/apk/debug/app-debug.apk`.

---

### Opción B: Desde la Terminal (Línea de Comandos)

Si tienes instalado el JDK 17 o superior y el Android SDK:

```bash
# 1. Navega a la carpeta del proyecto
cd EstadoPrivado

# 2. Asigna permisos de ejecución al wrapper (en Linux / macOS)
chmod +x gradlew

# 3. Compila el APK en modo depuración (Debug)
./gradlew assembleDebug

# O en Windows:
# gradlew.bat assembleDebug
```

El APK generado estará ubicado en:
`app/build/outputs/apk/debug/app-debug.apk`

Para instalarlo directamente en tu teléfono conectado:
```bash
adb install -r app/build/outputs/apk/debug/app-debug.apk
```

---

## 📂 Ruta de los estados en WhatsApp (Android 11 a 15)

WhatsApp almacena los estados vistos temporalmente en:
`Android/media/com.whatsapp/WhatsApp/Media/.Statuses`

En WhatsApp Business:
`Android/media/com.whatsapp.w4b/WhatsApp Business/Media/.Statuses`

> **Nota:** La carpeta `.Statuses` comienza con un punto, lo que indica que es oculta. En el selector de carpetas de Android, activa la opción **"Mostrar archivos ocultos"** desde el menú de 3 puntos.
