.class Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$3;
.super Ljava/lang/Object;
.source "AccountSettingsSyncScheduleForSevenFragment.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 6
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/4 v5, 0x1

    .line 295
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, hourStr:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, minuteStr:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, settedTime:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->isPeakStartTime:Z
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->access$300(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 307
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

    #setter for: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mStartTime:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->access$402(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnStartTime:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->access$000(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :goto_0
    return-void

    .line 311
    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

    #setter for: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->mEndTime:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->access$502(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment$3;->this$0:Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;

    #getter for: Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->btnEndTime:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsSyncScheduleForSevenFragment;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
