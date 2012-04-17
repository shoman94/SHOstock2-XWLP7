.class Lcom/android/contacts/datepicker/DatePicker$6;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/datepicker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/datepicker/DatePicker;


# direct methods
.method constructor <init>(Lcom/android/contacts/datepicker/DatePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker$6;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$6;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v0, v0, Lcom/android/contacts/datepicker/DatePicker;->mYearPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$6;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->mYearNext:Landroid/widget/NumberPicker;
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$500(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/NumberPicker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/contacts/datepicker/DatePicker$6;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->mYearNext:Landroid/widget/NumberPicker;
    invoke-static {v0}, Lcom/android/contacts/datepicker/DatePicker;->access$500(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 271
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 276
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 281
    return-void
.end method
