.class Lcom/android/email/MessagingController$13;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->processPendingMoveActions(Ljava/util/HashMap;JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$accountId:J

.field final synthetic val$final_serverIds:Ljava/util/HashMap;

.field final synthetic val$orig_boxkey:J

.field final synthetic val$target_boxkey:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;JLjava/util/HashMap;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3011
    iput-object p1, p0, Lcom/android/email/MessagingController$13;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$13;->val$accountId:J

    iput-object p4, p0, Lcom/android/email/MessagingController$13;->val$final_serverIds:Ljava/util/HashMap;

    iput-wide p5, p0, Lcom/android/email/MessagingController$13;->val$target_boxkey:J

    iput-wide p7, p0, Lcom/android/email/MessagingController$13;->val$orig_boxkey:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 3013
    const/4 v8, 0x1

    .line 3015
    .local v8, bResult:Z
    :try_start_0
    iget-object v0, p0, Lcom/android/email/MessagingController$13;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/email/MessagingController$13;->val$accountId:J

    invoke-static {v0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 3017
    .local v1, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v1, :cond_1

    .line 3047
    .end local v1           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_0
    :goto_0
    return-void

    .line 3020
    .restart local v1       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_1
    iget-object v0, p0, Lcom/android/email/MessagingController$13;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3022
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v0, "MsgControl >>>"

    const-string v3, "PERFORMANCE MOVE START"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    iget-object v0, p0, Lcom/android/email/MessagingController$13;->this$0:Lcom/android/email/MessagingController;

    iget-object v3, p0, Lcom/android/email/MessagingController$13;->val$final_serverIds:Ljava/util/HashMap;

    iget-wide v4, p0, Lcom/android/email/MessagingController$13;->val$target_boxkey:J

    iget-wide v6, p0, Lcom/android/email/MessagingController$13;->val$orig_boxkey:J

    #calls: Lcom/android/email/MessagingController;->processPendingMultiMoveSynchronous(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;Ljava/util/HashMap;JJ)Z
    invoke-static/range {v0 .. v7}, Lcom/android/email/MessagingController;->access$700(Lcom/android/email/MessagingController;Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/content/ContentResolver;Ljava/util/HashMap;JJ)Z

    move-result v8

    .line 3032
    const-string v0, "Z7App"

    const-string v3, "PERFORMANCE MOVE END"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    iget-object v0, p0, Lcom/android/email/MessagingController$13;->this$0:Lcom/android/email/MessagingController;

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3043
    .end local v1           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :goto_1
    if-nez v8, :cond_0

    goto :goto_0

    .line 3036
    :catch_0
    move-exception v9

    .line 3040
    .local v9, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    goto :goto_1
.end method
