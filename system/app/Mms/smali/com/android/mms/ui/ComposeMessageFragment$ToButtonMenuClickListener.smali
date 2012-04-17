.class final Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ToButtonMenuClickListener"
.end annotation


# instance fields
.field private mId:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;I)V
    .locals 0
    .parameter
    .parameter "id"

    .prologue
    .line 8357
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8358
    iput p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->mId:I

    .line 8359
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 8362
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonList:Ljava/util/SortedMap;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4300(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/SortedMap;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ToButton;

    .line 8363
    .local v0, toButton:Lcom/android/mms/ui/ToButton;
    if-nez v0, :cond_0

    .line 8383
    :goto_0
    return-void

    .line 8366
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 8382
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsOpenToButtonMenu:Z
    invoke-static {v1, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12102(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto :goto_0

    .line 8368
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mToButtonDeleteHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$11700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ToButton;->delete(Landroid/os/Handler;)V

    goto :goto_1

    .line 8371
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x1

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZ)Z
    invoke-static {v1, v2, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4000(Lcom/android/mms/ui/ComposeMessageFragment;ZZ)Z

    .line 8373
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    .line 8374
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->moveCursorToEnd()V

    .line 8375
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->mId:I

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->RemoveToButton(I)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$12000(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    goto :goto_1

    .line 8378
    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ToButton;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3802(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/content/Intent;)Landroid/content/Intent;

    .line 8379
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ToButtonMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAddContactIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 8366
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
