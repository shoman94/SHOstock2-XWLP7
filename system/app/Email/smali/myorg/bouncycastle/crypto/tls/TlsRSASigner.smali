.class Lmyorg/bouncycastle/crypto/tls/TlsRSASigner;
.super Lmyorg/bouncycastle/crypto/signers/GenericSigner;
.source "TlsRSASigner.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;

    new-instance v1, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/crypto/encodings/PKCS1Encoding;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;)V

    new-instance v1, Lmyorg/bouncycastle/crypto/tls/CombinedHash;

    invoke-direct {v1}, Lmyorg/bouncycastle/crypto/tls/CombinedHash;-><init>()V

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/crypto/signers/GenericSigner;-><init>(Lmyorg/bouncycastle/crypto/AsymmetricBlockCipher;Lmyorg/bouncycastle/crypto/Digest;)V

    .line 11
    return-void
.end method
