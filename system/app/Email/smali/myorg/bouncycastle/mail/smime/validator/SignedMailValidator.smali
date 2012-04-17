.class public Lmyorg/bouncycastle/mail/smime/validator/SignedMailValidator;
.super Ljava/lang/Object;
.source "SignedMailValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/mail/smime/validator/SignedMailValidator$ValidationResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_CERT_PATH_REVIEWER:Ljava/lang/Class;

.field private static final EXT_KEY_USAGE:Ljava/lang/String;

.field private static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lmyorg/bouncycastle/x509/PKIXCertPathReviewer;

    sput-object v0, Lmyorg/bouncycastle/mail/smime/validator/SignedMailValidator;->DEFAULT_CERT_PATH_REVIEWER:Ljava/lang/Class;

    .line 70
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->ExtendedKeyUsage:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/validator/SignedMailValidator;->EXT_KEY_USAGE:Ljava/lang/String;

    .line 72
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmyorg/bouncycastle/mail/smime/validator/SignedMailValidator;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    return-void
.end method
