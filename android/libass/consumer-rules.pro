# JNI exports bind by name (Java_com_bokrez_luroka_libass_*); keep the names stable.
-keepclasseswithmembernames class com.bokrez.luroka.libass.* {
    native <methods>;
}
