.class public Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;
.super Ljava/lang/Object;
.source "ParametersWithRandom.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private parameters:Lmyorg/bouncycastle/crypto/CipherParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V
    .locals 0
    .parameter "parameters"
    .parameter "random"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->random:Ljava/security/SecureRandom;

    .line 14
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->parameters:Lmyorg/bouncycastle/crypto/CipherParameters;

    .line 15
    return-void
.end method


# virtual methods
.method public getParameters()Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->parameters:Lmyorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getRandom()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/params/ParametersWithRandom;->random:Ljava/security/SecureRandom;

    return-object v0
.end method
