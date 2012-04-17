.class public Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;
.super Ljava/lang/Object;
.source "ParametersWithSBox.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private parameters:Lmyorg/bouncycastle/crypto/CipherParameters;

.field private sBox:[B


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/CipherParameters;[B)V
    .locals 0
    .parameter "parameters"
    .parameter "sBox"

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;->parameters:Lmyorg/bouncycastle/crypto/CipherParameters;

    .line 12
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;->sBox:[B

    .line 13
    return-void
.end method


# virtual methods
.method public getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;->parameters:Lmyorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getSBox()[B
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithSBox;->sBox:[B

    return-object v0
.end method
