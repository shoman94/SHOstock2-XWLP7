.class Lcom/android/mms/ui/ComposeMessageFragment$46;
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

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$extrastring:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$type:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/ProgressDialog;Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5145
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->val$extrastring:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->val$uri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->val$type:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p6, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->val$extras:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->val$intent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 5149
    const-wide/16 v3, 0x1e

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5154
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->val$extrastring:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->val$extrastring:Ljava/lang/String;

    const-string v3, "vcard"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5155
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getImportMediaCount(I)I
    invoke-static {v0, v10}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6400(Lcom/android/mms/ui/ComposeMessageFragment;I)I

    move-result v0

    if-lez v0, :cond_0

    .line 5156
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->val$uri:Landroid/net/Uri;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getAddContactUri(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6500(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 5157
    .local v1, contactUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v5, 0x14

    move v3, v2

    move v4, v2

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->addRawMedia(Landroid/net/Uri;ZZZI)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6600(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;ZZZI)V

    .line 5162
    .end local v1           #contactUri:Landroid/net/Uri;
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 5165
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 5166
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMsgAttachHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 5167
    .local v7, msg:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 5170
    .end local v7           #msg:Landroid/os/Message;
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->val$extras:Landroid/os/Bundle;

    const-string v3, "sendto"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5172
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->val$intent:Landroid/content/Intent;

    const-string v3, "sendto"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 5173
    .local v9, recipientList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 5174
    .local v8, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMsgAttachHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v10, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 5175
    .restart local v7       #msg:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 5177
    .end local v7           #msg:Landroid/os/Message;
    .end local v8           #number:Ljava/lang/String;
    .end local v9           #recipientList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void

    .line 5150
    :catch_0
    move-exception v6

    .line 5152
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 5159
    .end local v6           #e:Ljava/lang/InterruptedException;
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->val$type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5160
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->val$type:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$46;->val$uri:Landroid/net/Uri;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)V
    invoke-static {v0, v3, v4, v2, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7800(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;ZZ)V

    goto :goto_1
.end method
