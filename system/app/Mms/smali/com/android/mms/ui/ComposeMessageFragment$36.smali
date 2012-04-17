.class Lcom/android/mms/ui/ComposeMessageFragment$36;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$attachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

.field final synthetic val$toReplaceMedia:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4313
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$36;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$36;->val$attachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$36;->val$toReplaceMedia:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4315
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$36;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$36;->val$attachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->buttonToCommand(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$36;->val$toReplaceMedia:Z

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->startActivityforAddMedia(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5700(Lcom/android/mms/ui/ComposeMessageFragment;IZ)V

    .line 4318
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4319
    return-void
.end method
