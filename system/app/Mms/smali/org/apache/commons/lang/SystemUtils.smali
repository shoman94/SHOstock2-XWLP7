.class public Lorg/apache/commons/lang/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field public static final AWT_TOOLKIT:Ljava/lang/String;

.field public static final FILE_ENCODING:Ljava/lang/String;

.field public static final FILE_SEPARATOR:Ljava/lang/String;

.field public static final IS_JAVA_1_1:Z

.field public static final IS_JAVA_1_2:Z

.field public static final IS_JAVA_1_3:Z

.field public static final IS_JAVA_1_4:Z

.field public static final IS_JAVA_1_5:Z

.field public static final IS_JAVA_1_6:Z

.field public static final IS_JAVA_1_7:Z

.field public static final IS_OS_AIX:Z

.field public static final IS_OS_HP_UX:Z

.field public static final IS_OS_IRIX:Z

.field public static final IS_OS_LINUX:Z

.field public static final IS_OS_MAC:Z

.field public static final IS_OS_MAC_OSX:Z

.field public static final IS_OS_OS2:Z

.field public static final IS_OS_SOLARIS:Z

.field public static final IS_OS_SUN_OS:Z

.field public static final IS_OS_UNIX:Z

.field public static final IS_OS_WINDOWS:Z

.field public static final IS_OS_WINDOWS_2000:Z

.field public static final IS_OS_WINDOWS_7:Z

.field public static final IS_OS_WINDOWS_95:Z

.field public static final IS_OS_WINDOWS_98:Z

.field public static final IS_OS_WINDOWS_ME:Z

.field public static final IS_OS_WINDOWS_NT:Z

.field public static final IS_OS_WINDOWS_VISTA:Z

.field public static final IS_OS_WINDOWS_XP:Z

.field public static final JAVA_AWT_FONTS:Ljava/lang/String;

.field public static final JAVA_AWT_GRAPHICSENV:Ljava/lang/String;

.field public static final JAVA_AWT_HEADLESS:Ljava/lang/String;

.field public static final JAVA_AWT_PRINTERJOB:Ljava/lang/String;

.field public static final JAVA_CLASS_PATH:Ljava/lang/String;

.field public static final JAVA_CLASS_VERSION:Ljava/lang/String;

.field public static final JAVA_COMPILER:Ljava/lang/String;

.field public static final JAVA_ENDORSED_DIRS:Ljava/lang/String;

.field public static final JAVA_EXT_DIRS:Ljava/lang/String;

.field public static final JAVA_HOME:Ljava/lang/String;

.field public static final JAVA_IO_TMPDIR:Ljava/lang/String;

.field public static final JAVA_LIBRARY_PATH:Ljava/lang/String;

.field public static final JAVA_RUNTIME_NAME:Ljava/lang/String;

.field public static final JAVA_RUNTIME_VERSION:Ljava/lang/String;

.field public static final JAVA_SPECIFICATION_NAME:Ljava/lang/String;

.field public static final JAVA_SPECIFICATION_VENDOR:Ljava/lang/String;

.field public static final JAVA_SPECIFICATION_VERSION:Ljava/lang/String;

.field public static final JAVA_UTIL_PREFS_PREFERENCES_FACTORY:Ljava/lang/String;

.field public static final JAVA_VENDOR:Ljava/lang/String;

.field public static final JAVA_VENDOR_URL:Ljava/lang/String;

.field public static final JAVA_VERSION:Ljava/lang/String;

.field public static final JAVA_VERSION_FLOAT:F

.field public static final JAVA_VERSION_INT:I

.field public static final JAVA_VERSION_TRIMMED:Ljava/lang/String;

.field public static final JAVA_VM_INFO:Ljava/lang/String;

.field public static final JAVA_VM_NAME:Ljava/lang/String;

.field public static final JAVA_VM_SPECIFICATION_NAME:Ljava/lang/String;

.field public static final JAVA_VM_SPECIFICATION_VENDOR:Ljava/lang/String;

.field public static final JAVA_VM_SPECIFICATION_VERSION:Ljava/lang/String;

.field public static final JAVA_VM_VENDOR:Ljava/lang/String;

.field public static final JAVA_VM_VERSION:Ljava/lang/String;

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final OS_ARCH:Ljava/lang/String;

.field public static final OS_NAME:Ljava/lang/String;

.field public static final OS_VERSION:Ljava/lang/String;

.field public static final PATH_SEPARATOR:Ljava/lang/String;

.field public static final USER_COUNTRY:Ljava/lang/String;

.field public static final USER_DIR:Ljava/lang/String;

.field public static final USER_HOME:Ljava/lang/String;

.field public static final USER_LANGUAGE:Ljava/lang/String;

.field public static final USER_NAME:Ljava/lang/String;

