.class public Lcom/android/emailcommon/utility/FileLogger;
.super Ljava/lang/Object;
.source "FileLogger.java"


# static fields
.field private static LOGGER:Lcom/android/emailcommon/utility/FileLogger;

.field public static LOG_FILE_NAME:Ljava/lang/String;

.field private static sLogWriter:Ljava/io/FileWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/android/emailcommon/utility/FileLogger;->LOGGER:Lcom/android/emailcommon/utility/FileLogger;

    .line 30
    sput-object v0, Lcom/android/emailcommon/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/emaillog.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/FileLogger;->LOG_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    sget-object v1, Lcom/android/emailcommon/utility/FileLogger;->LOG_FILE_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/emailcommon/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized close()V
    .locals 2

    .prologue
    .line 49
    const-class v1, Lcom/android/emailcommon/utility/FileLogger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/emailcommon/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 51
    :try_start_1
    sget-object v0, Lcom/android/emailcommon/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/android/emailcommon/utility/FileLogger;->sLogWriter:Ljava/io/FileWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :cond_0
    monitor-exit v1

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method
