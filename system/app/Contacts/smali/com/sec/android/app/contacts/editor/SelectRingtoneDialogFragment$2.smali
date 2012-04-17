.class Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$2;
.super Ljava/lang/Object;
.source "SelectRingtoneDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 94
    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$2;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 96
    .local v0, resId:I
    iget-object v3, p0, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v2

    .local v2, targetFragment:Landroid/app/Fragment;
    move-object v1, v2

    .line 97
    check-cast v1, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;

    .line 98
    .local v1, target:Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;

    if-nez v3, :cond_2

    .line 99
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 103
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 117
    :pswitch_0
    const-string v3, "SelectRingtoneDialogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_1
    if-eqz p1, :cond_1

    .line 122
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-interface {v1}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;->onDefaultChosen()V

    goto :goto_1

    .line 109
    :pswitch_2
    invoke-interface {v1}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;->onPhoneRingtoneChosen()V

    goto :goto_1

    .line 113
    :pswitch_3
    invoke-interface {v1}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;->onGotoMyfilesChosen()V

    goto :goto_1

    .line 103
    :pswitch_data_0
    .packed-switch 0x7f0a0221
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
