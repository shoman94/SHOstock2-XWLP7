.class Lmyorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;
.super Ljava/lang/Object;
.source "ThreadedSeedGenerator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/crypto/prng/ThreadedSeedGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeedGenerator"
.end annotation


# instance fields
.field private volatile counter:I

.field private volatile stop:Z


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 16
    :goto_0
    iget-boolean v0, p0, Lmyorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->stop:Z

    if-nez v0, :cond_0

    .line 17
    iget v0, p0, Lmyorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmyorg/bouncycastle/crypto/prng/ThreadedSeedGenerator$SeedGenerator;->counter:I

    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method
