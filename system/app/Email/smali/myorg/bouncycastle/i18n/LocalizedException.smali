.class public Lmyorg/bouncycastle/i18n/LocalizedException;
.super Ljava/lang/Exception;
.source "LocalizedException.java"


# instance fields
.field private cause:Ljava/lang/Throwable;

.field protected message:Lmyorg/bouncycastle/i18n/ErrorBundle;


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lmyorg/bouncycastle/i18n/LocalizedException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
