.class public Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;
.super Landroid/widget/NumberPicker;
.source "MessagePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonWrapMessagePicker"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 239
    return-void
.end method


# virtual methods
.method protected changeCurrent(I)V
    .locals 3
    .parameter "current"

    .prologue
    const/4 v2, 0x1

    .line 243
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->getMText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 244
    sput-boolean v2, Lcom/android/mms/ui/MessagePickerDialog;->isWrongRange:Z

    .line 245
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->getMText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagePickerDialog;->access$202(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagePickerDialog;->access$102(I)I

    .line 247
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/NumberPicker;->changeCurrent(I)V

    .line 248
    sget-boolean v0, Lcom/android/mms/ui/MessagePickerDialog;->isWrongRange:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->getValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagePickerDialog;->access$102(I)I

    .line 249
    :cond_1
    invoke-static {v2}, Lcom/android/mms/ui/MessagePickerDialog;->access$302(Z)Z

    .line 250
    return-void
.end method
