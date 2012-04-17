.class Lcom/android/email/activity/AccountShortcutPicker$DialogItem;
.super Ljava/lang/Object;
.source "AccountShortcutPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/AccountShortcutPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogItem"
.end annotation


# instance fields
.field accountId:J

.field accountName:Ljava/lang/String;

.field emailAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/AccountShortcutPicker;


# direct methods
.method constructor <init>(Lcom/android/email/activity/AccountShortcutPicker;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "accountId"
    .parameter "accountName"
    .parameter "emailAddress"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/email/activity/AccountShortcutPicker$DialogItem;->this$0:Lcom/android/email/activity/AccountShortcutPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-wide p2, p0, Lcom/android/email/activity/AccountShortcutPicker$DialogItem;->accountId:J

    .line 88
    iput-object p4, p0, Lcom/android/email/activity/AccountShortcutPicker$DialogItem;->accountName:Ljava/lang/String;

    .line 89
    iput-object p5, p0, Lcom/android/email/activity/AccountShortcutPicker$DialogItem;->emailAddress:Ljava/lang/String;

    .line 90
    return-void
.end method
