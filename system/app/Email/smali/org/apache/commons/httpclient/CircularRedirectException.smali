.class public Lorg/apache/commons/httpclient/CircularRedirectException;
.super Lorg/apache/commons/httpclient/RedirectException;
.source "CircularRedirectException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/apache/commons/httpclient/RedirectException;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/RedirectException;-><init>(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/httpclient/RedirectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    return-void
.end method
