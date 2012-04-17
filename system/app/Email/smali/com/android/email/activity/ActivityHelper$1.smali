.class final Lcom/android/email/activity/ActivityHelper$1;
.super Ljava/lang/Object;
.source "ActivityHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/ActivityHelper;->moveMessages(Landroid/app/Activity;JJ[J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$newMailboxId:J


# direct methods
.method constructor <init>(Landroid/app/Activity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/email/activity/ActivityHelper$1;->val$activity:Landroid/app/Activity;

    iput-wide p2, p0, Lcom/android/email/activity/ActivityHelper$1;->val$newMailboxId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 250
    iget-object v1, p0, Lcom/android/email/activity/ActivityHelper$1;->val$activity:Landroid/app/Activity;

    iget-wide v2, p0, Lcom/android/email/activity/ActivityHelper$1;->val$newMailboxId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getDisplayName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, mailboxName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/ActivityHelper$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/email/activity/ActivityHelper$1;->val$activity:Landroid/app/Activity;

    const v3, 0x7f0800c1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method
