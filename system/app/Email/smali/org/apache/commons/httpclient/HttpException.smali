.class public Lorg/apache/commons/httpclient/HttpException;
.super Ljava/io/IOException;
.source "HttpException.java"


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private reason:Ljava/lang/String;

.field private reasonCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 353
    const/16 v0, 0xc8

    iput v0, p0, Lorg/apache/commons/httpclient/HttpException;->reasonCode:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 353
    const/16 v0, 0xc8

    iput v0, p0, Lorg/apache/commons/httpclient/HttpException;->reasonCode:I

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 353
    const/16 v0, 0xc8

    iput v0, p0, Lorg/apache/commons/httpclient/HttpException;->reasonCode:I

    .line 119
    iput-object p2, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    .line 126
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v1

    .line 130
    const-class v1, Ljava/lang/Throwable;

    const-string v2, "initCause"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 132
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 170
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/commons/httpclient/HttpException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 172
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 196
    const/4 v2, 0x0

    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    .line 198
    .local v1, paramsClasses:[Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getStackTrace"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 200
    invoke-super {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v1           #paramsClasses:[Ljava/lang/Class;
    :cond_0
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 208
    .local v0, ex:Ljava/lang/Exception;
    invoke-super {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 210
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 216
    const-string v2, "Caused by: "

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 248
    const/4 v2, 0x0

    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    .line 250
    .local v1, paramsClasses:[Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getStackTrace"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 252
    invoke-super {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v1           #paramsClasses:[Ljava/lang/Class;
    :cond_0
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 260
    .local v0, ex:Ljava/lang/Exception;
    invoke-super {p0, p1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 262
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 268
    const-string v2, "Caused by: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lorg/apache/commons/httpclient/HttpException;->cause:Ljava/lang/Throwable;

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method
