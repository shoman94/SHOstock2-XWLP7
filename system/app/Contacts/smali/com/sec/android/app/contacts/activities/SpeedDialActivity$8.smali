.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$8;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$8;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 833
    packed-switch p2, :pswitch_data_0

    .line 854
    :goto_0
    return-void

    .line 837
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TAB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 838
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "additional"

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    const-string v1, "from_speed_dial"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 840
    const-string v1, "has_result"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 841
    const-string v1, "index"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$8;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 843
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$8;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v1, v0, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 847
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$8;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$8;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    #getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedPosition:I
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I

    move-result v3

    #calls: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->deleteSlot(Landroid/view/View;I)V
    invoke-static {v1, v2, v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Landroid/view/View;I)V

    goto :goto_0

    .line 833
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
