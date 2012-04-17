.class Lcom/android/mms/ui/NumberPicker$4;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NumberPicker;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$4;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v2, 0x0

    .line 579
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 580
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p2, :cond_1

    .line 581
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$4;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$000(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 582
    if-eqz v0, :cond_0

    .line 583
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$4;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$000(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$4;->this$0:Lcom/android/mms/ui/NumberPicker;

    #getter for: Lcom/android/mms/ui/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/NumberPicker;->access$000(Lcom/android/mms/ui/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 587
    if-eqz v0, :cond_2

    .line 588
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$4;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-virtual {v1}, Lcom/android/mms/ui/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 590
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/NumberPicker$4;->this$0:Lcom/android/mms/ui/NumberPicker;

    #calls: Lcom/android/mms/ui/NumberPicker;->validateInputTextView(Landroid/view/View;)V
    invoke-static {v1, p1}, Lcom/android/mms/ui/NumberPicker;->access$300(Lcom/android/mms/ui/NumberPicker;Landroid/view/View;)V

    goto :goto_0
.end method
