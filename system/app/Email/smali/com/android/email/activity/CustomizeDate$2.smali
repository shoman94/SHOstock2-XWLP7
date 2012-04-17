.class Lcom/android/email/activity/CustomizeDate$2;
.super Ljava/lang/Object;
.source "CustomizeDate.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/CustomizeDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/CustomizeDate;


# direct methods
.method constructor <init>(Lcom/android/email/activity/CustomizeDate;)V
    .locals 0
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/email/activity/CustomizeDate$2;->this$0:Lcom/android/email/activity/CustomizeDate;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 511
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 512
    .local v0, date:Ljava/util/Date;
    add-int/lit16 v1, p2, -0x76c

    invoke-virtual {v0, v1}, Ljava/util/Date;->setYear(I)V

    .line 513
    invoke-virtual {v0, p3}, Ljava/util/Date;->setMonth(I)V

    .line 514
    invoke-virtual {v0, p4}, Ljava/util/Date;->setDate(I)V

    .line 515
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate$2;->this$0:Lcom/android/email/activity/CustomizeDate;

    #getter for: Lcom/android/email/activity/CustomizeDate;->toDateButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/email/activity/CustomizeDate;->access$500(Lcom/android/email/activity/CustomizeDate;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/CustomizeDate$2;->this$0:Lcom/android/email/activity/CustomizeDate;

    #getter for: Lcom/android/email/activity/CustomizeDate;->dateFormatter:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lcom/android/email/activity/CustomizeDate;->access$000(Lcom/android/email/activity/CustomizeDate;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate$2;->this$0:Lcom/android/email/activity/CustomizeDate;

    #setter for: Lcom/android/email/activity/CustomizeDate;->mYearToSearch:I
    invoke-static {v1, p2}, Lcom/android/email/activity/CustomizeDate;->access$602(Lcom/android/email/activity/CustomizeDate;I)I

    .line 517
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate$2;->this$0:Lcom/android/email/activity/CustomizeDate;

    #setter for: Lcom/android/email/activity/CustomizeDate;->mMonthToSearch:I
    invoke-static {v1, p3}, Lcom/android/email/activity/CustomizeDate;->access$702(Lcom/android/email/activity/CustomizeDate;I)I

    .line 518
    iget-object v1, p0, Lcom/android/email/activity/CustomizeDate$2;->this$0:Lcom/android/email/activity/CustomizeDate;

    #setter for: Lcom/android/email/activity/CustomizeDate;->mDayToSearch:I
    invoke-static {v1, p4}, Lcom/android/email/activity/CustomizeDate;->access$802(Lcom/android/email/activity/CustomizeDate;I)I

    .line 519
    return-void
.end method
