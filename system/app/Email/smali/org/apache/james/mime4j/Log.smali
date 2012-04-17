.class public Lorg/apache/james/mime4j/Log;
.super Ljava/lang/Object;
.source "Log.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter "mClazz"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private static toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .parameter "o"
    .parameter "t"

    .prologue
    .line 113
    if-nez p0, :cond_0

    const-string v0, "(null)"

    .line 114
    .local v0, m:Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    .line 117
    .end local v0           #m:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 113
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    .restart local v0       #m:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/apache/james/mime4j/Log;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v0, "Email"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public error(Ljava/lang/Object;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 97
    const-string v0, "Email"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/apache/james/mime4j/Log;->isInfoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    const-string v0, "Email"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 89
    const-string v0, "Email"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "message"
    .parameter "t"

    .prologue
    .line 93
    const-string v0, "Email"

    invoke-static {p1, p2}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method
