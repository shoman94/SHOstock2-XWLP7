.class public Lmyorg/bouncycastle/crypto/params/IESParameters;
.super Ljava/lang/Object;
.source "IESParameters.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private derivation:[B

.field private encoding:[B

.field private macKeySize:I


# direct methods
.method public constructor <init>([B[BI)V
    .locals 0
    .parameter "derivation"
    .parameter "encoding"
    .parameter "macKeySize"

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/IESParameters;->derivation:[B

    .line 21
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/IESParameters;->encoding:[B

    .line 22
    iput p3, p0, Lmyorg/bouncycastle/crypto/params/IESParameters;->macKeySize:I

    .line 23
    return-void
.end method


# virtual methods
.method public getDerivationV()[B
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/IESParameters;->derivation:[B

    return-object v0
.end method

.method public getEncodingV()[B
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/IESParameters;->encoding:[B

    return-object v0
.end method

.method public getMacKeySize()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lmyorg/bouncycastle/crypto/params/IESParameters;->macKeySize:I

    return v0
.end method
