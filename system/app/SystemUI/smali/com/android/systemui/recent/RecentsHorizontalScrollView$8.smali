.class Lcom/android/systemui/recent/RecentsHorizontalScrollView$8;
.super Landroid/database/DataSetObserver;
.source "RecentsHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$8;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$8;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    #calls: Lcom/android/systemui/recent/RecentsHorizontalScrollView;->update()V
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->access$300(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    .line 312
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsHorizontalScrollView$8;->this$0:Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    #calls: Lcom/android/systemui/recent/RecentsHorizontalScrollView;->update()V
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->access$300(Lcom/android/systemui/recent/RecentsHorizontalScrollView;)V

    .line 316
    return-void
.end method
