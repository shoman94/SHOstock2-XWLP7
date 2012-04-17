.class public final enum Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;
.super Ljava/lang/Enum;
.source "EmailServiceConstants.java"

# interfaces
.implements Lcom/seven/Z7/shared/Z7IDLCallbackType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/shared/EmailServiceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmailCallbackType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;",
        ">;",
        "Lcom/seven/Z7/shared/Z7IDLCallbackType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;

.field public static final enum EMAIL_CALLBACK_CHECK_MAIL_SUBMITTED:Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;

.field static base:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;

    const-string v1, "EMAIL_CALLBACK_CHECK_MAIL_SUBMITTED"

    invoke-direct {v0, v1, v2}, Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;->EMAIL_CALLBACK_CHECK_MAIL_SUBMITTED:Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;

    .line 6
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;

    sget-object v1, Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;->EMAIL_CALLBACK_CHECK_MAIL_SUBMITTED:Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;->$VALUES:[Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;

    .line 11
    const/16 v0, 0xc8

    sput v0, Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;->base:I

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;
    .locals 1
    .parameter "name"

    .prologue
    .line 6
    const-class v0, Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;

    return-object v0
.end method

.method public static values()[Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;->$VALUES:[Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;

    invoke-virtual {v0}, [Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seven/Z7/shared/EmailServiceConstants$EmailCallbackType;

    return-object v0
.end method
