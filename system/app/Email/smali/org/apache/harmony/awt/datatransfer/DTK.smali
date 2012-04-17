.class public abstract Lorg/apache/harmony/awt/datatransfer/DTK;
.super Ljava/lang/Object;
.source "DTK.java"


# instance fields
.field protected final dataTransferThread:Lorg/apache/harmony/awt/datatransfer/DataTransferThread;

.field private nativeClipboard:Lorg/apache/harmony/awt/datatransfer/NativeClipboard;

.field private nativeSelection:Lorg/apache/harmony/awt/datatransfer/NativeClipboard;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DTK;->nativeClipboard:Lorg/apache/harmony/awt/datatransfer/NativeClipboard;

    .line 43
    iput-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DTK;->nativeSelection:Lorg/apache/harmony/awt/datatransfer/NativeClipboard;

    .line 50
    new-instance v0, Lorg/apache/harmony/awt/datatransfer/DataTransferThread;

    invoke-direct {v0, p0}, Lorg/apache/harmony/awt/datatransfer/DataTransferThread;-><init>(Lorg/apache/harmony/awt/datatransfer/DTK;)V

    iput-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DTK;->dataTransferThread:Lorg/apache/harmony/awt/datatransfer/DataTransferThread;

    .line 51
    iget-object v0, p0, Lorg/apache/harmony/awt/datatransfer/DTK;->dataTransferThread:Lorg/apache/harmony/awt/datatransfer/DataTransferThread;

    invoke-virtual {v0}, Lorg/apache/harmony/awt/datatransfer/DataTransferThread;->start()V

    .line 52
    return-void
.end method

.method private static createDTK()Lorg/apache/harmony/awt/datatransfer/DTK;
    .locals 5

    .prologue
    .line 133
    invoke-static {}, Lorg/apache/harmony/misc/SystemUtils;->getOS()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 142
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "awt.4E"

    invoke-static {v4}, Lorg/apache/harmony/awt/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 135
    :pswitch_0
    const-string v2, "org.apache.harmony.awt.datatransfer.windows.WinDTK"

    .line 146
    .local v2, name:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/awt/datatransfer/DTK;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .local v0, dtk:Lorg/apache/harmony/awt/datatransfer/DTK;
    return-object v0

    .line 138
    .end local v0           #dtk:Lorg/apache/harmony/awt/datatransfer/DTK;
    .end local v2           #name:Ljava/lang/String;
    :pswitch_1
    const-string v2, "org.apache.harmony.awt.datatransfer.linux.LinuxDTK"

    .line 139
    .restart local v2       #name:Ljava/lang/String;
    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;
    .locals 3

    .prologue
    .line 57
    invoke-static {}, Lorg/apache/harmony/awt/ContextStorage;->getContextLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 58
    :try_start_0
    invoke-static {}, Lorg/apache/harmony/awt/ContextStorage;->shutdownPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    monitor-exit v2

    const/4 v0, 0x0

    .line 69
    .local v0, instance:Lorg/apache/harmony/awt/datatransfer/DTK;
    :goto_0
    return-object v0

    .line 62
    .end local v0           #instance:Lorg/apache/harmony/awt/datatransfer/DTK;
    :cond_0
    invoke-static {}, Lorg/apache/harmony/awt/ContextStorage;->getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object v0

    .line 64
    .restart local v0       #instance:Lorg/apache/harmony/awt/datatransfer/DTK;
    if-nez v0, :cond_1

    .line 65
    invoke-static {}, Lorg/apache/harmony/awt/datatransfer/DTK;->createDTK()Lorg/apache/harmony/awt/datatransfer/DTK;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lorg/apache/harmony/awt/ContextStorage;->setDTK(Lorg/apache/harmony/awt/datatransfer/DTK;)V

    .line 69
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getDefaultCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, "unicode"

    return-object v0
.end method

.method public abstract initDragAndDrop()V
.end method

.method public abstract runEventLoop()V
.end method
