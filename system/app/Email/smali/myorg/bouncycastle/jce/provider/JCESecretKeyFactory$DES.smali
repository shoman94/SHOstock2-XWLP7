.class public Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory$DES;
.super Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;
.source "JCESecretKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "DES"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;-><init>(Ljava/lang/String;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)V

    .line 181
    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 4
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 184
    instance-of v1, p1, Ljavax/crypto/spec/DESKeySpec;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 185
    check-cast v0, Ljavax/crypto/spec/DESKeySpec;

    .line 186
    .local v0, desKeySpec:Ljavax/crypto/spec/DESKeySpec;
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DESKeySpec;->getKey()[B

    move-result-object v2

    const-string v3, "DES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 189
    .end local v0           #desKeySpec:Ljavax/crypto/spec/DESKeySpec;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lmyorg/bouncycastle/jce/provider/JCESecretKeyFactory;->engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    goto :goto_0
.end method
