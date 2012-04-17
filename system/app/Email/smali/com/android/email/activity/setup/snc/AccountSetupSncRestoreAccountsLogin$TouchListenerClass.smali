.class Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;
.super Ljava/lang/Object;
.source "AccountSetupSncRestoreAccountsLogin.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchListenerClass"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v0, v1

    .line 224
    :goto_1
    return v0

    .line 175
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 177
    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 182
    :pswitch_3
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 185
    :pswitch_4
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 188
    :pswitch_5
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 189
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 193
    :goto_2
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 194
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    #calls: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->showHidePassword(Z)V
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$300(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;Z)V

    .line 195
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #calls: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->validateFields()V
    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V

    goto :goto_1

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$200(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 200
    :pswitch_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    goto :goto_0

    .line 202
    :pswitch_7
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 207
    :pswitch_8
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 210
    :pswitch_9
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 213
    :pswitch_a
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 214
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    :goto_3
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 219
    iget-object v1, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #calls: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->validateFields()V
    invoke-static {v1}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$000(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)V

    goto/16 :goto_1

    .line 217
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;

    #getter for: Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;->access$400(Lcom/android/email/activity/setup/snc/AccountSetupSncRestoreAccountsLogin;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0x7f100046
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 175
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 200
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
