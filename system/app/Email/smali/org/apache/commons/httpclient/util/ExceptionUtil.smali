.class public Lorg/apache/commons/httpclient/util/ExceptionUtil;
.super Ljava/lang/Object;
.source "ExceptionUtil.java"


# static fields
.field private static final INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->LOG:Lorg/apache/commons/logging/Log;

    .line 88
    invoke-static {}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->getInitCauseMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    .line 95
    invoke-static {}, Lorg/apache/commons/httpclient/util/ExceptionUtil;->SocketTimeoutExceptionClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/util/ExceptionUtil;->SOCKET_TIMEOUT_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SocketTimeoutExceptionClass()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 136
    :try_start_0
    const-string v1, "java.net.SocketTimeoutException"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 140
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_0
    return-object v1

    .line 138
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 140
    .restart local v0       #e:Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getInitCauseMethod()Ljava/lang/reflect/Method;
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v1

    .line 114
    const-class v1, Ljava/lang/Throwable;

    const-string v2, "initCause"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 118
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "throwable"
    .parameter "cause"

    .prologue
    .line 156
    sget-object v1, Lorg/apache/commons/httpclient/util/ExceptionUtil;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 160
    :try_start_0
    sget-object v1, Lorg/apache/commons/httpclient/util/ExceptionUtil;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lorg/apache/commons/httpclient/util/ExceptionUtil;->LOG:Lorg/apache/commons/logging/Log;

    const-string v2, "Exception invoking Throwable.initCause"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
