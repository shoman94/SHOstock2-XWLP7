.class Lcom/android/mms/ui/MmsRichContainer$1;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsRichContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsRichContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$1;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer$1;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/android/mms/ui/MmsRichContainer;->access$000(Lcom/android/mms/ui/MmsRichContainer;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer$1;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/android/mms/ui/MmsRichContainer;->access$000(Lcom/android/mms/ui/MmsRichContainer;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 205
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer$1;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/android/mms/ui/MmsRichContainer;->access$000(Lcom/android/mms/ui/MmsRichContainer;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer$1;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/android/mms/ui/MmsRichContainer;->access$000(Lcom/android/mms/ui/MmsRichContainer;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 211
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer$1;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/android/mms/ui/MmsRichContainer;->access$000(Lcom/android/mms/ui/MmsRichContainer;)Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer$1;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    #getter for: Lcom/android/mms/ui/MmsRichContainer;->mParentTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/android/mms/ui/MmsRichContainer;->access$000(Lcom/android/mms/ui/MmsRichContainer;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 217
    :cond_0
    return-void
.end method
