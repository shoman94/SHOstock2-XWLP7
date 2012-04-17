.class Lcom/android/email/activity/MessageListXL$5;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->createViewModeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .locals 0
    .parameter

    .prologue
    .line 2159
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$5;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2162
    if-nez p2, :cond_1

    .line 2163
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4002(I)I

    .line 2164
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4102(I)I

    .line 2170
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$5;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prefer_view_mode"

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$4000()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2172
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$5;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$4100()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSortBy(I)V

    .line 2173
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$5;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->updateOrderManager()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4200(Lcom/android/email/activity/MessageListXL;)V

    .line 2174
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2175
    return-void

    .line 2165
    :cond_1
    if-ne p2, v1, :cond_0

    .line 2166
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$4002(I)I

    .line 2167
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4102(I)I

    goto :goto_0
.end method
