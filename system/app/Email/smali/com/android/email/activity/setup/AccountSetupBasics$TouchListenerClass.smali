.class Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;
.super Ljava/lang/Object;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchListenerClass"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 0
    .parameter

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

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

    .line 1115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v0, v1

    .line 1166
    :goto_1
    return v0

    .line 1117
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 1119
    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 1124
    :pswitch_3
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 1127
    :pswitch_4
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 1130
    :pswitch_5
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 1131
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1132
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1135
    :goto_2
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 1136
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    #calls: Lcom/android/email/activity/setup/AccountSetupBasics;->showHidePassword(Z)V
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$400(Lcom/android/email/activity/setup/AccountSetupBasics;Z)V

    .line 1137
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #calls: Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$500(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    goto :goto_1

    .line 1134
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mShowPassword:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 1142
    :pswitch_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    goto :goto_0

    .line 1144
    :pswitch_7
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$600(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_1

    .line 1149
    :pswitch_8
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$600(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1152
    :pswitch_9
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$600(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto/16 :goto_1

    .line 1155
    :pswitch_a
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$600(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setPressed(Z)V

    .line 1156
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$600(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1157
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$600(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1160
    :goto_3
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$600(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 1161
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #calls: Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$500(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    goto/16 :goto_1

    .line 1159
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics$TouchListenerClass;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    #getter for: Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->access$600(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 1115
    nop

    :pswitch_data_0
    .packed-switch 0x7f100046
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1117
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1142
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
