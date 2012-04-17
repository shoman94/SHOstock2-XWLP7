.class public Lmyorg/bouncycastle/jce/provider/symmetric/CAST5Mappings;
.super Ljava/util/HashMap;
.source "CAST5Mappings.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 8
    const-string v0, "AlgorithmParameters.CAST5"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.CAST5$AlgParams"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string v0, "Alg.Alias.AlgorithmParameters.1.2.840.113533.7.66.10"

    const-string v1, "CAST5"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string v0, "AlgorithmParameterGenerator.CAST5"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.CAST5$AlgParamGen"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string v0, "Alg.Alias.AlgorithmParameterGenerator.1.2.840.113533.7.66.10"

    const-string v1, "CAST5"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v0, "Cipher.CAST5"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.CAST5$ECB"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v0, "Cipher.1.2.840.113533.7.66.10"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.CAST5$CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v0, "KeyGenerator.CAST5"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.CAST5$KeyGen"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v0, "Alg.Alias.KeyGenerator.1.2.840.113533.7.66.10"

    const-string v1, "CAST5"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/CAST5Mappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-void
.end method
