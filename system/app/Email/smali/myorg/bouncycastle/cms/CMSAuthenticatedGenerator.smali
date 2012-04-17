.class public Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator;
.super Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;
.source "CMSAuthenticatedGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator$MacOutputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0
    .parameter "rand"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/cms/CMSEnvelopedGenerator;-><init>(Ljava/security/SecureRandom;)V

    .line 36
    return-void
.end method
