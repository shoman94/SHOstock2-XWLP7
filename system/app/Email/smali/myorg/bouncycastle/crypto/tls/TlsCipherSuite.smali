.class public abstract Lmyorg/bouncycastle/crypto/tls/TlsCipherSuite;
.super Ljava/lang/Object;
.source "TlsCipherSuite.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract decodeCiphertext(S[BIILmyorg/bouncycastle/crypto/tls/TlsProtocolHandler;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract encodePlaintext(S[BII)[B
.end method

.method protected abstract getKeyExchangeAlgorithm()S
.end method

.method protected abstract init([B[B[B)V
.end method
