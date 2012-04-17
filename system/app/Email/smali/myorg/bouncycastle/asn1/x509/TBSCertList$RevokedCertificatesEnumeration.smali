.class Lmyorg/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;
.super Ljava/lang/Object;
.source "TBSCertList.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/asn1/x509/TBSCertList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RevokedCertificatesEnumeration"
.end annotation


# instance fields
.field private final en:Ljava/util/Enumeration;

.field final synthetic this$0:Lmyorg/bouncycastle/asn1/x509/TBSCertList;


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/asn1/x509/TBSCertList;Ljava/util/Enumeration;)V
    .locals 0
    .parameter
    .parameter "en"

    .prologue
    .line 80
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->this$0:Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->en:Ljava/util/Enumeration;

    .line 82
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->en:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 89
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->this$0:Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList$RevokedCertificatesEnumeration;->en:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmyorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;-><init>(Lmyorg/bouncycastle/asn1/x509/TBSCertList;Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method
