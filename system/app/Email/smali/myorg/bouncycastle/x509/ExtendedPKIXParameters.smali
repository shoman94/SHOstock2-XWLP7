.class public Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;
.super Ljava/security/cert/PKIXParameters;
.source "ExtendedPKIXParameters.java"


# instance fields
.field private additionalLocationsEnabled:Z

.field private additionalStores:Ljava/util/List;

.field private attrCertCheckers:Ljava/util/Set;

.field private necessaryACAttributes:Ljava/util/Set;

.field private prohibitedACAttributes:Ljava/util/Set;

.field private selector:Lmyorg/bouncycastle/util/Selector;

.field private stores:Ljava/util/List;

.field private trustedACIssuers:Ljava/util/Set;

.field private useDeltas:Z

.field private validityModel:I


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .parameter "trustAnchors"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 152
    iput v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    .line 154
    iput-boolean v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    .line 65
    return-void
.end method

.method public static getInstance(Ljava/security/cert/PKIXParameters;)Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;
    .locals 4
    .parameter "pkixParams"

    .prologue
    .line 77
    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .local v1, params:Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;
    invoke-virtual {v1, p0}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    .line 83
    return-object v1

    .line 78
    .end local v1           #params:Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public addAdditionalStore(Lmyorg/bouncycastle/util/Store;)V
    .locals 1
    .parameter "store"

    .prologue
    .line 258
    if-eqz p1, :cond_0

    .line 259
    iget-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 308
    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .local v1, params:Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;
    invoke-virtual {v1, p0}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    .line 314
    return-object v1

    .line 309
    .end local v1           #params:Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAdditionalStores()Ljava/util/List;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAttrCertCheckers()Ljava/util/Set;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNecessaryACAttributes()Ljava/util/Set;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProhibitedACAttributes()Ljava/util/Set;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getStores()Ljava/util/List;
    .locals 2

    .prologue
    .line 293
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargetConstraints()Lmyorg/bouncycastle/util/Selector;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lmyorg/bouncycastle/util/Selector;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lmyorg/bouncycastle/util/Selector;

    invoke-interface {v0}, Lmyorg/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/util/Selector;

    .line 358
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrustedACIssuers()Ljava/util/Set;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getValidityModel()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    return v0
.end method

.method public isAdditionalLocationsEnabled()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    return v0
.end method

.method public isUseDeltasEnabled()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    return v0
.end method

.method public setCertStores(Ljava/util/List;)V
    .locals 2
    .parameter "stores"

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 192
    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CertStore;

    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    goto :goto_0

    .line 196
    .end local v0           #it:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected setParams(Ljava/security/cert/PKIXParameters;)V
    .locals 4
    .parameter "params"

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->setDate(Ljava/util/Date;)V

    .line 95
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    .line 96
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->setCertStores(Ljava/util/List;)V

    .line 97
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v2

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->setAnyPolicyInhibited(Z)V

    .line 98
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v2

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->setExplicitPolicyRequired(Z)V

    .line 99
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v2

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->setPolicyMappingInhibited(Z)V

    .line 100
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v2

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->setRevocationEnabled(Z)V

    .line 101
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->setInitialPolicies(Ljava/util/Set;)V

    .line 102
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    move-result v2

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->setPolicyQualifiersRejected(Z)V

    .line 103
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->setSigProvider(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 106
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->setTrustAnchors(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    instance-of v2, p1, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 112
    check-cast v0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;

    .line 113
    .local v0, _params:Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;
    iget v2, v0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    iput v2, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->validityModel:I

    .line 114
    iget-boolean v2, v0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    iput-boolean v2, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->useDeltas:Z

    .line 115
    iget-boolean v2, v0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    iput-boolean v2, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->additionalLocationsEnabled:Z

    .line 116
    iget-object v2, v0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lmyorg/bouncycastle/util/Selector;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lmyorg/bouncycastle/util/Selector;

    .line 117
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->stores:Ljava/util/List;

    .line 118
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->additionalStores:Ljava/util/List;

    .line 119
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->trustedACIssuers:Ljava/util/Set;

    .line 120
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->prohibitedACAttributes:Ljava/util/Set;

    .line 121
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->necessaryACAttributes:Ljava/util/Set;

    .line 122
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->attrCertCheckers:Ljava/util/Set;

    .line 124
    .end local v0           #_params:Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;
    :cond_0
    return-void

    .line 107
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #_params:Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;
    :cond_1
    iget-object v2, v0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lmyorg/bouncycastle/util/Selector;

    invoke-interface {v2}, Lmyorg/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/util/Selector;

    goto :goto_0
.end method

.method public setTargetCertConstraints(Ljava/security/cert/CertSelector;)V
    .locals 1
    .parameter "selector"

    .prologue
    .line 405
    invoke-super {p0, p1}, Ljava/security/cert/PKIXParameters;->setTargetCertConstraints(Ljava/security/cert/CertSelector;)V

    .line 406
    if-eqz p1, :cond_0

    .line 407
    check-cast p1, Ljava/security/cert/X509CertSelector;

    .end local p1
    invoke-static {p1}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;->getInstance(Ljava/security/cert/X509CertSelector;)Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lmyorg/bouncycastle/util/Selector;

    .line 411
    :goto_0
    return-void

    .line 409
    .restart local p1
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lmyorg/bouncycastle/util/Selector;

    goto :goto_0
.end method

.method public setTargetConstraints(Lmyorg/bouncycastle/util/Selector;)V
    .locals 1
    .parameter "selector"

    .prologue
    .line 381
    if-eqz p1, :cond_0

    .line 382
    invoke-interface {p1}, Lmyorg/bouncycastle/util/Selector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/util/Selector;

    iput-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lmyorg/bouncycastle/util/Selector;

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->selector:Lmyorg/bouncycastle/util/Selector;

    goto :goto_0
.end method
