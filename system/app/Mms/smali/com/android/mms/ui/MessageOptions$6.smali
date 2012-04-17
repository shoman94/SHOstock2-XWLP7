.class Lcom/android/mms/ui/MessageOptions$6;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageOptions;->showFileRenameDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 1443
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$6;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1459
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 1465
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "cs"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$6;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mEditField:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/mms/ui/MessageOptions;->access$900(Lcom/android/mms/ui/MessageOptions;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$6;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mPositiveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/MessageOptions;->access$1300(Lcom/android/mms/ui/MessageOptions;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1454
    :goto_0
    return-void

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$6;->this$0:Lcom/android/mms/ui/MessageOptions;

    #getter for: Lcom/android/mms/ui/MessageOptions;->mPositiveButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/MessageOptions;->access$1300(Lcom/android/mms/ui/MessageOptions;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
