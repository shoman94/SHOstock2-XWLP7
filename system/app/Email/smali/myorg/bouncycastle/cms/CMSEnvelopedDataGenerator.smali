.class public Lmyorg/bouncycastle/cms/CMSEnvelopedDataGenerator;
.super Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;
.source "CMSEnvelopedDataGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0
    .parameter "rand"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;-><init>(Ljava/security/SecureRandom;)V

    .line 57
    return-void
.end method
