.class Lcom/android/contacts/detail/ContactDetailLayoutController$2;
.super Ljava/lang/Object;
.source "ContactDetailLayoutController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 494
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$2;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$2;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    const/4 v1, 0x0

    #setter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$702(Lcom/android/contacts/detail/ContactDetailLayoutController;Z)Z

    .line 499
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$2;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    const/4 v1, 0x0

    #setter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$702(Lcom/android/contacts/detail/ContactDetailLayoutController;Z)Z

    .line 504
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$2;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    const/4 v1, 0x1

    #setter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$702(Lcom/android/contacts/detail/ContactDetailLayoutController;Z)Z

    .line 509
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailLayoutController$2;->this$0:Lcom/android/contacts/detail/ContactDetailLayoutController;

    const/4 v1, 0x1

    #setter for: Lcom/android/contacts/detail/ContactDetailLayoutController;->mTabCarouselIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->access$702(Lcom/android/contacts/detail/ContactDetailLayoutController;Z)Z

    .line 514
    return-void
.end method
