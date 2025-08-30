// Add: `dart-define`でファイルを読み込みのため
import java.util.Base64

// Add: `*.properties`ファイルの読み込みのため
import java.io.FileInputStream
import java.util.Properties

plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")

    // Add: Firebase
    id("com.google.gms.google-services")
    id("com.google.firebase.crashlytics")
}

// Add: dart-defines
val dartDefines = if (project.hasProperty("dart-defines")) {
    project.property("dart-defines")
        .toString()
        .split(",")
        .associate { entry ->
            val pair = String(Base64.getDecoder().decode(entry), Charsets.UTF_8).split("=")
            // valueがemptyの時にlastがkeyになるので、lengthが2でなければ空のmapにする
            if (pair.size == 2) pair[0] to pair[1] else "" to ""
        }
        .filterKeys { it.isNotEmpty() }
} else {
    emptyMap<String, String>()
}

// Add: android/key.propertiesの読み込み
val keystoreProperties = Properties()
val keystorePropertiesFile = rootProject.file("key.properties")
if (keystorePropertiesFile.exists()) {
    keystoreProperties.load(FileInputStream(keystorePropertiesFile))
}

// Add: 
val localProperties = Properties()
val localPropertiesFile = rootProject.file("local.properties")
if (localPropertiesFile.exists()) {
    localProperties.load(FileInputStream(localPropertiesFile))
}

// Add: `google-services.json`の環境毎の読み替え
// Firebase Crashlyticsも対応されたら削除すること
val copySources by tasks.registering(Copy::class) {
    from("src/${dartDefines["flavor"]}/res")
    into("src/main/res")
}
tasks.named("preBuild") {
    dependsOn(copySources)
}

android {
    namespace = "com.yakuran.family_wish_list"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11

        // Add: local_notifications
        isCoreLibraryDesugaringEnabled = true
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = dartDefines["androidPackageName"]
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
        resValue("string", "app_name", dartDefines["appName"] ?: "")
        resValue("string", "deeplink_scheme", dartDefines["deeplinkScheme"] ?: "")
        resValue("string", "branch_test_mode", dartDefines["branchTestMode"] ?: "false")
    }
    
    // Add: 
    signingConfigs {
        create("release") {
            keyAlias = keystoreProperties["keyAlias"] as String
            keyPassword = keystoreProperties["keyPassword"] as String
            storeFile = keystoreProperties["storeFile"]?.let { file(it) }
            storePassword = keystoreProperties["storePassword"] as String
        }
    }
    buildTypes {
        release {
            // Signing with the debug keys for now,
            // so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
            signingConfig = signingConfigs.getByName("release")
        }
    }
}

dependencies {
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
}

flutter {
    source = "../.."
}
