.class Lcom/android/email/activity/MessageCommandButtonView$EmptyCallback;
.super Ljava/lang/Object;
.source "MessageCommandButtonView.java"

# interfaces
.implements Lcom/android/email/activity/MessageCommandButtonView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCommandButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyCallback"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/email/activity/MessageCommandButtonView$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/android/email/activity/MessageCommandButtonView$EmptyCallback;

    invoke-direct {v0}, Lcom/android/email/activity/MessageCommandButtonView$EmptyCallback;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageCommandButtonView$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageCommandButtonView$Callback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMoveToNewer()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onMoveToOlder()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
