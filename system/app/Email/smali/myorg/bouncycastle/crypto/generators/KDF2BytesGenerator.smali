.class public Lmyorg/bouncycastle/crypto/generators/KDF2BytesGenerator;
.super Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;
.source "KDF2BytesGenerator.java"


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .parameter "digest"

    .prologue
    .line 19
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lmyorg/bouncycastle/crypto/generators/BaseKDFBytesGenerator;-><init>(ILmyorg/bouncycastle/crypto/Digest;)V

    .line 20
    return-void
.end method
