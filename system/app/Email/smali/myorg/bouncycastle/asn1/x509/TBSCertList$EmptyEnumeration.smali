.class Lmyorg/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;
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
    name = "EmptyEnumeration"
.end annotation


# instance fields
.field final synthetic this$0:Lmyorg/bouncycastle/asn1/x509/TBSCertList;


# direct methods
.method private constructor <init>(Lmyorg/bouncycastle/asn1/x509/TBSCertList;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;->this$0:Lmyorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmyorg/bouncycastle/asn1/x509/TBSCertList;Lmyorg/bouncycastle/asn1/x509/TBSCertList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/x509/TBSCertList$EmptyEnumeration;-><init>(Lmyorg/bouncycastle/asn1/x509/TBSCertList;)V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method
