.class public Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;
.super Ljava/lang/Object;
.source "CertificateUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/smime/CertificateUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecipientCertificate"
.end annotation


# instance fields
.field public mCertificate:Ljava/security/cert/X509Certificate;

.field public mEmailAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
    .locals 0
    .parameter "emailAddress"
    .parameter "certificate"

    .prologue
    .line 260
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->mEmailAddress:Ljava/lang/String;

    .line 262
    iput-object p2, p0, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->mCertificate:Ljava/security/cert/X509Certificate;

    .line 263
    return-void
.end method


# virtual methods
.method public getCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->mCertificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/emailcommon/smime/CertificateUtil$RecipientCertificate;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method
