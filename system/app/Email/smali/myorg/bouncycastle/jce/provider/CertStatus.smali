.class Lmyorg/bouncycastle/jce/provider/CertStatus;
.super Ljava/lang/Object;
.source "CertStatus.java"


# instance fields
.field certStatus:I

.field revocationDate:Ljava/util/Date;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0xb

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/CertStatus;->certStatus:I

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/CertStatus;->revocationDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getCertStatus()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lmyorg/bouncycastle/jce/provider/CertStatus;->certStatus:I

    return v0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/CertStatus;->revocationDate:Ljava/util/Date;

    return-object v0
.end method

.method public setCertStatus(I)V
    .locals 0
    .parameter "certStatus"

    .prologue
    .line 40
    iput p1, p0, Lmyorg/bouncycastle/jce/provider/CertStatus;->certStatus:I

    .line 41
    return-void
.end method

.method public setRevocationDate(Ljava/util/Date;)V
    .locals 0
    .parameter "revocationDate"

    .prologue
    .line 26
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/CertStatus;->revocationDate:Ljava/util/Date;

    .line 27
    return-void
.end method
