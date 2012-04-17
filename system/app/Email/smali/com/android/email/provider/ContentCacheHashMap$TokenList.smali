.class Lcom/android/email/provider/ContentCacheHashMap$TokenList;
.super Ljava/util/ArrayList;
.source "ContentCacheHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCacheHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TokenList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/email/provider/ContentCacheHashMap$CacheToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mLogTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenList-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/provider/ContentCacheHashMap$TokenList;->mLogTag:Ljava/lang/String;

    .line 190
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lcom/android/email/provider/ContentCacheHashMap$CacheToken;
    .locals 2
    .parameter "id"

    .prologue
    .line 234
    new-instance v0, Lcom/android/email/provider/ContentCacheHashMap$CacheToken;

    invoke-direct {v0, p1}, Lcom/android/email/provider/ContentCacheHashMap$CacheToken;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, token:Lcom/android/email/provider/ContentCacheHashMap$CacheToken;
    invoke-super {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 239
    :cond_0
    return-object v0
.end method

.method invalidate()V
    .locals 3

    .prologue
    .line 212
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCacheHashMap$TokenList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/provider/ContentCacheHashMap$CacheToken;

    .line 216
    .local v1, token:Lcom/android/email/provider/ContentCacheHashMap$CacheToken;
    invoke-virtual {v1}, Lcom/android/email/provider/ContentCacheHashMap$CacheToken;->invalidate()V

    goto :goto_0

    .line 218
    .end local v1           #token:Lcom/android/email/provider/ContentCacheHashMap$CacheToken;
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCacheHashMap$TokenList;->clear()V

    .line 219
    return-void
.end method

.method invalidateTokens(Ljava/lang/String;)I
    .locals 5
    .parameter "id"

    .prologue
    .line 193
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 196
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v2, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/provider/ContentCacheHashMap$CacheToken;>;"
    const/4 v0, 0x0

    .line 198
    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCacheHashMap$TokenList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/provider/ContentCacheHashMap$CacheToken;

    .line 199
    .local v3, token:Lcom/android/email/provider/ContentCacheHashMap$CacheToken;
    invoke-virtual {v3}, Lcom/android/email/provider/ContentCacheHashMap$CacheToken;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    invoke-virtual {v3}, Lcom/android/email/provider/ContentCacheHashMap$CacheToken;->invalidate()V

    .line 201
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v3           #token:Lcom/android/email/provider/ContentCacheHashMap$CacheToken;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/provider/ContentCacheHashMap$CacheToken;

    .line 206
    .restart local v3       #token:Lcom/android/email/provider/ContentCacheHashMap$CacheToken;
    invoke-virtual {p0, v3}, Lcom/android/email/provider/ContentCacheHashMap$TokenList;->remove(Lcom/android/email/provider/ContentCacheHashMap$CacheToken;)Z

    goto :goto_1

    .line 208
    .end local v3           #token:Lcom/android/email/provider/ContentCacheHashMap$CacheToken;
    :cond_3
    return v0
.end method

.method remove(Lcom/android/email/provider/ContentCacheHashMap$CacheToken;)Z
    .locals 2
    .parameter "token"

    .prologue
    .line 222
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 223
    .local v0, result:Z
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 230
    :cond_0
    return v0
.end method
