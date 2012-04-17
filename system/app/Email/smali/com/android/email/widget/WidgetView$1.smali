.class synthetic Lcom/android/email/widget/WidgetView$1;
.super Ljava/lang/Object;
.source "WidgetView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/widget/WidgetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$email$widget$WidgetView$ViewType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 203
    invoke-static {}, Lcom/android/email/widget/WidgetView$ViewType;->values()[Lcom/android/email/widget/WidgetView$ViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/email/widget/WidgetView$1;->$SwitchMap$com$android$email$widget$WidgetView$ViewType:[I

    :try_start_0
    sget-object v0, Lcom/android/email/widget/WidgetView$1;->$SwitchMap$com$android$email$widget$WidgetView$ViewType:[I

    sget-object v1, Lcom/android/email/widget/WidgetView$ViewType;->TYPE_ALL_INBOX:Lcom/android/email/widget/WidgetView$ViewType;

    invoke-virtual {v1}, Lcom/android/email/widget/WidgetView$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/email/widget/WidgetView$1;->$SwitchMap$com$android$email$widget$WidgetView$ViewType:[I

    sget-object v1, Lcom/android/email/widget/WidgetView$ViewType;->TYPE_ACCOUNT_INBOX:Lcom/android/email/widget/WidgetView$ViewType;

    invoke-virtual {v1}, Lcom/android/email/widget/WidgetView$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
