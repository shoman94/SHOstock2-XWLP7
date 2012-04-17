.class final enum Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;
.super Ljava/lang/Enum;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FONTSIZE_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

.field public static final enum USE_MINIMUMFONTSIZE_IPAD1:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

.field public static final enum USE_MINIMUMFONTSIZE_IPAD2:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

.field public static final enum USE_MINIMUMFONTSIZE_SEC:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

.field public static final enum USE_MINIMUMFONTSIZE_SEC2:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

.field public static final enum USE_MINIMUMLOGICALFONTSIZE:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

.field public static final enum USE_TEXTSIZE:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 559
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    const-string v1, "USE_TEXTSIZE"

    invoke-direct {v0, v1, v3}, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_TEXTSIZE:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    const-string v1, "USE_MINIMUMFONTSIZE_SEC"

    invoke-direct {v0, v1, v4}, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_SEC:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    const-string v1, "USE_MINIMUMFONTSIZE_SEC2"

    invoke-direct {v0, v1, v5}, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_SEC2:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    const-string v1, "USE_MINIMUMFONTSIZE_IPAD1"

    invoke-direct {v0, v1, v6}, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_IPAD1:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    const-string v1, "USE_MINIMUMFONTSIZE_IPAD2"

    invoke-direct {v0, v1, v7}, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_IPAD2:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    const-string v1, "USE_MINIMUMLOGICALFONTSIZE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMLOGICALFONTSIZE:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    .line 558
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_TEXTSIZE:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_SEC:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_SEC2:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_IPAD1:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMFONTSIZE_IPAD2:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->USE_MINIMUMLOGICALFONTSIZE:Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->$VALUES:[Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 558
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;
    .locals 1
    .parameter

    .prologue
    .line 558
    const-class v0, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    return-object v0
.end method

.method public static values()[Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;
    .locals 1

    .prologue
    .line 558
    sget-object v0, Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->$VALUES:[Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    invoke-virtual {v0}, [Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/email/activity/MessageViewFragmentBase$FONTSIZE_MODE;

    return-object v0
.end method
