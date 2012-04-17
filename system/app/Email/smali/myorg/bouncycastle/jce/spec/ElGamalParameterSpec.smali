.class public Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;
.super Ljava/lang/Object;
.source "ElGamalParameterSpec.java"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .parameter "p"
    .parameter "g"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->p:Ljava/math/BigInteger;

    .line 20
    iput-object p2, p0, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->g:Ljava/math/BigInteger;

    .line 21
    return-void
.end method


# virtual methods
.method public getG()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lmyorg/bouncycastle/jce/spec/ElGamalParameterSpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method
