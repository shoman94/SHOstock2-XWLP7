.class Lcom/android/email/widget/EmailWidget$WidgetUpdater;
.super Landroid/os/AsyncTask;
.source "EmailWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/widget/EmailWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/email/widget/WidgetView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCurrentView:Lcom/android/email/widget/WidgetView;

.field private final mSwitchToNextView:Z

.field final synthetic this$0:Lcom/android/email/widget/EmailWidget;


# direct methods
.method public constructor <init>(Lcom/android/email/widget/EmailWidget;Z)V
    .locals 1
    .parameter
    .parameter "switchToNextView"

    .prologue
    .line 975
    iput-object p1, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->this$0:Lcom/android/email/widget/EmailWidget;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 976
    iget-object v0, p1, Lcom/android/email/widget/EmailWidget;->mWidgetView:Lcom/android/email/widget/WidgetView;

    iput-object v0, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->mCurrentView:Lcom/android/email/widget/WidgetView;

    .line 977
    iput-boolean p2, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->mSwitchToNextView:Z

    .line 978
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/email/widget/WidgetView;
    .locals 2
    .parameter "params"

    .prologue
    .line 982
    iget-boolean v0, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->mSwitchToNextView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->mCurrentView:Lcom/android/email/widget/WidgetView;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->this$0:Lcom/android/email/widget/EmailWidget;

    #getter for: Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/widget/EmailWidget;->access$000(Lcom/android/email/widget/EmailWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/widget/WidgetView;->isValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->mCurrentView:Lcom/android/email/widget/WidgetView;

    iget-object v1, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->this$0:Lcom/android/email/widget/EmailWidget;

    #getter for: Lcom/android/email/widget/EmailWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/email/widget/EmailWidget;->access$000(Lcom/android/email/widget/EmailWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/widget/WidgetView;->getNext(Landroid/content/Context;)Lcom/android/email/widget/WidgetView;

    move-result-object v0

    .line 985
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->mCurrentView:Lcom/android/email/widget/WidgetView;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 970
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->doInBackground([Ljava/lang/Void;)Lcom/android/email/widget/WidgetView;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/email/widget/WidgetView;)V
    .locals 1
    .parameter "nextView"

    .prologue
    .line 991
    if-eqz p1, :cond_0

    .line 992
    iget-object v0, p0, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->this$0:Lcom/android/email/widget/EmailWidget;

    #calls: Lcom/android/email/widget/EmailWidget;->loadView(Lcom/android/email/widget/WidgetView;)V
    invoke-static {v0, p1}, Lcom/android/email/widget/EmailWidget;->access$100(Lcom/android/email/widget/EmailWidget;Lcom/android/email/widget/WidgetView;)V

    .line 994
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 970
    check-cast p1, Lcom/android/email/widget/WidgetView;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/widget/EmailWidget$WidgetUpdater;->onPostExecute(Lcom/android/email/widget/WidgetView;)V

    return-void
.end method
