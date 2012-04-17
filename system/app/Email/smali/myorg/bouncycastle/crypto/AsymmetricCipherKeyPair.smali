.class public Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
.super Ljava/lang/Object;
.source "AsymmetricCipherKeyPair.java"


# instance fields
.field private privateParam:Lmyorg/bouncycastle/crypto/CipherParameters;

.field private publicParam:Lmyorg/bouncycastle/crypto/CipherParameters;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/crypto/CipherParameters;Lmyorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0
    .parameter "publicParam"
    .parameter "privateParam"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lmyorg/bouncycastle/crypto/CipherParameters;

    .line 19
    iput-object p2, p0, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lmyorg/bouncycastle/crypto/CipherParameters;

    .line 20
    return-void
.end method


# virtual methods
.method public getPrivate()Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->privateParam:Lmyorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method

.method public getPublic()Lmyorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmyorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->publicParam:Lmyorg/bouncycastle/crypto/CipherParameters;

    return-object v0
.end method
