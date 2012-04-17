.class public Lmyorg/bouncycastle/crypto/tls/TlsRuntimeException;
.super Ljava/lang/RuntimeException;
.source "TlsRuntimeException.java"


# instance fields
.field e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "e"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 10
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/tls/TlsRuntimeException;->e:Ljava/lang/Throwable;

    .line 11
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/tls/TlsRuntimeException;->e:Ljava/lang/Throwable;

    return-object v0
.end method
