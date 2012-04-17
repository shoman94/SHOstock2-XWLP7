.class public Lcom/android/email/activity/setup/SpinnerOption;
.super Ljava/lang/Object;
.source "SpinnerOption.java"


# instance fields
.field public final label:Ljava/lang/String;

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .parameter "label"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    .line 38
    iput-object p2, p0, Lcom/android/email/activity/setup/SpinnerOption;->label:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V
    .locals 4
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 27
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 28
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/SpinnerOption;

    .line 29
    .local v2, so:Lcom/android/email/activity/setup/SpinnerOption;
    iget-object v3, v2, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 34
    .end local v2           #so:Lcom/android/email/activity/setup/SpinnerOption;
    :cond_0
    return-void

    .line 27
    .restart local v2       #so:Lcom/android/email/activity/setup/SpinnerOption;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/activity/setup/SpinnerOption;->label:Ljava/lang/String;

    return-object v0
.end method