.field public static final USER_TIMEZONE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    const-string v0, "awt.toolkit"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->AWT_TOOLKIT:Ljava/lang/String;

    .line 105
    const-string v0, "file.encoding"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->FILE_ENCODING:Ljava/lang/String;

    .line 122
    const-string v0, "file.separator"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->FILE_SEPARATOR:Ljava/lang/String;

    .line 138
    const-string v0, "java.awt.fonts"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_AWT_FONTS:Ljava/lang/String;

    .line 154
    const-string v0, "java.awt.graphicsenv"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_AWT_GRAPHICSENV:Ljava/lang/String;

    .line 175
    const-string v0, "java.awt.headless"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_AWT_HEADLESS:Ljava/lang/String;

    .line 191
    const-string v0, "java.awt.printerjob"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_AWT_PRINTERJOB:Ljava/lang/String;

    .line 207
    const-string v0, "java.class.path"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_CLASS_PATH:Ljava/lang/String;

    .line 224
    const-string v0, "java.class.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_CLASS_VERSION:Ljava/lang/String;

    .line 241
    const-string v0, "java.compiler"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_COMPILER:Ljava/lang/String;

    .line 258
    const-string v0, "java.endorsed.dirs"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_ENDORSED_DIRS:Ljava/lang/String;

    .line 275
    const-string v0, "java.ext.dirs"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_EXT_DIRS:Ljava/lang/String;

    .line 291
    const-string v0, "java.home"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_HOME:Ljava/lang/String;

    .line 307
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_IO_TMPDIR:Ljava/lang/String;

    .line 324
    const-string v0, "java.library.path"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_LIBRARY_PATH:Ljava/lang/String;

    .line 342
    const-string v0, "java.runtime.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_RUNTIME_NAME:Ljava/lang/String;

    .line 360
    const-string v0, "java.runtime.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_RUNTIME_VERSION:Ljava/lang/String;

    .line 377
    const-string v0, "java.specification.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_SPECIFICATION_NAME:Ljava/lang/String;

    .line 394
    const-string v0, "java.specification.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_SPECIFICATION_VENDOR:Ljava/lang/String;

    .line 411
    const-string v0, "java.specification.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_SPECIFICATION_VERSION:Ljava/lang/String;

    .line 428
    const-string v0, "java.util.prefs.PreferencesFactory"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_UTIL_PREFS_PREFERENCES_FACTORY:Ljava/lang/String;

    .line 445
    const-string v0, "java.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VENDOR:Ljava/lang/String;

    .line 461
    const-string v0, "java.vendor.url"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VENDOR_URL:Ljava/lang/String;

    .line 477
    const-string v0, "java.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    .line 495
    const-string v0, "java.vm.info"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_INFO:Ljava/lang/String;

    .line 512
    const-string v0, "java.vm.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_NAME:Ljava/lang/String;

    .line 529
    const-string v0, "java.vm.specification.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_SPECIFICATION_NAME:Ljava/lang/String;

    .line 546
    const-string v0, "java.vm.specification.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_SPECIFICATION_VENDOR:Ljava/lang/String;

    .line 563
    const-string v0, "java.vm.specification.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_SPECIFICATION_VERSION:Ljava/lang/String;

    .line 580
    const-string v0, "java.vm.vendor"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_VENDOR:Ljava/lang/String;

    .line 597
    const-string v0, "java.vm.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VM_VERSION:Ljava/lang/String;

    .line 614
    const-string v0, "line.separator"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 630
    const-string v0, "os.arch"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_ARCH:Ljava/lang/String;

    .line 646
    const-string v0, "os.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_NAME:Ljava/lang/String;

    .line 662
    const-string v0, "os.version"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_VERSION:Ljava/lang/String;

    .line 679
    const-string v0, "path.separator"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->PATH_SEPARATOR:Ljava/lang/String;

    .line 698
    const-string v0, "user.country"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "user.region"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_COUNTRY:Ljava/lang/String;

    .line 717
    const-string v0, "user.dir"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_DIR:Ljava/lang/String;

    .line 733
    const-string v0, "user.home"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_HOME:Ljava/lang/String;

    .line 751
    const-string v0, "user.language"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_LANGUAGE:Ljava/lang/String;

    .line 767
    const-string v0, "user.name"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_NAME:Ljava/lang/String;

    .line 784
    const-string v0, "user.timezone"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->USER_TIMEZONE:Ljava/lang/String;

    .line 798
    invoke-static {}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionTrimmed()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    .line 818
    invoke-static {}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionAsFloat()F

    move-result v0

    sput v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_FLOAT:F

    .line 833
    invoke-static {}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionAsInt()I

    move-result v0

    sput v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_INT:I

    .line 846
    const-string v0, "1.1"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_1:Z

    .line 854
    const-string v0, "1.2"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_2:Z

    .line 862
    const-string v0, "1.3"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_3:Z

    .line 870
    const-string v0, "1.4"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_4:Z

    .line 878
    const-string v0, "1.5"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_5:Z

    .line 886
    const-string v0, "1.6"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_6:Z

    .line 896
    const-string v0, "1.7"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getJavaVersionMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_JAVA_1_7:Z

    .line 914
    const-string v0, "AIX"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_AIX:Z

    .line 924
    const-string v0, "HP-UX"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_HP_UX:Z

    .line 934
    const-string v0, "Irix"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_IRIX:Z

    .line 944
    const-string v0, "Linux"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LINUX"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_LINUX:Z

    .line 954
    const-string v0, "Mac"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_MAC:Z

    .line 964
    const-string v0, "Mac OS X"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_MAC_OSX:Z

    .line 974
    const-string v0, "OS/2"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_OS2:Z

    .line 984
    const-string v0, "Solaris"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_SOLARIS:Z

    .line 994
    const-string v0, "SunOS"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_SUN_OS:Z

    .line 1005
    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_AIX:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_HP_UX:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_IRIX:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_LINUX:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_MAC_OSX:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_SOLARIS:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_SUN_OS:Z

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    sput-boolean v1, Lorg/apache/commons/lang/SystemUtils;->IS_OS_UNIX:Z

    .line 1017
    const-string v0, "Windows"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS:Z

    .line 1027
    const-string v0, "Windows"

    const-string v1, "5.0"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_2000:Z

    .line 1037
    const-string v0, "Windows 9"

    const-string v1, "4.0"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_95:Z

    .line 1048
    const-string v0, "Windows 9"

    const-string v1, "4.1"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_98:Z

    .line 1059
    const-string v0, "Windows"

    const-string v1, "4.9"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_ME:Z

    .line 1070
    const-string v0, "Windows NT"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_NT:Z

    .line 1081
    const-string v0, "Windows"

    const-string v1, "5.1"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_XP:Z

    .line 1092
    const-string v0, "Windows"

    const-string v1, "6.0"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_VISTA:Z

    .line 1102
    const-string v0, "Windows"

    const-string v1, "6.1"

    invoke-static {v0, v1}, Lorg/apache/commons/lang/SystemUtils;->getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/commons/lang/SystemUtils;->IS_OS_WINDOWS_7:Z

    return-void

    .line 698
    :cond_3
    const-string v0, "user.country"

    invoke-static {v0}, Lorg/apache/commons/lang/SystemUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 944
    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1115
    return-void
