.class Lcom/android/email/activity/MessageListXL$6;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->changeFontSize()Landroid/app/Dialog;
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
    .line 2282
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$6;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2288
    if-nez p2, :cond_0

    .line 2289
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$6;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mfontSize:I
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageListXL;->access$4302(Lcom/android/email/activity/MessageListXL;I)I

    .line 2298
    :goto_0
    sget-object v1, Lcom/android/email/activity/MessageListXL;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    .line 2299
    .local v0, settingValue:Lcom/android/email/Preferences;
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$6;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mfontSize:I
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$4300(Lcom/android/email/activity/MessageListXL;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Preferences;->setTextZoom(I)V

    .line 2300
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$6;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$6;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mfontSize:I
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$4300(Lcom/android/email/activity/MessageListXL;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageViewFragment;->setViewFontSize(I)V

    .line 2302
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$6;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v1}, Lcom/android/email/activity/MessageListXL;->access$700(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListXL$6;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mfontSize:I
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$4300(Lcom/android/email/activity/MessageListXL;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->setMessageListFontSize(I)V

    .line 2303
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2304
    return-void

    .line 2290
    .end local v0           #settingValue:Lcom/android/email/Preferences;
    :cond_0
    if-ne p2, v2, :cond_1

    .line 2291
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$6;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mfontSize:I
    invoke-static {v1, v3}, Lcom/android/email/activity/MessageListXL;->access$4302(Lcom/android/email/activity/MessageListXL;I)I

    goto :goto_0

    .line 2292
    :cond_1
    if-ne p2, v3, :cond_2

    .line 2293
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$6;->this$0:Lcom/android/email/activity/MessageListXL;

    const/4 v2, 0x3

    #setter for: Lcom/android/email/activity/MessageListXL;->mfontSize:I
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageListXL;->access$4302(Lcom/android/email/activity/MessageListXL;I)I

    goto :goto_0

    .line 2295
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageListXL$6;->this$0:Lcom/android/email/activity/MessageListXL;

    #setter for: Lcom/android/email/activity/MessageListXL;->mfontSize:I
    invoke-static {v1, p2}, Lcom/android/email/activity/MessageListXL;->access$4302(Lcom/android/email/activity/MessageListXL;I)I

    goto :goto_0
.end method
