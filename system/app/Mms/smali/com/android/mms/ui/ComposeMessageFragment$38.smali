.class Lcom/android/mms/ui/ComposeMessageFragment$38;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showAddtextDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 4403
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$38;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4405
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$38;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$38;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAddTextSelectorAdapter:Lcom/android/mms/ui/AddTextSelectorAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5900(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/AddTextSelectorAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/AddTextSelectorAdapter;->buttonToCommand(I)I

    move-result v1

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->addtext(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6000(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    .line 4406
    return-void
.end method
