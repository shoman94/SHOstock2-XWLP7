.class public Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;
.super Ljava/util/HashMap;
.source "IDEAMappings.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 8
    const-string v0, "AlgorithmParameterGenerator.IDEA"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$AlgParamGen"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-string v0, "AlgorithmParameterGenerator.1.3.6.1.4.1.188.7.1.1.2"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$AlgParamGen"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string v0, "AlgorithmParameters.IDEA"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$AlgParams"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v0, "AlgorithmParameters.1.3.6.1.4.1.188.7.1.1.2"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$AlgParams"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDIDEA"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDIDEA"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDIDEA-CBC"

    const-string v1, "PKCS12PBE"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v0, "Cipher.IDEA"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$ECB"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v0, "Cipher.1.3.6.1.4.1.188.7.1.1.2"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v0, "Cipher.PBEWITHSHAANDIDEA-CBC"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$PBEWithSHAAndIDEA"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v0, "KeyGenerator.IDEA"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$KeyGen"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v0, "KeyGenerator.1.3.6.1.4.1.188.7.1.1.2"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$KeyGen"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v0, "SecretKeyFactory.PBEWITHSHAANDIDEA-CBC"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$PBEWithSHAAndIDEAKeyGen"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "Mac.IDEAMAC"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$Mac"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v0, "Alg.Alias.Mac.IDEA"

    const-string v1, "IDEAMAC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v0, "Mac.IDEAMAC/CFB8"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.IDEA$CFB8Mac"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "Alg.Alias.Mac.IDEA/CFB8"

    const-string v1, "IDEAMAC/CFB8"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/IDEAMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method
