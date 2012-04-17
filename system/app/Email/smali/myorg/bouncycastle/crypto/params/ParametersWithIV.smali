.class public Lmyorg/bouncycastle/crypto/params/ParametersWithIV;
.super Ljava/lang/Object;
.source "ParametersWithIV.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private iv:[B

.field private parameters:Lmyorg/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V
    .locals 2
    .parameter "parameters"
    .parameter "iv"

    .prologue
    .line 11
    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lmyorg/bouncycastle/crypto/CipherParameters;[BII)V

    .line 12
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/crypto/CipherParameters;[BII)V
    .locals 2
    .parameter "parameters"
    .parameter "iv"
    .parameter "ivOff"
    .parameter "ivLen"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-array v0, p4, [B

    iput-object v0, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->iv:[B

    .line 16
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->parameters:Lmyorg/bouncycastle/crypto/CipherParameters;

    .line 18
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->iv:[B

    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    return-void
.end method


# virtual methods
.method public getIV()[B
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->iv:[B

    return-object v0
.end method

.method public getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithIV;->parameters:Lmyorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method
