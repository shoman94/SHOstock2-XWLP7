.class public Lcom/android/contacts/quickcontact/ActionMultiMap;
.super Ljava/util/HashMap;
.source "ActionMultiMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/contacts/quickcontact/Action;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Ljava/lang/String;Lcom/android/contacts/quickcontact/Action;)V
    .locals 1
    .parameter "mimeType"
    .parameter "info"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ActionMultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 30
    .local v0, collectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/quickcontact/Action;>;"
    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #collectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/quickcontact/Action;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .restart local v0       #collectList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/quickcontact/Action;>;"
    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/quickcontact/ActionMultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method
