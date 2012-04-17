.class public Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;
.super Ljava/lang/Object;
.source "X509CertPairStoreSelector.java"

# interfaces
.implements Lmyorg/bouncycastle/util/Selector;


# instance fields
.field private certPair:Lmyorg/bouncycastle/x509/X509CertificatePair;

.field private forwardSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

.field private reverseSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;

    invoke-direct {v0}, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;-><init>()V

    .line 70
    .local v0, cln:Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;
    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lmyorg/bouncycastle/x509/X509CertificatePair;

    iput-object v1, v0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lmyorg/bouncycastle/x509/X509CertificatePair;

    .line 72
    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v1}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->setForwardSelector(Lmyorg/bouncycastle/x509/X509CertStoreSelector;)V

    .line 76
    :cond_0
    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v1}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v0, v1}, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->setReverseSelector(Lmyorg/bouncycastle/x509/X509CertStoreSelector;)V

    .line 80
    :cond_1
    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 93
    :try_start_0
    instance-of v4, p1, Lmyorg/bouncycastle/x509/X509CertificatePair;

    if-nez v4, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v3

    .line 96
    :cond_1
    move-object v0, p1

    check-cast v0, Lmyorg/bouncycastle/x509/X509CertificatePair;

    move-object v2, v0

    .line 98
    .local v2, pair:Lmyorg/bouncycastle/x509/X509CertificatePair;
    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v2}, Lmyorg/bouncycastle/x509/X509CertificatePair;->getForward()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    :cond_2
    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-virtual {v2}, Lmyorg/bouncycastle/x509/X509CertificatePair;->getReverse()Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmyorg/bouncycastle/x509/X509CertStoreSelector;->match(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    :cond_3
    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lmyorg/bouncycastle/x509/X509CertificatePair;

    if-eqz v4, :cond_4

    .line 107
    iget-object v4, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->certPair:Lmyorg/bouncycastle/x509/X509CertificatePair;

    invoke-virtual {v4, p1}, Lmyorg/bouncycastle/x509/X509CertificatePair;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 110
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 111
    .end local v2           #pair:Lmyorg/bouncycastle/x509/X509CertificatePair;
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setForwardSelector(Lmyorg/bouncycastle/x509/X509CertStoreSelector;)V
    .locals 0
    .parameter "forwardSelector"

    .prologue
    .line 50
    iput-object p1, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->forwardSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    .line 51
    return-void
.end method

.method public setReverseSelector(Lmyorg/bouncycastle/x509/X509CertStoreSelector;)V
    .locals 0
    .parameter "reverseSelector"

    .prologue
    .line 58
    iput-object p1, p0, Lmyorg/bouncycastle/x509/X509CertPairStoreSelector;->reverseSelector:Lmyorg/bouncycastle/x509/X509CertStoreSelector;

    .line 59
    return-void
.end method
