.class public Lmyorg/bouncycastle/crypto/params/RC2Parameters;
.super Ljava/lang/Object;
.source "RC2Parameters.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private bits:I

.field private key:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 3
    .parameter "key"
    .parameter "bits"

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/params/RC2Parameters;->key:[B

    .line 16
    iput p2, p0, Lmyorg/bouncycastle/crypto/params/RC2Parameters;->bits:I

    .line 18
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/RC2Parameters;->key:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    return-void
.end method


# virtual methods
.method public getEffectiveKeyBits()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lmyorg/bouncycastle/crypto/params/RC2Parameters;->bits:I

    return v0
.end method

.method public getKey()[B
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/RC2Parameters;->key:[B

    return-object v0
.end method
