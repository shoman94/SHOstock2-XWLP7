.class Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;
.super Ljava/lang/Object;
.source "MailboxesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MailboxData"
.end annotation


# instance fields
.field accountKey:J

.field displayName:Ljava/lang/String;

.field flagNoSelected:I

.field hierarchyLevel:I

.field id:J

.field mailboxId:J

.field mailboxType:I

.field messageCount:I

.field parentKey:J

.field rowType:I

.field final synthetic this$0:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;

.field unreadCount:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader$MailboxData;->this$0:Lcom/android/email/activity/MailboxesAdapter$MailboxesLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
