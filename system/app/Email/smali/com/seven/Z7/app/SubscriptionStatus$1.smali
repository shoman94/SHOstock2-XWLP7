.class final Lcom/seven/Z7/app/SubscriptionStatus$1;
.super Ljava/lang/Object;
.source "SubscriptionStatus.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seven/Z7/app/SubscriptionStatus;->getSubscriptionExpiredDialog(Landroid/app/Activity;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finishActivity:Z

.field final synthetic val$parentActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/seven/Z7/app/SubscriptionStatus$1;->val$parentActivity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/seven/Z7/app/SubscriptionStatus$1;->val$finishActivity:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/seven/Z7/app/SubscriptionStatus$1;->val$parentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/seven/Z7/app/SubscriptionStatus;->requestSubscriptionRenewalReminder(Landroid/content/Context;)V

    .line 229
    iget-boolean v0, p0, Lcom/seven/Z7/app/SubscriptionStatus$1;->val$finishActivity:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/seven/Z7/app/SubscriptionStatus$1;->val$parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 232
    :cond_0
    return-void
.end method
