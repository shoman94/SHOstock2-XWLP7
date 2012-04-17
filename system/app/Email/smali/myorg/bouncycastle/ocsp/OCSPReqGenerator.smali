.class public Lmyorg/bouncycastle/ocsp/OCSPReqGenerator;
.super Ljava/lang/Object;
.source "OCSPReqGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/ocsp/OCSPReqGenerator$RequestObject;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;

.field private requestExtensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

.field private requestorName:Lmyorg/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/ocsp/OCSPReqGenerator;->list:Ljava/util/List;

    .line 38
    iput-object v1, p0, Lmyorg/bouncycastle/ocsp/OCSPReqGenerator;->requestorName:Lmyorg/bouncycastle/asn1/x509/GeneralName;

    .line 39
    iput-object v1, p0, Lmyorg/bouncycastle/ocsp/OCSPReqGenerator;->requestExtensions:Lmyorg/bouncycastle/asn1/x509/X509Extensions;

    .line 41
    return-void
.end method
