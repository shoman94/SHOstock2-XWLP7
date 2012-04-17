.class Lcom/android/contacts/interactions/ImportExportDialogFragment$3;
.super Ljava/lang/Object;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/ImportExportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    iput-object p2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 149
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 150
    sparse-switch v0, :sswitch_data_0

    .line 197
    const-string v2, "ImportExportDialogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v4}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 201
    :goto_0
    if-eqz v0, :cond_0

    .line 202
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 204
    :cond_0
    return-void

    .line 154
    :sswitch_0
    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    #calls: Lcom/android/contacts/interactions/ImportExportDialogFragment;->handleImportRequest(I)Z
    invoke-static {v1, v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->access$000(Lcom/android/contacts/interactions/ImportExportDialogFragment;I)Z

    move-result v0

    goto :goto_0

    .line 160
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v2}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    const-string v2, "path"

    sget-object v3, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v2}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 163
    goto :goto_0

    .line 168
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v2}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    const-string v2, "path"

    sget-object v3, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v2}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 171
    goto :goto_0

    .line 177
    :sswitch_3
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    #getter for: Lcom/android/contacts/interactions/ImportExportDialogFragment;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;
    invoke-static {v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->access$100(Lcom/android/contacts/interactions/ImportExportDialogFragment;)Lcom/android/contacts/preference/ContactsPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getSendContactType()I

    move-result v0

    .line 179
    new-instance v2, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_LIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    const-string v3, "additional"

    const-string v4, "vcard-multi"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v3, "sendtype"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 183
    goto :goto_0

    .line 189
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.EXPORT_SIM_CONTACT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v2}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 191
    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-virtual {v2}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 192
    goto/16 :goto_0

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x7f0a00ba -> :sswitch_0
        0x7f0a0238 -> :sswitch_3
        0x7f0a0272 -> :sswitch_1
        0x7f0a0273 -> :sswitch_2
        0x7f0a0274 -> :sswitch_0
        0x7f0a0275 -> :sswitch_0
        0x7f0a027d -> :sswitch_4
    .end sparse-switch
.end method
