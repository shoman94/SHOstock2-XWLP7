.class Lcom/android/contacts/interactions/GroupNameDialogFragment$1;
.super Ljava/lang/Object;
.source "GroupNameDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/GroupNameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    iget-object v1, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    #getter for: Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->access$000(Lcom/android/contacts/interactions/GroupNameDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->onCompleted(Ljava/lang/String;)V

    .line 63
    return-void
.end method
