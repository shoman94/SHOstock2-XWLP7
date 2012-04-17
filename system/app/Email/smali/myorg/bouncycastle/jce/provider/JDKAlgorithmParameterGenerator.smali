.class public abstract Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;
.super Ljava/security/AlgorithmParameterGeneratorSpi;
.source "JDKAlgorithmParameterGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$RC2;,
        Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DES;,
        Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$ElGamal;,
        Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$GOST3410;,
        Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DSA;,
        Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator$DH;
    }
.end annotation


# instance fields
.field protected random:Ljava/security/SecureRandom;

.field protected strength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/security/AlgorithmParameterGeneratorSpi;-><init>()V

    .line 29
    const/16 v0, 0x400

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    .line 218
    return-void
.end method


# virtual methods
.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 0
    .parameter "strength"
    .parameter "random"

    .prologue
    .line 32
    iput p1, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->strength:I

    .line 33
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKAlgorithmParameterGenerator;->random:Ljava/security/SecureRandom;

    .line 34
    return-void
.end method
