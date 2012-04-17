.class Lcom/android/contacts/editor/PhotoEditorView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhotoEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PhotoEditorView;->setupAnimations(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/PhotoEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/PhotoEditorView;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/contacts/editor/PhotoEditorView$2;->this$0:Lcom/android/contacts/editor/PhotoEditorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "anim"

    .prologue
    const/high16 v1, 0x3f80

    .line 231
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 232
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 233
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 234
    return-void
.end method
