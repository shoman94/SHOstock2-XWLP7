.class public final Lcom/android/email/mail/store/imap/ImapConstants;
.super Ljava/lang/Object;
.source "ImapConstants.java"


# static fields
.field public static final FETCH_FIELD_BODY_PEEK_SANE:Ljava/lang/String;

.field public static final FETCH_FIELD_PART_SANE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, 0xf000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    const-string v0, "BODY.PEEK[]<0.%d>"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/store/imap/ImapConstants;->FETCH_FIELD_BODY_PEEK_SANE:Ljava/lang/String;

    .line 33
    const-string v0, "<0.%d>"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/store/imap/ImapConstants;->FETCH_FIELD_PART_SANE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method
