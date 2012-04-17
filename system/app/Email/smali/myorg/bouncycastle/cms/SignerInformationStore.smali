.class public Lmyorg/bouncycastle/cms/SignerInformationStore;
.super Ljava/lang/Object;
.source "SignerInformationStore.java"


# instance fields
.field private table:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .parameter "signerInfos"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lmyorg/bouncycastle/cms/SignerInformationStore;->table:Ljava/util/Map;

    .line 16
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 18
    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmyorg/bouncycastle/cms/SignerInformation;

    .line 20
    .local v4, signer:Lmyorg/bouncycastle/cms/SignerInformation;
    invoke-virtual {v4}, Lmyorg/bouncycastle/cms/SignerInformation;->getSID()Lmyorg/bouncycastle/cms/SignerId;

    move-result-object v3

    .line 22
    .local v3, sid:Lmyorg/bouncycastle/cms/SignerId;
    iget-object v5, p0, Lmyorg/bouncycastle/cms/SignerInformationStore;->table:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 23
    iget-object v5, p0, Lmyorg/bouncycastle/cms/SignerInformationStore;->table:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_0
    iget-object v5, p0, Lmyorg/bouncycastle/cms/SignerInformationStore;->table:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 27
    .local v2, o:Ljava/lang/Object;
    instance-of v5, v2, Ljava/util/List;

    if-eqz v5, :cond_1

    .line 28
    check-cast v2, Ljava/util/List;

    .end local v2           #o:Ljava/lang/Object;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    .restart local v2       #o:Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v1, l:Ljava/util/List;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v5, p0, Lmyorg/bouncycastle/cms/SignerInformationStore;->table:Ljava/util/Map;

    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    .end local v1           #l:Ljava/util/List;
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #sid:Lmyorg/bouncycastle/cms/SignerId;
    .end local v4           #signer:Lmyorg/bouncycastle/cms/SignerInformation;
    :cond_2
    return-void
.end method


# virtual methods
.method public getSigners()Ljava/util/Collection;
    .locals 4

    .prologue
    .line 86
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lmyorg/bouncycastle/cms/SignerInformationStore;->table:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .local v1, list:Ljava/util/List;
    iget-object v3, p0, Lmyorg/bouncycastle/cms/SignerInformationStore;->table:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 92
    .local v2, o:Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 93
    check-cast v2, Ljava/util/List;

    .end local v2           #o:Ljava/lang/Object;
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 95
    .restart local v2       #o:Ljava/lang/Object;
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    .end local v2           #o:Ljava/lang/Object;
    :cond_1
    return-object v1
.end method
