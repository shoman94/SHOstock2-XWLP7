.class Lcom/android/email/activity/FindLocationActivity$1;
.super Ljava/lang/Object;
.source "FindLocationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/FindLocationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/FindLocationActivity;


# direct methods
.method constructor <init>(Lcom/android/email/activity/FindLocationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/email/activity/FindLocationActivity$1;->this$0:Lcom/android/email/activity/FindLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/email/activity/FindLocationActivity$1;->this$0:Lcom/android/email/activity/FindLocationActivity;

    #calls: Lcom/android/email/activity/FindLocationActivity;->stopReceivingLocationUpdates()V
    invoke-static {v1}, Lcom/android/email/activity/FindLocationActivity;->access$000(Lcom/android/email/activity/FindLocationActivity;)V

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v0, i:Landroid/content/Intent;
    const-string v1, "location-char"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 168
    const-string v1, "location-string"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Lcom/android/email/activity/FindLocationActivity$1;->this$0:Lcom/android/email/activity/FindLocationActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/email/activity/FindLocationActivity;->setResult(ILandroid/content/Intent;)V

    .line 171
    iget-object v1, p0, Lcom/android/email/activity/FindLocationActivity$1;->this$0:Lcom/android/email/activity/FindLocationActivity;

    invoke-virtual {v1}, Lcom/android/email/activity/FindLocationActivity;->finish()V

    .line 172
    return-void
.end method
