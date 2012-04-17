.class Lcom/android/contacts/detail/ContactDetailLayoutController$3;
.super Ljava/lang/Object;
.source "ContactDetailLayoutController.java"

# interfaces
.implements Lcom/android/contacts/detail/ContactDetailTabCarousel$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailLayoutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailLayoutController;)V
    .locals 0
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    sub-int v1, p3, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    .line 546
    :cond_0
    return-void
.end method

.method public onTabSelected(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 552
    return-void
.end method

.method public onTouchDown()V
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    goto :goto_0
.end method

.method public onTouchUp()V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$3;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    #getter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$000(Lcom/android/contacts/detail/ContactDetailLayoutController;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    .line 537
    :cond_0
    return-void
.end method
