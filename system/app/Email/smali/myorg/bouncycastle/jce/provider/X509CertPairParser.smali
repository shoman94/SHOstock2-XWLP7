.class public Lmyorg/bouncycastle/jce/provider/X509CertPairParser;
.super Lmyorg/bouncycastle/x509/X509StreamParserSpi;
.source "X509CertPairParser.java"


# instance fields
.field private currentStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lmyorg/bouncycastle/x509/X509StreamParserSpi;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/X509CertPairParser;->currentStream:Ljava/io/InputStream;

    return-void
.end method
