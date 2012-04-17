.class public Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;
.super Ljava/lang/Object;
.source "DefaultHttpMethodRetryHandler.java"

# interfaces
.implements Lorg/apache/commons/httpclient/HttpMethodRetryHandler;


# static fields
.field private static SSL_HANDSHAKE_EXCEPTION:Ljava/lang/Class;


# instance fields
.field private requestSentRetryEnabled:Z

.field private retryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->SSL_HANDSHAKE_EXCEPTION:Ljava/lang/Class;

    .line 84
    :try_start_0
    const-string v0, "javax.net.ssl.SSLHandshakeException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->SSL_HANDSHAKE_EXCEPTION:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;-><init>(IZ)V

    .line 130
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .parameter "retryCount"
    .parameter "requestSentRetryEnabled"

    .prologue
    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->retryCount:I

    .line 117
    iput-boolean p2, p0, Lorg/apache/commons/httpclient/DefaultHttpMethodRetryHandler;->requestSentRetryEnabled:Z

    .line 119
    return-void
.end method
