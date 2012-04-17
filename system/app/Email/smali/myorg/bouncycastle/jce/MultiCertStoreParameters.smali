.class public Lmyorg/bouncycastle/jce/MultiCertStoreParameters;
.super Ljava/lang/Object;
.source "MultiCertStoreParameters.java"

# interfaces
.implements Ljava/security/cert/CertStoreParameters;


# instance fields
.field private certStores:Ljava/util/Collection;

.field private searchAllStores:Z


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 46
    return-object p0
.end method

.method public getCertStores()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmyorg/bouncycastle/jce/MultiCertStoreParameters;->certStores:Ljava/util/Collection;

    return-object v0
.end method

.method public getSearchAllStores()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lmyorg/bouncycastle/jce/MultiCertStoreParameters;->searchAllStores:Z

    return v0
.end method
