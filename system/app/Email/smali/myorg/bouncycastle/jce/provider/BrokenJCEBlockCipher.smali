.class public Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;
.super Ljava/lang/Object;
.source "BrokenJCEBlockCipher.java"

# interfaces
.implements Lmyorg/bouncycastle/jce/provider/BrokenPBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish;,
        Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithSHAAndDES2Key;,
        Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$OldPBEWithSHAAndDES3Key;,
        Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithSHAAndDES3Key;,
        Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES;,
        Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithMD5AndDES;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private ivLength:I

.field private pbeHash:I

.field private pbeIvSize:I

.field private pbeKeySize:I

.field private pbeType:I


# direct methods
.method protected constructor <init>(Lmyorg/bouncycastle/crypto/BlockCipher;IIII)V
    .locals 6
    .parameter "engine"
    .parameter "pbeType"
    .parameter "pbeHash"
    .parameter "pbeKeySize"
    .parameter "pbeIvSize"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v1, v0, v3

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v1, v0, v4

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 58
    iput v5, p0, Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeType:I

    .line 59
    iput v4, p0, Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeHash:I

    .line 63
    iput v3, p0, Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->ivLength:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 73
    new-instance v0, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lmyorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->cipher:Lmyorg/bouncycastle/crypto/BufferedBlockCipher;

    .line 75
    iput p2, p0, Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeType:I

    .line 76
    iput p3, p0, Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeHash:I

    .line 77
    iput p4, p0, Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeKeySize:I

    .line 78
    iput p5, p0, Lmyorg/bouncycastle/jce/provider/BrokenJCEBlockCipher;->pbeIvSize:I

    .line 79
    return-void
.end method
