# EAS Custom Kotlin Image

Imagem personalizada do Expo EAS Build com Kotlin 2.1.0, Gradle e JDK 17.

## Uso

No seu projeto Expo, configure o `eas.json`:

```json
{
  "build": {
    "production": {
      "android": {
        "image": "ghcr.io/SEU_USUARIO/eas-custom-kotlin:latest"
      }
    }
  }
}
