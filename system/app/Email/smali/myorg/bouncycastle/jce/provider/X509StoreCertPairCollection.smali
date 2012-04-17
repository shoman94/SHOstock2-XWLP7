.class public Lmyorg/bouncycastle/jce/provider/X509StoreCertPairCollection;
.super Lmyorg/bouncycastle/x509/X509StoreSpi;
.source "X509StoreCertPairCollection.java"


# instance fields
.field private _store:Lmyorg/bouncycastle/util/CollectionStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lmyorg/bouncycastle/x509/X509StoreSpi;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public engineGetMatches(Lmyorg/bouncycastle/util/Selector;)Ljava/util/Collection;
    .locals 1
    .parameter "selector"

    .prologue
    .line 55
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509StoreCertPairCollection;->_store:Lmyorg/bouncycastle/util/CollectionStore;

    invoke-virtual {v0, p1}, Lmyorg/bouncycastle/util/CollectionStore;->getMatches(Lmyorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public engineInit(Lmyorg/bouncycastle/x509/X509StoreParameters;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    instance-of v0, p1, Lmyorg/bouncycastle/x509/X509CollectionStoreParameters;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialization parameters must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lmyorg/bouncycastle/x509/X509CollectionStoreParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    new-instance v0, Lmyorg/bouncycastle/util/CollectionStore;

    check-cast p1, Lmyorg/bouncycastle/x509/X509CollectionStoreParameters;

    invoke-virtual {p1}, Lmyorg/bouncycastle/x509/X509CollectionStoreParameters;->getCollection()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509StoreCertPairCollection;->_store:Lmyorg/bouncycastle/util/CollectionStore;

    .line 41
    return-void
.end method
