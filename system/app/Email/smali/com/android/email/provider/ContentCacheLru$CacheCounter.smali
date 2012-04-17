.class Lcom/android/email/provider/ContentCacheLru$CacheCounter;
.super Ljava/lang/Object;
.source "ContentCacheLru.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCacheLru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheCounter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/email/provider/ContentCacheLru$CacheCounter;",
        ">;"
    }
.end annotation


# instance fields
.field count:Ljava/lang/Integer;


# virtual methods
.method public compareTo(Lcom/android/email/provider/ContentCacheLru$CacheCounter;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 739
    iget-object v0, p1, Lcom/android/email/provider/ContentCacheLru$CacheCounter;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru$CacheCounter;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/android/email/provider/ContentCacheLru$CacheCounter;->count:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru$CacheCounter;->count:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 727
    check-cast p1, Lcom/android/email/provider/ContentCacheLru$CacheCounter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/provider/ContentCacheLru$CacheCounter;->compareTo(Lcom/android/email/provider/ContentCacheLru$CacheCounter;)I

    move-result v0

    return v0
.end method
