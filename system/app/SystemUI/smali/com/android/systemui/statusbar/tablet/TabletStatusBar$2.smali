.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$2;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->makeStatusBarView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$2;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$2;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->onLongClickScreenCaptureButton()V

    .line 607
    const/4 v0, 0x1

    return v0
.end method
