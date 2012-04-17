.class Lcom/android/contacts/BackScrollManager$1;
.super Ljava/lang/Object;
.source "BackScrollManager.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/BackScrollManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/BackScrollManager;


# direct methods
.method constructor <init>(Lcom/android/contacts/BackScrollManager;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/contacts/BackScrollManager$1;->this$0:Lcom/android/contacts/BackScrollManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 46
    if-eqz p2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/android/contacts/BackScrollManager$1;->this$0:Lcom/android/contacts/BackScrollManager;

    #getter for: Lcom/android/contacts/BackScrollManager;->mHeader:Lcom/android/contacts/BackScrollManager$ScrollableHeader;
    invoke-static {v2}, Lcom/android/contacts/BackScrollManager;->access$000(Lcom/android/contacts/BackScrollManager;)Lcom/android/contacts/BackScrollManager$ScrollableHeader;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/BackScrollManager$1;->this$0:Lcom/android/contacts/BackScrollManager;

    #getter for: Lcom/android/contacts/BackScrollManager;->mHeader:Lcom/android/contacts/BackScrollManager$ScrollableHeader;
    invoke-static {v3}, Lcom/android/contacts/BackScrollManager;->access$000(Lcom/android/contacts/BackScrollManager;)Lcom/android/contacts/BackScrollManager$ScrollableHeader;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/contacts/BackScrollManager$ScrollableHeader;->getMaximumScrollableHeaderOffset()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/contacts/BackScrollManager$ScrollableHeader;->setOffset(I)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, firstVisibleItemView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    neg-float v2, v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/contacts/BackScrollManager$1;->this$0:Lcom/android/contacts/BackScrollManager;

    #getter for: Lcom/android/contacts/BackScrollManager;->mHeader:Lcom/android/contacts/BackScrollManager$ScrollableHeader;
    invoke-static {v3}, Lcom/android/contacts/BackScrollManager;->access$000(Lcom/android/contacts/BackScrollManager;)Lcom/android/contacts/BackScrollManager$ScrollableHeader;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/contacts/BackScrollManager$ScrollableHeader;->getMaximumScrollableHeaderOffset()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 60
    .local v1, offset:I
    iget-object v2, p0, Lcom/android/contacts/BackScrollManager$1;->this$0:Lcom/android/contacts/BackScrollManager;

    #getter for: Lcom/android/contacts/BackScrollManager;->mHeader:Lcom/android/contacts/BackScrollManager$ScrollableHeader;
    invoke-static {v2}, Lcom/android/contacts/BackScrollManager;->access$000(Lcom/android/contacts/BackScrollManager;)Lcom/android/contacts/BackScrollManager$ScrollableHeader;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/contacts/BackScrollManager$ScrollableHeader;->setOffset(I)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 66
    return-void
.end method
