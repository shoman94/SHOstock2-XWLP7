.class Lcom/android/contacts/datepicker/DatePicker$2;
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
    .line 144
    iput-object p1, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x1

    .line 157
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    iget-object v1, v1, Lcom/android/contacts/datepicker/DatePicker;->mDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->mDayNext:Landroid/widget/NumberPicker;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$100(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->mDayNext:Landroid/widget/NumberPicker;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$100(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/NumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 162
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 163
    .local v0, day:I
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/contacts/datepicker/DatePicker$2;->this$0:Lcom/android/contacts/datepicker/DatePicker;

    #getter for: Lcom/android/contacts/datepicker/DatePicker;->mDayNext:Landroid/widget/NumberPicker;
    invoke-static {v1}, Lcom/android/contacts/datepicker/DatePicker;->access$100(Lcom/android/contacts/datepicker/DatePicker;)Landroid/widget/NumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getMText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    .end local v0           #day:I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 148
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 153
    return-void
.end method
