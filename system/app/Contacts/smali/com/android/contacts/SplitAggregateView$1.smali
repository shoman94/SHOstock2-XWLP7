.class Lcom/android/contacts/SplitAggregateView$1;
.super Ljava/lang/Object;
.source "SplitAggregateView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/SplitAggregateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/SplitAggregateView;

.field final synthetic val$list:Ljava/util/List;


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$1;->this$0:Lcom/android/contacts/SplitAggregateView;

    #getter for: Lcom/android/contacts/SplitAggregateView;->mListener:Lcom/android/contacts/SplitAggregateView$OnContactSelectedListener;
    invoke-static {v0}, Lcom/android/contacts/SplitAggregateView;->access$000(Lcom/android/contacts/SplitAggregateView;)Lcom/android/contacts/SplitAggregateView$OnContactSelectedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/SplitAggregateView$1;->val$list:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;

    iget-wide v2, v0, Lcom/android/contacts/SplitAggregateView$RawContactInfo;->rawContactId:J

    invoke-interface {v1, v2, v3}, Lcom/android/contacts/SplitAggregateView$OnContactSelectedListener;->onContactSelected(J)V

    .line 104
    return-void
.end method
