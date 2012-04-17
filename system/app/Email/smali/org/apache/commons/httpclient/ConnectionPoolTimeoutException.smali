.class public Lorg/apache/commons/httpclient/ConnectionPoolTimeoutException;
.super Lorg/apache/commons/httpclient/ConnectTimeoutException;
.source "ConnectionPoolTimeoutException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/apache/commons/httpclient/ConnectTimeoutException;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/httpclient/ConnectTimeoutException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method
