.class public Lorg/apache/commons/httpclient/auth/CredentialsNotAvailableException;
.super Lorg/apache/commons/httpclient/auth/AuthenticationException;
.source "CredentialsNotAvailableException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>()V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/httpclient/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    return-void
.end method