.end method

.method private static getJavaVersionAsFloat()F
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x0

    .line 1150
    sget-object v3, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1160
    .local v1, str:Ljava/lang/String;
    :goto_0
    return v2

    .line 1153
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    sget-object v3, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1154
    .restart local v1       #str:Ljava/lang/String;
    sget-object v3, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_1

    .line 1155
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1158
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static getJavaVersionAsInt()I
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v2, 0x0

    .line 1179
    sget-object v3, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1192
    .local v1, str:Ljava/lang/String;
    :goto_0
    return v2

    .line 1182
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    sget-object v3, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1183
    .restart local v1       #str:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1184
    sget-object v3, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v7, :cond_1

    .line 1185
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1190
    :goto_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1187
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static getJavaVersionMatches(Ljava/lang/String;)Z
    .locals 1
    .parameter "versionPrefix"

    .prologue
    .line 1220
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1221
    const/4 v0, 0x0

    .line 1223
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION_TRIMMED:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static getJavaVersionTrimmed()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1202
    sget-object v2, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1203
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1204
    sget-object v2, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1205
    .local v0, ch:C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    .line 1206
    sget-object v2, Lorg/apache/commons/lang/SystemUtils;->JAVA_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1210
    .end local v0           #ch:C
    :goto_1
    return-object v2

    .line 1203
    .restart local v0       #ch:C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1210
    .end local v0           #ch:C
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getOSMatches(Ljava/lang/String;)Z
    .locals 1
    .parameter "osNamePrefix"

    .prologue
    .line 1233
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_NAME:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1234
    const/4 v0, 0x0

    .line 1236
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/apache/commons/lang/SystemUtils;->OS_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static getOSMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "osNamePrefix"
    .parameter "osVersionPrefix"

    .prologue
    const/4 v0, 0x0

    .line 1247
    sget-object v1, Lorg/apache/commons/lang/SystemUtils;->OS_NAME:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/commons/lang/SystemUtils;->OS_VERSION:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1250
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lorg/apache/commons/lang/SystemUtils;->OS_NAME:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/commons/lang/SystemUtils;->OS_VERSION:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "property"

    .prologue
    .line 1266
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1273
    :goto_0
    return-object v1

    .line 1267
    :catch_0
    move-exception v0

    .line 1269
    .local v0, ex:Ljava/lang/SecurityException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Caught a SecurityException reading the system property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'; the SystemUtils property value will default to null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1273
    const/4 v1, 0x0

    goto :goto_0
.end method
