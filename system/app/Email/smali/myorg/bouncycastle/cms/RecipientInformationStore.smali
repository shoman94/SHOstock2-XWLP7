.class public Lmyorg/bouncycastle/cms/RecipientInformationStore;
.super Ljava/lang/Object;
.source "RecipientInformationStore.java"


# instance fields
.field private final all:Ljava/util/List;

.field private final table:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .parameter "recipientInfos"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lmyorg/bouncycastle/cms/RecipientInformationStore;->table:Ljava/util/Map;

    .line 17
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 19
    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/cms/RecipientInformation;

    .line 21
    .local v2, recipientInformation:Lmyorg/bouncycastle/cms/RecipientInformation;
    invoke-virtual {v2}, Lmyorg/bouncycastle/cms/RecipientInformation;->getRID()Lmyorg/bouncycastle/cms/RecipientId;

    move-result-object v3

    .line 23
    .local v3, rid:Lmyorg/bouncycastle/cms/RecipientId;
    iget-object v4, p0, Lmyorg/bouncycastle/cms/RecipientInformationStore;->table:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 24
    .local v1, list:Ljava/util/List;
    if-nez v1, :cond_0

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #list:Ljava/util/List;
    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .restart local v1       #list:Ljava/util/List;
    iget-object v4, p0, Lmyorg/bouncycastle/cms/RecipientInformationStore;->table:Ljava/util/Map;

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    .end local v1           #list:Ljava/util/List;
    .end local v2           #recipientInformation:Lmyorg/bouncycastle/cms/RecipientInformation;
    .end local v3           #rid:Lmyorg/bouncycastle/cms/RecipientId;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lmyorg/bouncycastle/cms/RecipientInformationStore;->all:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public get(Lmyorg/bouncycastle/cms/RecipientId;)Lmyorg/bouncycastle/cms/RecipientInformation;
    .locals 2
    .parameter "selector"

    .prologue
    .line 43
    iget-object v1, p0, Lmyorg/bouncycastle/cms/RecipientInformationStore;->table:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 45
    .local v0, list:Ljava/util/List;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmyorg/bouncycastle/cms/RecipientInformation;

    goto :goto_0
.end method
