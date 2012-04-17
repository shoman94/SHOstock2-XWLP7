.class Lcom/sec/android/app/dialertab/widget/DialtactsListFragment$1;
.super Ljava/lang/Object;
.source "DialtactsListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment$1;->this$0:Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment$1;->this$0:Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment$1;->this$0:Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->mList:Lcom/sec/android/touchwiz/widget/TwListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 41
    return-void
.end method
