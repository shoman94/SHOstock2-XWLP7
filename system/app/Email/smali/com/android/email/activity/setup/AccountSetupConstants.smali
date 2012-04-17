.class public Lcom/android/email/activity/setup/AccountSetupConstants;
.super Ljava/lang/Object;
.source "AccountSetupConstants.java"


# static fields
.field public static ENABLE_SNC_ACCOUNT_SETUP:Z

.field public static Sncprofile:Lcom/android/email/syncnconnect/utils/SncProfile;

.field public static final imapPorts:[I

.field public static final imapSchemes:[Ljava/lang/String;

.field public static final popPorts:[I

.field public static final popSchemes:[Ljava/lang/String;

.field public static pwdHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final smtpPorts:[I

.field public static final smtpSchemes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x5

    .line 21
    sget v0, Lcom/android/email/Email;->ACCOUNT_SETUP_OPTION:I

    if-ne v0, v6, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/email/activity/setup/AccountSetupConstants;->ENABLE_SNC_ACCOUNT_SETUP:Z

    .line 92
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->popPorts:[I

    .line 96
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->imapPorts:[I

    .line 99
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "pop3"

    aput-object v3, v0, v2

    const-string v3, "pop3+ssl+"

    aput-object v3, v0, v1

    const-string v3, "pop3+ssl+trustallcerts"

    aput-object v3, v0, v6

    const-string v3, "pop3+tls+"

    aput-object v3, v0, v7

    const/4 v3, 0x4

    const-string v4, "pop3+tls+trustallcerts"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->popSchemes:[Ljava/lang/String;

    .line 102
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "imap"

    aput-object v3, v0, v2

    const-string v3, "imap+ssl+"

    aput-object v3, v0, v1

    const-string v3, "imap+ssl+trustallcerts"

    aput-object v3, v0, v6

    const-string v3, "imap+tls+"

    aput-object v3, v0, v7

    const/4 v3, 0x4

    const-string v4, "imap+tls+trustallcerts"

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->imapSchemes:[Ljava/lang/String;

    .line 105
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->smtpPorts:[I

    .line 108
    new-array v0, v5, [Ljava/lang/String;

    const-string v3, "smtp"

    aput-object v3, v0, v2

    const-string v2, "smtp+ssl+"

    aput-object v2, v0, v1

    const-string v1, "smtp+ssl+trustallcerts"

    aput-object v1, v0, v6

    const-string v1, "smtp+tls+"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "smtp+tls+trustallcerts"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->smtpSchemes:[Ljava/lang/String;

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupConstants;->pwdHash:Ljava/util/HashMap;

    return-void

    :cond_0
    move v0, v2

    .line 21
    goto :goto_0

    .line 92
    :array_0
    .array-data 0x4
        0x6et 0x0t 0x0t 0x0t
        0xe3t 0x3t 0x0t 0x0t
        0xe3t 0x3t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
    .end array-data

    .line 96
    :array_1
    .array-data 0x4
        0x8ft 0x0t 0x0t 0x0t
        0xe1t 0x3t 0x0t 0x0t
        0xe1t 0x3t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
        0x8ft 0x0t 0x0t 0x0t
    .end array-data

    .line 105
    :array_2
    .array-data 0x4
        0x4bt 0x2t 0x0t 0x0t
        0xd1t 0x1t 0x0t 0x0t
        0xd1t 0x1t 0x0t 0x0t
        0x4bt 0x2t 0x0t 0x0t
        0x4bt 0x2t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
