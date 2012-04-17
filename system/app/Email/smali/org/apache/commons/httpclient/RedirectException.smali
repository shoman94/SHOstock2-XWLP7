.class public Lorg/apache/commons/httpclient/RedirectException;
.super Lorg/apache/commons/httpclient/ProtocolException;
.source "RedirectException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/apache/commons/httpclient/ProtocolException;-><init>()V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/httpclient/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    return-void
.end method
