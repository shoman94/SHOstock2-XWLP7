.class public Lcom/android/contacts/util/ExpirableCache;
.super Ljava/lang/Object;
.source "ExpirableCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/util/ExpirableCache$GenerationalCachedValue;,
        Lcom/android/contacts/util/ExpirableCache$CachedValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<TK;",
            "Lcom/android/contacts/util/ExpirableCache$CachedValue",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private final mGeneration:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>(Landroid/util/LruCache;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LruCache",
            "<TK;",
            "Lcom/android/contacts/util/ExpirableCache$CachedValue",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, this:Lcom/android/contacts/util/ExpirableCache;,"Lcom/android/contacts/util/ExpirableCache<TK;TV;>;"
    .local p1, cache:Landroid/util/LruCache;,"Landroid/util/LruCache<TK;Lcom/android/contacts/util/ExpirableCache$CachedValue<TV;>;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/android/contacts/util/ExpirableCache;->mCache:Landroid/util/LruCache;

    .line 157
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/util/ExpirableCache;->mGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 158
    return-void
.end method

.method public static create(I)Lcom/android/contacts/util/ExpirableCache;
    .locals 1
    .parameter "maxSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/android/contacts/util/ExpirableCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p0}, Landroid/util/LruCache;-><init>(I)V

    invoke-static {v0}, Lcom/android/contacts/util/ExpirableCache;->create(Landroid/util/LruCache;)Lcom/android/contacts/util/ExpirableCache;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/util/LruCache;)Lcom/android/contacts/util/ExpirableCache;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/LruCache",
            "<TK;",
            "Lcom/android/contacts/util/ExpirableCache$CachedValue",
            "<TV;>;>;)",
            "Lcom/android/contacts/util/ExpirableCache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, cache:Landroid/util/LruCache;,"Landroid/util/LruCache<TK;Lcom/android/contacts/util/ExpirableCache$CachedValue<TV;>;>;"
    new-instance v0, Lcom/android/contacts/util/ExpirableCache;

    invoke-direct {v0, p0}, Lcom/android/contacts/util/ExpirableCache;-><init>(Landroid/util/LruCache;)V

    return-object v0
.end method


# virtual methods
.method public expireAll()V
    .locals 1

    .prologue
    .line 229
    .local p0, this:Lcom/android/contacts/util/ExpirableCache;,"Lcom/android/contacts/util/ExpirableCache<TK;TV;>;"
    iget-object v0, p0, Lcom/android/contacts/util/ExpirableCache;->mGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 230
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, this:Lcom/android/contacts/util/ExpirableCache;,"Lcom/android/contacts/util/ExpirableCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/contacts/util/ExpirableCache$CachedValue;

    move-result-object v0

    .line 206
    .local v0, cachedValue:Lcom/android/contacts/util/ExpirableCache$CachedValue;,"Lcom/android/contacts/util/ExpirableCache$CachedValue<TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getCachedValue(Ljava/lang/Object;)Lcom/android/contacts/util/ExpirableCache$CachedValue;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/android/contacts/util/ExpirableCache$CachedValue",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, this:Lcom/android/contacts/util/ExpirableCache;,"Lcom/android/contacts/util/ExpirableCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Lcom/android/contacts/util/ExpirableCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/util/ExpirableCache$CachedValue;

    return-object v0
.end method

.method public getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, this:Lcom/android/contacts/util/ExpirableCache;,"Lcom/android/contacts/util/ExpirableCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p0, p1}, Lcom/android/contacts/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/contacts/util/ExpirableCache$CachedValue;

    move-result-object v0

    .line 191
    .local v0, cachedValue:Lcom/android/contacts/util/ExpirableCache$CachedValue;,"Lcom/android/contacts/util/ExpirableCache$CachedValue<TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/android/contacts/util/ExpirableCache$CachedValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public newCachedValue(Ljava/lang/Object;)Lcom/android/contacts/util/ExpirableCache$CachedValue;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/android/contacts/util/ExpirableCache$CachedValue",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, this:Lcom/android/contacts/util/ExpirableCache;,"Lcom/android/contacts/util/ExpirableCache<TK;TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Lcom/android/contacts/util/ExpirableCache$GenerationalCachedValue;

    iget-object v1, p0, Lcom/android/contacts/util/ExpirableCache;->mGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/util/ExpirableCache$GenerationalCachedValue;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, this:Lcom/android/contacts/util/ExpirableCache;,"Lcom/android/contacts/util/ExpirableCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/android/contacts/util/ExpirableCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {p0, p2}, Lcom/android/contacts/util/ExpirableCache;->newCachedValue(Ljava/lang/Object;)Lcom/android/contacts/util/ExpirableCache$CachedValue;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method
