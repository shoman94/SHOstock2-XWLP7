.class public Lcom/android/email/data/MailboxAccountLoader$Result;
.super Ljava/lang/Object;
.source "MailboxAccountLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/data/MailboxAccountLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field public final mCountTotalAccounts:I

.field public final mIsEasAccount:Z

.field public final mIsFound:Z

.field public final mIsRefreshable:Z

.field public final mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;


# direct methods
.method private constructor <init>(ZLcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ZZI)V
    .locals 0
    .parameter "found"
    .parameter "account"
    .parameter "mailbox"
    .parameter "isEasAccount"
    .parameter "isRefreshable"
    .parameter "countTotalAccounts"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Lcom/android/email/data/MailboxAccountLoader$Result;->mIsFound:Z

    .line 43
    iput-object p2, p0, Lcom/android/email/data/MailboxAccountLoader$Result;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 44
    iput-object p3, p0, Lcom/android/email/data/MailboxAccountLoader$Result;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 45
    iput-boolean p4, p0, Lcom/android/email/data/MailboxAccountLoader$Result;->mIsEasAccount:Z

    .line 46
    iput-boolean p5, p0, Lcom/android/email/data/MailboxAccountLoader$Result;->mIsRefreshable:Z

    .line 47
    iput p6, p0, Lcom/android/email/data/MailboxAccountLoader$Result;->mCountTotalAccounts:I

    .line 48
    return-void
.end method

.method synthetic constructor <init>(ZLcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ZZILcom/android/email/data/MailboxAccountLoader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p6}, Lcom/android/email/data/MailboxAccountLoader$Result;-><init>(ZLcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;ZZI)V

    return-void
.end method
