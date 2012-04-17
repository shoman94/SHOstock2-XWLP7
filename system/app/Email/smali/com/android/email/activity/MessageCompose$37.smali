.class Lcom/android/email/activity/MessageCompose$37;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onShowAddAttachmentDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;

.field final synthetic val$adapter:Lcom/android/email/activity/AddAttachmentSelectorAdapter;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/AddAttachmentSelectorAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9930
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$37;->this$0:Lcom/android/email/activity/MessageCompose;

    iput-object p2, p0, Lcom/android/email/activity/MessageCompose$37;->val$adapter:Lcom/android/email/activity/AddAttachmentSelectorAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 9932
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$37;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$37;->val$adapter:Lcom/android/email/activity/AddAttachmentSelectorAdapter;

    invoke-virtual {v1, p2}, Lcom/android/email/activity/AddAttachmentSelectorAdapter;->buttonToCommand(I)I

    move-result v1

    #calls: Lcom/android/email/activity/MessageCompose;->startAttachmentActivity(I)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$10400(Lcom/android/email/activity/MessageCompose;I)V

    .line 9933
    return-void
.end method
