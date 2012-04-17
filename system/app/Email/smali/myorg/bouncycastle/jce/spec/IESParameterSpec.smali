.class public Lmyorg/bouncycastle/jce/spec/IESParameterSpec;
.super Ljava/lang/Object;
.source "IESParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private derivation:[B

.field private encoding:[B

.field private macKeySize:I


# direct methods
.method public constructor <init>([B[BI)V
    .locals 3
    .parameter "derivation"
    .parameter "encoding"
    .parameter "macKeySize"

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/jce/spec/IESParameterSpec;->derivation:[B

    .line 16
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/IESParameterSpec;->derivation:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lmyorg/bouncycastle/jce/spec/IESParameterSpec;->encoding:[B

    .line 19
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/IESParameterSpec;->encoding:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iput p3, p0, Lmyorg/bouncycastle/jce/spec/IESParameterSpec;->macKeySize:I

    .line 22
    return-void
.end method


# virtual methods
.method public getDerivationV()[B
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/IESParameterSpec;->derivation:[B

    return-object v0
.end method

.method public getEncodingV()[B
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/IESParameterSpec;->encoding:[B

    return-object v0
.end method

.method public getMacKeySize()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lmyorg/bouncycastle/jce/spec/IESParameterSpec;->macKeySize:I

    return v0
.end method
