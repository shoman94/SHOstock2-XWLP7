.class Lcom/android/email/combined/MessageBehavior$4;
.super Ljava/lang/Object;
.source "MessageBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/combined/MessageBehavior;->setMessageFavorite(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/combined/MessageBehavior;

.field final synthetic val$isFavorite:Z

.field final synthetic val$remoteMessageId:I


# direct methods
.method constructor <init>(Lcom/android/email/combined/MessageBehavior;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/email/combined/MessageBehavior$4;->this$0:Lcom/android/email/combined/MessageBehavior;

    iput p2, p0, Lcom/android/email/combined/MessageBehavior$4;->val$remoteMessageId:I

    iput-boolean p3, p0, Lcom/android/email/combined/MessageBehavior$4;->val$isFavorite:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    .line 594
    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior$4;->this$0:Lcom/android/email/combined/MessageBehavior;

    invoke-virtual {v0}, Lcom/android/email/combined/MessageBehavior;->notifyMessageStarted()V

    .line 595
    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior$4;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/email/combined/MessageBehavior$4;->val$remoteMessageId:I

    invoke-static {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithSevenMessageId(Landroid/content/Context;I)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    .line 597
    .local v9, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v9, :cond_0

    iget v0, p0, Lcom/android/email/combined/MessageBehavior$4;->val$remoteMessageId:I

    if-ge v0, v2, :cond_1

    .line 598
    :cond_0
    const-string v0, "MessageBehavior"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageFavorite >> remoteMessageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/combined/MessageBehavior$4;->val$remoteMessageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :goto_0
    return-void

    .line 602
    :cond_1
    :try_start_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 603
    .local v7, cv:Landroid/content/ContentValues;
    const-string v0, "flagFavorite"

    iget-boolean v1, p0, Lcom/android/email/combined/MessageBehavior$4;->val$isFavorite:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 605
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 607
    .local v10, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior$4;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v7, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 608
    const-string v0, "MessageBehavior"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMessageFavorite >> messageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior$4;->this$0:Lcom/android/email/combined/MessageBehavior;

    #getter for: Lcom/android/email/combined/MessageBehavior;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/email/combined/MessageBehavior;->access$000(Lcom/android/email/combined/MessageBehavior;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.socialhub.action.EXTERNAL_DB_UPDATE"

    const/16 v2, 0x19a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/email/combined/MessageBehavior$4;->val$isFavorite:Z

    invoke-static/range {v0 .. v6}, Lcom/android/email/service/DoExternalRequest;->requestSendBroadcastIntent(Landroid/content/Context;Ljava/lang/String;I[Ljava/lang/String;IIZ)V

    .line 616
    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior$4;->this$0:Lcom/android/email/combined/MessageBehavior;

    iget-wide v1, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/combined/MessageBehavior;->notifyMessageFinished(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 617
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v10           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 618
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "MessageBehavior"

    const-string v1, "setMessageFavorite: "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    iget-object v0, p0, Lcom/android/email/combined/MessageBehavior$4;->this$0:Lcom/android/email/combined/MessageBehavior;

    new-instance v1, Lcom/android/email/combined/EmailException;

    invoke-direct {v1, v8}, Lcom/android/email/combined/EmailException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/android/email/combined/MessageBehavior;->notifyMessageFailed(Lcom/android/email/combined/EmailException;)V

    goto :goto_0
.end method
