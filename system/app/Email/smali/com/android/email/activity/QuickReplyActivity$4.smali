.class Lcom/android/email/activity/QuickReplyActivity$4;
.super Ljava/lang/Object;
.source "QuickReplyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/QuickReplyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/QuickReplyActivity;


# direct methods
.method constructor <init>(Lcom/android/email/activity/QuickReplyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/email/activity/QuickReplyActivity$4;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/email/activity/QuickReplyActivity$4;->this$0:Lcom/android/email/activity/QuickReplyActivity;

    invoke-virtual {v0}, Lcom/android/email/activity/QuickReplyActivity;->finish()V

    .line 180
    return-void
.end method
