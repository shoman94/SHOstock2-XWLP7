.class public Lmyorg/bouncycastle/jce/provider/X509AttrCertParser;
.super Lmyorg/bouncycastle/x509/X509StreamParserSpi;
.source "X509AttrCertParser.java"


# static fields
.field private static final PEM_PARSER:Lmyorg/bouncycastle/jce/provider/PEMUtil;


# instance fields
.field private currentStream:Ljava/io/InputStream;

.field private sData:Lmyorg/bouncycastle/asn1/ASN1Set;

.field private sDataObjectCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lmyorg/bouncycastle/jce/provider/PEMUtil;

    const-string v1, "ATTRIBUTE CERTIFICATE"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/jce/provider/PEMUtil;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/jce/provider/X509AttrCertParser;->PEM_PARSER:Lmyorg/bouncycastle/jce/provider/PEMUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Lmyorg/bouncycastle/x509/X509StreamParserSpi;-><init>()V

    .line 26
    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509AttrCertParser;->sData:Lmyorg/bouncycastle/asn1/ASN1Set;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/X509AttrCertParser;->sDataObjectCount:I

    .line 28
    iput-object v1, p0, Lmyorg/bouncycastle/jce/provider/X509AttrCertParser;->currentStream:Ljava/io/InputStream;

    return-void
.end method
