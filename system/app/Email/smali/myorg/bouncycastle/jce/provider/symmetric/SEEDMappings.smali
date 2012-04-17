.class public Lmyorg/bouncycastle/jce/provider/symmetric/SEEDMappings;
.super Ljava/util/HashMap;
.source "SEEDMappings.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 10
    const-string v0, "AlgorithmParameters.SEED"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.SEED$AlgParams"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/SEEDMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.AlgorithmParameters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_seedCBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SEED"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/SEEDMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string v0, "AlgorithmParameterGenerator.SEED"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.SEED$AlgParamGen"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/SEEDMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.AlgorithmParameterGenerator."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_seedCBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SEED"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/SEEDMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v0, "Cipher.SEED"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.SEED$ECB"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/SEEDMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_seedCBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.SEED$CBC"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/SEEDMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v0, "Cipher.SEEDWRAP"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.SEED$Wrap"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/SEEDMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alg.Alias.Cipher."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_npki_app_cmsSeed_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SEEDWRAP"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/SEEDMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v0, "KeyGenerator.SEED"

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.SEED$KeyGen"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/SEEDMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyGenerator."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_seedCBC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.SEED$KeyGen"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/SEEDMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyGenerator."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmyorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_npki_app_cmsSeed_wrap:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "myorg.bouncycastle.jce.provider.symmetric.SEED$KeyGen"

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/jce/provider/symmetric/SEEDMappings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method
