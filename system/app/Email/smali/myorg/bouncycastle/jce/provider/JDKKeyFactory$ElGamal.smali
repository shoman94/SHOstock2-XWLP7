.class public Lmyorg/bouncycastle/jce/provider/JDKKeyFactory$ElGamal;
.super Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;
.source "JDKKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElGamal"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 322
    invoke-direct {p0}, Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;-><init>()V

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;->elGamalFactory:Z

    .line 324
    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 1
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 327
    instance-of v0, p1, Lmyorg/bouncycastle/jce/spec/ElGamalPrivateKeySpec;

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;

    check-cast p1, Lmyorg/bouncycastle/jce/spec/ElGamalPrivateKeySpec;

    .end local p1
    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;-><init>(Lmyorg/bouncycastle/jce/spec/ElGamalPrivateKeySpec;)V

    .line 333
    :goto_0
    return-object v0

    .line 329
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljavax/crypto/spec/DHPrivateKeySpec;

    if-eqz v0, :cond_1

    .line 330
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;

    check-cast p1, Ljavax/crypto/spec/DHPrivateKeySpec;

    .end local p1
    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JCEElGamalPrivateKey;-><init>(Ljavax/crypto/spec/DHPrivateKeySpec;)V

    goto :goto_0

    .line 333
    .restart local p1
    :cond_1
    invoke-super {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    goto :goto_0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 1
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 337
    instance-of v0, p1, Lmyorg/bouncycastle/jce/spec/ElGamalPublicKeySpec;

    if-eqz v0, :cond_0

    .line 338
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;

    check-cast p1, Lmyorg/bouncycastle/jce/spec/ElGamalPublicKeySpec;

    .end local p1
    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;-><init>(Lmyorg/bouncycastle/jce/spec/ElGamalPublicKeySpec;)V

    .line 343
    :goto_0
    return-object v0

    .line 339
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljavax/crypto/spec/DHPublicKeySpec;

    if-eqz v0, :cond_1

    .line 340
    new-instance v0, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;

    check-cast p1, Ljavax/crypto/spec/DHPublicKeySpec;

    .end local p1
    invoke-direct {v0, p1}, Lmyorg/bouncycastle/jce/provider/JCEElGamalPublicKey;-><init>(Ljavax/crypto/spec/DHPublicKeySpec;)V

    goto :goto_0

    .line 343
    .restart local p1
    :cond_1
    invoke-super {p0, p1}, Lmyorg/bouncycastle/jce/provider/JDKKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_0
.end method
