.class Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "AccountSettingsXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field checkbox:Landroid/widget/CheckBox;

.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1501
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;->this$1:Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1501
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL$HeaderAdapter;)V

    return-void
.end method
