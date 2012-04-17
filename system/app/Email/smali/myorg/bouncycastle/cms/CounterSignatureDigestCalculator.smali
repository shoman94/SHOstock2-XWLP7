.class Lmyorg/bouncycastle/cms/CounterSignatureDigestCalculator;
.super Ljava/lang/Object;
.source "CounterSignatureDigestCalculator.java"

# interfaces
.implements Lmyorg/bouncycastle/cms/DigestCalculator;


# instance fields
.field private final alg:Ljava/lang/String;

.field private final data:[B

.field private final provider:Ljava/security/Provider;


# virtual methods
.method public getDigest()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 20
    sget-object v1, Lmyorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lmyorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v2, p0, Lmyorg/bouncycastle/cms/CounterSignatureDigestCalculator;->alg:Ljava/lang/String;

    iget-object v3, p0, Lmyorg/bouncycastle/cms/CounterSignatureDigestCalculator;->provider:Ljava/security/Provider;

    invoke-virtual {v1, v2, v3}, Lmyorg/bouncycastle/cms/CMSSignedHelper;->getDigestInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 22
    .local v0, digest:Ljava/security/MessageDigest;
    iget-object v1, p0, Lmyorg/bouncycastle/cms/CounterSignatureDigestCalculator;->data:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method
