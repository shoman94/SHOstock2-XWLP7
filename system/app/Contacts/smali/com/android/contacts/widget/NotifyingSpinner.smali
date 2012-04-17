.class public Lcom/android/contacts/widget/NotifyingSpinner;
.super Landroid/widget/Spinner;
.source "NotifyingSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/widget/NotifyingSpinner$SelectionListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/contacts/widget/NotifyingSpinner$SelectionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method


# virtual methods
.method public setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 51
    iget-object v0, p0, Lcom/android/contacts/widget/NotifyingSpinner;->mListener:Lcom/android/contacts/widget/NotifyingSpinner$SelectionListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/contacts/widget/NotifyingSpinner;->mListener:Lcom/android/contacts/widget/NotifyingSpinner$SelectionListener;

    invoke-interface {v0, p0, p1}, Lcom/android/contacts/widget/NotifyingSpinner$SelectionListener;->onSetSelection(Lcom/android/contacts/widget/NotifyingSpinner;I)V

    .line 54
    :cond_0
    return-void
.end method
