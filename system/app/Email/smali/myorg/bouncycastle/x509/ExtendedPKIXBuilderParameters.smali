.class public Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;
.super Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;
.source "ExtendedPKIXBuilderParameters.java"


# instance fields
.field private excludedCerts:Ljava/util/Set;

.field private maxPathLength:I


# direct methods
.method public constructor <init>(Ljava/util/Set;Lmyorg/bouncycastle/util/Selector;)V
    .locals 1
    .parameter "trustAnchors"
    .parameter "targetConstraints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;-><init>(Ljava/util/Set;)V

    .line 24
    const/4 v0, 0x5

    iput v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    .line 26
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    .line 79
    invoke-virtual {p0, p2}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setTargetConstraints(Lmyorg/bouncycastle/util/Selector;)V

    .line 80
    return-void
.end method

.method public static getInstance(Ljava/security/cert/PKIXParameters;)Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;
    .locals 4
    .parameter "pkixParams"

    .prologue
    .line 172
    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CertSelector;

    invoke-static {v2}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;->getInstance(Ljava/security/cert/X509CertSelector;)Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;-><init>(Ljava/util/Set;Lmyorg/bouncycastle/util/Selector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .local v1, params:Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    invoke-virtual {v1, p0}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    .line 180
    return-object v1

    .line 175
    .end local v1           #params:Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 149
    .local v1, params:Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    .end local v1           #params:Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getTargetConstraints()Lmyorg/bouncycastle/util/Selector;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;-><init>(Ljava/util/Set;Lmyorg/bouncycastle/util/Selector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .restart local v1       #params:Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    invoke-virtual {v1, p0}, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    .line 155
    return-object v1

    .line 150
    .end local v1           #params:Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getExcludedCerts()Ljava/util/Set;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPathLength()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    return v0
.end method

.method protected setParams(Ljava/security/cert/PKIXParameters;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lmyorg/bouncycastle/x509/ExtendedPKIXParameters;->setParams(Ljava/security/cert/PKIXParameters;)V

    .line 129
    instance-of v1, p1, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 130
    check-cast v0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    .line 131
    .local v0, _params:Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    iget v1, v0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    iput v1, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    .line 132
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->excludedCerts:Ljava/util/Set;

    .line 134
    .end local v0           #_params:Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    :cond_0
    instance-of v1, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 135
    check-cast v0, Ljava/security/cert/PKIXBuilderParameters;

    .line 136
    .local v0, _params:Ljava/security/cert/PKIXBuilderParameters;
    invoke-virtual {v0}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result v1

    iput v1, p0, Lmyorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->maxPathLength:I

    .line 138
    .end local v0           #_params:Ljava/security/cert/PKIXBuilderParameters;
    :cond_1
    return-void
.end method
