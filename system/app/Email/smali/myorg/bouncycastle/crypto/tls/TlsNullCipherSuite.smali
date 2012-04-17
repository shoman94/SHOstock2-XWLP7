.class public Lmyorg/bouncycastle/crypto/tls/TlsNullCipherSuite;
.super Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;
.source "TlsNullCipherSuite.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;-><init>()V

    return-void
.end method


# virtual methods
.method protected decodeCiphertext(S[BIILmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;)[B
    .locals 2
    .parameter "type"
    .parameter "plaintext"
    .parameter "offset"
    .parameter "len"
    .parameter "handler"

    .prologue
    .line 21
    new-array v0, p4, [B

    .line 22
    .local v0, result:[B
    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    return-object v0
.end method

.method protected encodePlaintext(S[BII)[B
    .locals 2
    .parameter "type"
    .parameter "plaintext"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 14
    new-array v0, p4, [B

    .line 15
    .local v0, result:[B
    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    return-object v0
.end method

.method protected getKeyExchangeAlgorithm()S
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method protected init([B[B[B)V
    .locals 2
    .parameter "ms"
    .parameter "cr"
    .parameter "sr"

    .prologue
    .line 10
    new-instance v0, Lmyorg/bouncycastle/crypto/tls/TlsRuntimeException;

    const-string v1, "Sorry, init of TLS_NULL_WITH_NULL_NULL is forbidden"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/tls/TlsRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
