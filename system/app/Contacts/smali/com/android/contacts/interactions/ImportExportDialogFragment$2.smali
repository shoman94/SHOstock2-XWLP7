.class Lcom/android/contacts/interactions/ImportExportDialogFragment$2;
.super Landroid/widget/ArrayAdapter;
.source "ImportExportDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/ImportExportDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->this$0:Lcom/android/contacts/interactions/ImportExportDialogFragment;

    iput-object p4, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 113
    if-eqz p2, :cond_0

    move-object v1, p2

    :goto_0
    check-cast v1, Landroid/widget/TextView;

    .line 116
    .local v1, result:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 117
    .local v0, resId:I
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 118
    return-object v1

    .line 113
    .end local v0           #resId:I
    .end local v1           #result:Landroid/widget/TextView;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400b6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method
