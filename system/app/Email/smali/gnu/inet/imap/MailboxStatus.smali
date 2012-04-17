.class public Lgnu/inet/imap/MailboxStatus;
.super Ljava/lang/Object;
.source "MailboxStatus.java"


# instance fields
.field public firstUnreadMessage:I

.field public flags:Ljava/util/List;

.field public messageCount:I

.field public newMessageCount:I

.field public permanentFlags:Ljava/util/List;

.field public readWrite:Z

.field public uidNext:I

.field public uidValidity:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lgnu/inet/imap/MailboxStatus;->messageCount:I

    .line 53
    iput v0, p0, Lgnu/inet/imap/MailboxStatus;->newMessageCount:I

    .line 55
    iput v0, p0, Lgnu/inet/imap/MailboxStatus;->firstUnreadMessage:I

    .line 57
    iput v0, p0, Lgnu/inet/imap/MailboxStatus;->uidNext:I

    .line 59
    iput v0, p0, Lgnu/inet/imap/MailboxStatus;->uidValidity:I

    return-void
.end method
