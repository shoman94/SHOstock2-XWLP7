.class Lcom/android/email/service/MailService$3;
.super Ljava/lang/Object;
.source "MailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/service/MailService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/service/MailService;


# direct methods
.method constructor <init>(Lcom/android/email/service/MailService;)V
    .locals 0
    .parameter

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/email/service/MailService$3;->this$0:Lcom/android/email/service/MailService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 345
    iget-object v0, p0, Lcom/android/email/service/MailService$3;->this$0:Lcom/android/email/service/MailService;

    #getter for: Lcom/android/email/service/MailService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/email/service/MailService;->access$400(Lcom/android/email/service/MailService;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 348
    .local v8, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 350
    .local v6, accountId:J
    const-string v0, "eas"

    iget-object v1, p0, Lcom/android/email/service/MailService$3;->this$0:Lcom/android/email/service/MailService;

    #getter for: Lcom/android/email/service/MailService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/service/MailService;->access$200(Lcom/android/email/service/MailService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const-string v0, "Email-MailService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting EAS account: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/android/email/service/MailService$3;->this$0:Lcom/android/email/service/MailService;

    iget-object v0, v0, Lcom/android/email/service/MailService;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/service/MailService$3;->this$0:Lcom/android/email/service/MailService;

    #getter for: Lcom/android/email/service/MailService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/service/MailService;->access$200(Lcom/android/email/service/MailService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/email/Controller;->deleteAccountSync(JLandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 357
    .end local v6           #accountId:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 359
    return-void
.end method
