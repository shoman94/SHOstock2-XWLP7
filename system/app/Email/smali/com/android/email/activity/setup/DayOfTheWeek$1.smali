.class Lcom/android/email/activity/setup/DayOfTheWeek$1;
.super Landroid/content/BroadcastReceiver;
.source "DayOfTheWeek.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/DayOfTheWeek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/DayOfTheWeek;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/DayOfTheWeek;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/email/activity/setup/DayOfTheWeek$1;->this$0:Lcom/android/email/activity/setup/DayOfTheWeek;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/email/activity/setup/DayOfTheWeek$1;->this$0:Lcom/android/email/activity/setup/DayOfTheWeek;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/DayOfTheWeek;->setWidgetProperties()V

    .line 367
    return-void
.end method
