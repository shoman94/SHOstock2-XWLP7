.class public Lmyorg/bouncycastle/crypto/prng/DigestRandomGenerator;
.super Ljava/lang/Object;
.source "DigestRandomGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/crypto/prng/RandomGenerator;


# static fields
.field private static CYCLE_COUNT:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const-wide/16 v0, 0xa

    sput-wide v0, Lmyorg/bouncycastle/crypto/prng/DigestRandomGenerator;->CYCLE_COUNT:J

    return-void
.end method
