.class public Lmyorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;
.super Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator;
.source "CMSAuthenticatedDataStreamGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0
    .parameter "rand"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/cms/CMSAuthenticatedGenerator;-><init>(Ljava/security/SecureRandom;)V

    .line 71
    return-void
.end method
