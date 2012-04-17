.class public Lmyorg/bouncycastle/util/CollectionStore;
.super Ljava/lang/Object;
.source "CollectionStore.java"

# interfaces
.implements Lmyorg/bouncycastle/util/Store;


# instance fields
.field private _local:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .parameter "collection"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lmyorg/bouncycastle/util/CollectionStore;->_local:Ljava/util/Collection;

    .line 22
    return-void
.end method


# virtual methods
.method public getMatches(Lmyorg/bouncycastle/util/Selector;)Ljava/util/Collection;
    .locals 4
    .parameter "selector"

    .prologue
    .line 31
    if-nez p1, :cond_1

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lmyorg/bouncycastle/util/CollectionStore;->_local:Ljava/util/Collection;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    :cond_0
    return-object v0

    .line 34
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, col:Ljava/util/List;
    iget-object v3, p0, Lmyorg/bouncycastle/util/CollectionStore;->_local:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 37
    .local v1, iter:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 40
    .local v2, obj:Ljava/lang/Object;
    invoke-interface {p1, v2}, Lmyorg/bouncycastle/util/Selector;->match(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
