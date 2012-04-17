.class Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener$2;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener$2;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 174
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener$2;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    const v2, 0x7f0d003b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, blankView:Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener$2;->this$1:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity$ProximitySensorListener;->this$0:Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    .line 177
    return-void
.end method
