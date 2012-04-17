.class Lcom/android/mms/ui/ComposeMessageFragment$49;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->handleSendIntent(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$dismissProgress:Ljava/lang/Runnable;

.field final synthetic val$numberToImport:I

.field final synthetic val$showProgress:Ljava/lang/Runnable;

.field final synthetic val$uris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;ILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5232
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->val$numberToImport:I

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->val$uris:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->val$showProgress:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->val$dismissProgress:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const v13, 0x7f090183

    const/4 v12, 0x1

    const/4 v14, 0x0

    .line 5234
    const/4 v0, 0x0

    .line 5235
    .local v0, alreadyShownUnsupported:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->val$numberToImport:I

    if-ge v1, v10, :cond_4

    .line 5236
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->val$uris:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Parcelable;

    .line 5238
    .local v8, uri:Landroid/os/Parcelable;
    const-string v6, "content://com.android.contacts/contacts/as_vcard/"

    .line 5239
    .local v6, prefixstr:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 5240
    .local v9, uriString:Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 5242
    .local v2, isContact:Z
    if-eqz v2, :cond_1

    .line 5243
    const-string v4, "text/x-vCard"

    .line 5247
    .local v4, mimeType:Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_3

    .line 5248
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->isAttachSupportedType(Ljava/lang/String;)Z
    invoke-static {v10, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8100(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 5249
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    check-cast v8, Landroid/net/Uri;

    .end local v8           #uri:Landroid/os/Parcelable;
    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)V
    invoke-static {v10, v4, v8, v12, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7800(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;ZZ)V

    .line 5252
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->onAttachmentChanged(Z)V

    .line 5253
    iget v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->val$numberToImport:I

    add-int/lit8 v10, v10, -0x1

    if-ne v1, v10, :cond_0

    .line 5256
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 5257
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v10

    invoke-virtual {v10, v14}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 5258
    sget-boolean v10, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v10, :cond_0

    .line 5259
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v10

    invoke-virtual {v10, v14}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 5235
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5245
    .end local v4           #mimeType:Ljava/lang/String;
    .restart local v8       #uri:Landroid/os/Parcelable;
    :cond_1
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object v10, v8

    check-cast v10, Landroid/net/Uri;

    invoke-virtual {v11, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getMimeTypeFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #mimeType:Ljava/lang/String;
    goto :goto_1

    .line 5264
    :cond_2
    if-nez v0, :cond_0

    .line 5265
    const/4 v0, 0x1

    .line 5266
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 5267
    .local v7, res:Landroid/content/res/Resources;
    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5269
    .local v3, message:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Lcom/android/mms/ui/ComposeMessageFragment$49$1;

    invoke-direct {v11, p0, v3}, Lcom/android/mms/ui/ComposeMessageFragment$49$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$49;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 5277
    .end local v3           #message:Ljava/lang/String;
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_3
    if-nez v4, :cond_0

    .line 5278
    if-nez v0, :cond_0

    .line 5279
    const/4 v0, 0x1

    .line 5280
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 5281
    .restart local v7       #res:Landroid/content/res/Resources;
    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5283
    .restart local v3       #message:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v10

    new-instance v11, Lcom/android/mms/ui/ComposeMessageFragment$49$2;

    invoke-direct {v11, p0, v3}, Lcom/android/mms/ui/ComposeMessageFragment$49$2;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$49;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 5293
    .end local v2           #isContact:Z
    .end local v3           #message:Ljava/lang/String;
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v6           #prefixstr:Ljava/lang/String;
    .end local v7           #res:Landroid/content/res/Resources;
    .end local v8           #uri:Landroid/os/Parcelable;
    .end local v9           #uriString:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsConainerHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5294
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8000(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 5296
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsConainerHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->val$dismissProgress:Ljava/lang/Runnable;

    const-wide/16 v12, 0x1f4

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5298
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v10

    if-nez v10, :cond_5

    .line 5299
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageFragment$49;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMsgAttachHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v10

    invoke-static {v10, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    .line 5300
    .local v5, msg:Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 5303
    .end local v5           #msg:Landroid/os/Message;
    :cond_5
    return-void
.end method
