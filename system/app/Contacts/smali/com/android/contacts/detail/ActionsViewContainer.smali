.class Lcom/android/contacts/detail/ActionsViewContainer;
.super Landroid/widget/LinearLayout;
.source "ActionsViewContainer.java"


# instance fields
.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/detail/ActionsViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method


# virtual methods
.method public getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/detail/ActionsViewContainer;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public setPosition(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 47
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    const-wide/16 v1, -0x1

    invoke-direct {v0, p0, p1, v1, v2}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/android/contacts/detail/ActionsViewContainer;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 48
    return-void
.end method
