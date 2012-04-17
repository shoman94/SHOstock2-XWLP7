.class Lcom/sec/android/app/dialertab/widget/DialtactsListFragment$2;
.super Ljava/lang/Object;
.source "DialtactsListFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


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
    .line 45
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment$2;->this$0:Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment$2;->this$0:Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;

    move-object v1, p1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/dialertab/widget/DialtactsListFragment;->onListItemClick(Lcom/sec/android/touchwiz/widget/TwListView;Landroid/view/View;IJ)V

    .line 48
    return-void
.end method
