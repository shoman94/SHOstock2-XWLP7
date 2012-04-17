.class public final Lcom/android/email/provider/ContentCacheLru$CacheToken;
.super Ljava/lang/Object;
.source "ContentCacheLru.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCacheLru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheToken"
.end annotation


# instance fields
.field private final mId:Ljava/lang/String;

.field private mIsValid:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 247
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/provider/ContentCacheLru$CacheToken;->mIsValid:Z

    .line 248
    iput-object p1, p0, Lcom/android/email/provider/ContentCacheLru$CacheToken;->mId:Ljava/lang/String;

    .line 249
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "token"

    .prologue
    .line 265
    instance-of v0, p1, Lcom/android/email/provider/ContentCacheLru$CacheToken;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/email/provider/ContentCacheLru$CacheToken;

    .end local p1
    iget-object v0, p1, Lcom/android/email/provider/ContentCacheLru$CacheToken;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru$CacheToken;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru$CacheToken;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/email/provider/ContentCacheLru$CacheToken;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method invalidate()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/provider/ContentCacheLru$CacheToken;->mIsValid:Z

    .line 261
    return-void
.end method

.method isValid()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/email/provider/ContentCacheLru$CacheToken;->mIsValid:Z

    return v0
.end method
