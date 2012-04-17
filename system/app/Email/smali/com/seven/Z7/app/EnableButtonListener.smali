.class public Lcom/seven/Z7/app/EnableButtonListener;
.super Ljava/lang/Object;
.source "EnableButtonListener.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/app/EnableButtonListener$OperationMode;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mOperationMode:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

.field private mTextViews:[Landroid/widget/TextView;


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 62
    iget-object v3, p0, Lcom/seven/Z7/app/EnableButtonListener;->mOperationMode:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    sget-object v4, Lcom/seven/Z7/app/EnableButtonListener$OperationMode;->AND:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 63
    .local v0, enableButton:Z
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/seven/Z7/app/EnableButtonListener;->mTextViews:[Landroid/widget/TextView;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 64
    iget-object v3, p0, Lcom/seven/Z7/app/EnableButtonListener;->mTextViews:[Landroid/widget/TextView;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 65
    .local v2, textLength:I
    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/seven/Z7/app/EnableButtonListener;->mOperationMode:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    sget-object v4, Lcom/seven/Z7/app/EnableButtonListener$OperationMode;->OR:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    if-ne v3, v4, :cond_2

    .line 66
    const/4 v0, 0x1

    .line 63
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    .end local v0           #enableButton:Z
    .end local v1           #i:I
    .end local v2           #textLength:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    .restart local v0       #enableButton:Z
    .restart local v1       #i:I
    .restart local v2       #textLength:I
    :cond_2
    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/seven/Z7/app/EnableButtonListener;->mOperationMode:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    sget-object v4, Lcom/seven/Z7/app/EnableButtonListener$OperationMode;->AND:Lcom/seven/Z7/app/EnableButtonListener$OperationMode;

    if-ne v3, v4, :cond_0

    .line 68
    const/4 v0, 0x0

    goto :goto_2

    .line 71
    .end local v2           #textLength:I
    :cond_3
    iget-object v3, p0, Lcom/seven/Z7/app/EnableButtonListener;->mButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->isEnabled()Z

    move-result v3

    if-eq v3, v0, :cond_4

    .line 72
    iget-object v3, p0, Lcom/seven/Z7/app/EnableButtonListener;->mButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    :cond_4
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 80
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 86
    return-void
.end method
