.class public Lmyorg/bouncycastle/jce/provider/MultiCertStoreSpi;
.super Ljava/security/cert/CertStoreSpi;
.source "MultiCertStoreSpi.java"


# instance fields
.field private params:Lmyorg/bouncycastle/jce/MultiCertStoreParameters;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertStoreParameters;)V
    .locals 3
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/security/cert/CertStoreSpi;-><init>(Ljava/security/cert/CertStoreParameters;)V

    .line 25
    instance-of v0, p1, Lmyorg/bouncycastle/jce/MultiCertStoreParameters;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "myorg.bouncycastle.jce.provider.MultiCertStoreSpi: parameter must be a MultiCertStoreParameters object\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_0
    check-cast p1, Lmyorg/bouncycastle/jce/MultiCertStoreParameters;

    .end local p1
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/MultiCertStoreSpi;->params:Lmyorg/bouncycastle/jce/MultiCertStoreParameters;

    .line 32
    return-void
.end method


# virtual methods
.method public engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .locals 6
    .parameter "crlSelector"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/MultiCertStoreSpi;->params:Lmyorg/bouncycastle/jce/MultiCertStoreParameters;

    invoke-virtual {v5}, Lmyorg/bouncycastle/jce/MultiCertStoreParameters;->getSearchAllStores()Z

    move-result v3

    .line 55
    .local v3, searchAllStores:Z
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/MultiCertStoreSpi;->params:Lmyorg/bouncycastle/jce/MultiCertStoreParameters;

    invoke-virtual {v5}, Lmyorg/bouncycastle/jce/MultiCertStoreParameters;->getCertStores()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 56
    .local v2, iter:Ljava/util/Iterator;
    if-eqz v3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, allCRLs:Ljava/util/List;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/CertStore;

    .line 60
    .local v4, store:Ljava/security/cert/CertStore;
    invoke-virtual {v4, p1}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v1

    .line 62
    .local v1, crls:Ljava/util/Collection;
    if-eqz v3, :cond_2

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 56
    .end local v0           #allCRLs:Ljava/util/List;
    .end local v1           #crls:Ljava/util/Collection;
    .end local v4           #store:Ljava/security/cert/CertStore;
    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 64
    .restart local v0       #allCRLs:Ljava/util/List;
    .restart local v1       #crls:Ljava/util/Collection;
    .restart local v4       #store:Ljava/security/cert/CertStore;
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 69
    .end local v1           #crls:Ljava/util/Collection;
    .end local v4           #store:Ljava/security/cert/CertStore;
    :goto_1
    return-object v1

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .locals 6
    .parameter "certSelector"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/MultiCertStoreSpi;->params:Lmyorg/bouncycastle/jce/MultiCertStoreParameters;

    invoke-virtual {v5}, Lmyorg/bouncycastle/jce/MultiCertStoreParameters;->getSearchAllStores()Z

    move-result v3

    .line 36
    .local v3, searchAllStores:Z
    iget-object v5, p0, Lmyorg/bouncycastle/jce/provider/MultiCertStoreSpi;->params:Lmyorg/bouncycastle/jce/MultiCertStoreParameters;

    invoke-virtual {v5}, Lmyorg/bouncycastle/jce/MultiCertStoreParameters;->getCertStores()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 37
    .local v2, iter:Ljava/util/Iterator;
    if-eqz v3, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v0, allCerts:Ljava/util/List;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/CertStore;

    .line 41
    .local v4, store:Ljava/security/cert/CertStore;
    invoke-virtual {v4, p1}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v1

    .line 43
    .local v1, certs:Ljava/util/Collection;
    if-eqz v3, :cond_2

    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 37
    .end local v0           #allCerts:Ljava/util/List;
    .end local v1           #certs:Ljava/util/Collection;
    .end local v4           #store:Ljava/security/cert/CertStore;
    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 45
    .restart local v0       #allCerts:Ljava/util/List;
    .restart local v1       #certs:Ljava/util/Collection;
    .restart local v4       #store:Ljava/security/cert/CertStore;
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 50
    .end local v1           #certs:Ljava/util/Collection;
    .end local v4           #store:Ljava/security/cert/CertStore;
    :goto_1
    return-object v1

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method
