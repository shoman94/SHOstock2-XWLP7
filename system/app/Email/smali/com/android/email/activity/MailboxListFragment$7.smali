.class Lcom/android/email/activity/MailboxListFragment$7;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MailboxListFragment;->createMailbox(Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;

.field final synthetic val$root:Z

.field final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MailboxListFragment;Landroid/widget/EditText;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$7;->this$0:Lcom/android/email/activity/MailboxListFragment;

    iput-object p2, p0, Lcom/android/email/activity/MailboxListFragment$7;->val$text:Landroid/widget/EditText;

    iput-boolean p3, p0, Lcom/android/email/activity/MailboxListFragment$7;->val$root:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 20
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1347
    invoke-interface/range {p1 .. p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$7;->val$text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1350
    .local v16, folderName:Ljava/lang/String;
    const-string v2, " "

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 1352
    .local v19, temp:[Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, v19

    array-length v2, v0

    if-lez v2, :cond_5

    .line 1354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$7;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v15

    .line 1355
    .local v15, controller:Lcom/android/email/Controller;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$7;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1700(Lcom/android/email/activity/MailboxListFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxListFragment$7;->val$text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$7;->this$0:Lcom/android/email/activity/MailboxListFragment;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxListFragment$7;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v4, 0x7f080500

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/email/activity/MailboxListFragment;->showProgressDialog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/email/activity/MailboxListFragment;->access$900(Lcom/android/email/activity/MailboxListFragment;Ljava/lang/String;)V

    .line 1357
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/email/activity/MailboxListFragment$7;->val$root:Z

    if-eqz v2, :cond_2

    .line 1358
    const-wide/16 v17, -0x1

    .line 1359
    .local v17, rootId:J
    const/4 v14, 0x0

    .line 1360
    .local v14, c:Landroid/database/Cursor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayName=\'__eas\' AND accountKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxListFragment$7;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mAccountId:J
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$1400(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1363
    .local v5, selection:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$7;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    .line 1364
    .local v13, a:Landroid/app/Activity;
    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1368
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1369
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v17

    .line 1372
    :cond_0
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1373
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1376
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$7;->this$0:Lcom/android/email/activity/MailboxListFragment;

    move-wide/from16 v0, v17

    #setter for: Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J
    invoke-static {v2, v0, v1}, Lcom/android/email/activity/MailboxListFragment;->access$1102(Lcom/android/email/activity/MailboxListFragment;J)J

    .line 1379
    .end local v5           #selection:Ljava/lang/String;
    .end local v13           #a:Landroid/app/Activity;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v17           #rootId:J
    :cond_2
    const-string v2, "eas"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxListFragment$7;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mHostAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    invoke-static {v3}, Lcom/android/email/activity/MailboxListFragment;->access$1000(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v3

    iget-object v3, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$7;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1100(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v2

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2, v3}, Lcom/android/email/Controller;->createFolder(Ljava/lang/String;J)Landroid/os/AsyncTask;

    .line 1390
    .end local v15           #controller:Lcom/android/email/Controller;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$7;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment;->onCancel()V

    .line 1391
    return-void

    .line 1372
    .restart local v5       #selection:Ljava/lang/String;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v15       #controller:Lcom/android/email/Controller;
    .restart local v17       #rootId:J
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_3

    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1373
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1372
    :cond_3
    throw v2

    .line 1382
    .end local v5           #selection:Ljava/lang/String;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v17           #rootId:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$7;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mSelectedContextMailboxId:J
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1100(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$7;->this$0:Lcom/android/email/activity/MailboxListFragment;

    #getter for: Lcom/android/email/activity/MailboxListFragment;->mAccountId:J
    invoke-static {v2}, Lcom/android/email/activity/MailboxListFragment;->access$1400(Lcom/android/email/activity/MailboxListFragment;)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/email/activity/MailboxListFragment$7;->val$root:Z

    move-object v6, v15

    move-object/from16 v7, v16

    invoke-virtual/range {v6 .. v12}, Lcom/android/email/Controller;->createFolder(Ljava/lang/String;JJZ)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1386
    .end local v15           #controller:Lcom/android/email/Controller;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MailboxListFragment$7;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MailboxListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MailboxListFragment$7;->this$0:Lcom/android/email/activity/MailboxListFragment;

    const v4, 0x7f080369

    invoke-virtual {v3, v4}, Lcom/android/email/activity/MailboxListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
