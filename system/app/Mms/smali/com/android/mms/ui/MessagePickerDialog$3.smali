.class Lcom/android/mms/ui/MessagePickerDialog$3;
.super Ljava/lang/Object;
.source "MessagePickerDialog.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagePickerDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagePickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 0
    .parameter "view"
    .parameter "content"
    .parameter "states"

    .prologue
    .line 266
    return-void
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "text"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 275
    sparse-switch p3, :sswitch_data_0

    .line 288
    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    .line 278
    :sswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #getter for: Lcom/android/mms/ui/MessagePickerDialog;->mNumberPicker:Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;
    invoke-static {v1}, Lcom/android/mms/ui/MessagePickerDialog;->access$400(Lcom/android/mms/ui/MessagePickerDialog;)Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessagePickerDialog$NonWrapMessagePicker;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 281
    :sswitch_1
    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 275
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "text"
    .parameter "event"

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "text"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 298
    packed-switch p3, :pswitch_data_0

    move v0, v1

    .line 314
    :goto_0
    return v0

    .line 301
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #getter for: Lcom/android/mms/ui/MessagePickerDialog;->mPositiveButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/MessagePickerDialog;->access$500(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #calls: Lcom/android/mms/ui/MessagePickerDialog;->setDuration()V
    invoke-static {v1}, Lcom/android/mms/ui/MessagePickerDialog;->access$000(Lcom/android/mms/ui/MessagePickerDialog;)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    #getter for: Lcom/android/mms/ui/MessagePickerDialog;->mNegativeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/MessagePickerDialog;->access$600(Lcom/android/mms/ui/MessagePickerDialog;)Landroid/widget/Button;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 306
    iget-object v1, p0, Lcom/android/mms/ui/MessagePickerDialog$3;->this$0:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessagePickerDialog;->dismiss()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 310
    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method
